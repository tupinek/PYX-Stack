#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Error::Pure;
use PYX::Stack;

# Error output.
$Error::Pure::TYPE = 'PrintVar';

# Example data.
my $pyx = <<'END';
(begin
(middle
(end
-data
)middle
)begin
END

# PYX::Stack object.
my $obj = PYX::Stack->new;

# Parse.
$obj->parse($pyx);

# Output:
# PYX::Stack: Stack has some elements.