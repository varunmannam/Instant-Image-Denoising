ő°
/Ú.
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

>
DiagPart

input"T
diagonal"T"
Ttype:

2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
P
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
x
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2		"
align_cornersbool( 
p
ResizeNearestNeighborGrad

grads"T
size
output"T"
Ttype:

2"
align_cornersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sign
x"T
y"T"
Ttype:

2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.12.02b'v1.12.0-0-ga6d8ffa'¸Ů
z
imgPlaceholder*
dtype0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
shape:˙˙˙˙˙˙˙˙˙
|
labelPlaceholder*
dtype0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
shape:˙˙˙˙˙˙˙˙˙
 
-conv2d/kernel/Initializer/random_normal/shapeConst* 
_class
loc:@conv2d/kernel*
valueB"0   	   *
dtype0*
_output_shapes
:

,conv2d/kernel/Initializer/random_normal/meanConst* 
_class
loc:@conv2d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

.conv2d/kernel/Initializer/random_normal/stddevConst* 
_class
loc:@conv2d/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ô
<conv2d/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-conv2d/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes

:0	*

seed*
T0* 
_class
loc:@conv2d/kernel*
seed2
ë
+conv2d/kernel/Initializer/random_normal/mulMul<conv2d/kernel/Initializer/random_normal/RandomStandardNormal.conv2d/kernel/Initializer/random_normal/stddev*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes

:0	
Ô
'conv2d/kernel/Initializer/random_normalAdd+conv2d/kernel/Initializer/random_normal/mul,conv2d/kernel/Initializer/random_normal/mean*
_output_shapes

:0	*
T0* 
_class
loc:@conv2d/kernel
ľ
conv2d/kernel/Initializer/QrQr'conv2d/kernel/Initializer/random_normal*
T0* 
_class
loc:@conv2d/kernel*(
_output_shapes
:0	:		*
full_matrices( 

"conv2d/kernel/Initializer/DiagPartDiagPartconv2d/kernel/Initializer/Qr:1*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
:	

conv2d/kernel/Initializer/SignSign"conv2d/kernel/Initializer/DiagPart*
_output_shapes
:	*
T0* 
_class
loc:@conv2d/kernel
­
conv2d/kernel/Initializer/mulMulconv2d/kernel/Initializer/Qrconv2d/kernel/Initializer/Sign*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes

:0	
Ź
9conv2d/kernel/Initializer/matrix_transpose/transpose/permConst* 
_class
loc:@conv2d/kernel*
valueB"       *
dtype0*
_output_shapes
:
ó
4conv2d/kernel/Initializer/matrix_transpose/transpose	Transposeconv2d/kernel/Initializer/mul9conv2d/kernel/Initializer/matrix_transpose/transpose/perm*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes

:	0*
Tperm0
˘
'conv2d/kernel/Initializer/Reshape/shapeConst* 
_class
loc:@conv2d/kernel*%
valueB"         0   *
dtype0*
_output_shapes
:
ě
!conv2d/kernel/Initializer/ReshapeReshape4conv2d/kernel/Initializer/matrix_transpose/transpose'conv2d/kernel/Initializer/Reshape/shape*
T0* 
_class
loc:@conv2d/kernel*
Tshape0*&
_output_shapes
:0

!conv2d/kernel/Initializer/mul_1/xConst* 
_class
loc:@conv2d/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ż
conv2d/kernel/Initializer/mul_1Mul!conv2d/kernel/Initializer/mul_1/x!conv2d/kernel/Initializer/Reshape*&
_output_shapes
:0*
T0* 
_class
loc:@conv2d/kernel
ą
conv2d/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel*
	container *
shape:0
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 

conv2d/kernel/AssignAssignVariableOpconv2d/kernelconv2d/kernel/Initializer/mul_1*
dtype0* 
_class
loc:@conv2d/kernel

!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:0
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:0
ä
conv2d/Conv2DConv2Dimgconv2d/Conv2D/ReadVariableOp*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
`
leaky_re_lu/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu/LeakyRelu/mulMulleaky_re_lu/LeakyRelu/alphaconv2d/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0

leaky_re_lu/LeakyReluMaximumleaky_re_lu/LeakyRelu/mulconv2d/Conv2D*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0
¤
/conv2d_1/kernel/Initializer/random_normal/shapeConst*"
_class
loc:@conv2d_1/kernel*
valueB"°  0   *
dtype0*
_output_shapes
:

.conv2d_1/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_1/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ű
>conv2d_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_1/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	°0*

seed*
T0*"
_class
loc:@conv2d_1/kernel*
seed2
ô
-conv2d_1/kernel/Initializer/random_normal/mulMul>conv2d_1/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_1/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:	°0
Ý
)conv2d_1/kernel/Initializer/random_normalAdd-conv2d_1/kernel/Initializer/random_normal/mul.conv2d_1/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:	°0
ź
conv2d_1/kernel/Initializer/QrQr)conv2d_1/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_1/kernel*)
_output_shapes
:	°0:00

$conv2d_1/kernel/Initializer/DiagPartDiagPart conv2d_1/kernel/Initializer/Qr:1*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:0

 conv2d_1/kernel/Initializer/SignSign$conv2d_1/kernel/Initializer/DiagPart*
_output_shapes
:0*
T0*"
_class
loc:@conv2d_1/kernel
ś
conv2d_1/kernel/Initializer/mulMulconv2d_1/kernel/Initializer/Qr conv2d_1/kernel/Initializer/Sign*
_output_shapes
:	°0*
T0*"
_class
loc:@conv2d_1/kernel
Ś
)conv2d_1/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"      0   0   *
dtype0*
_output_shapes
:
Ý
#conv2d_1/kernel/Initializer/ReshapeReshapeconv2d_1/kernel/Initializer/mul)conv2d_1/kernel/Initializer/Reshape/shape*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_1/kernel*
Tshape0

#conv2d_1/kernel/Initializer/mul_1/xConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
!conv2d_1/kernel/Initializer/mul_1Mul#conv2d_1/kernel/Initializer/mul_1/x#conv2d_1/kernel/Initializer/Reshape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:00
ˇ
conv2d_1/kernelVarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 

conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel!conv2d_1/kernel/Initializer/mul_1*
dtype0*"
_class
loc:@conv2d_1/kernel

#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
:00
g
conv2d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:00
ú
conv2d_1/Conv2DConv2Dleaky_re_lu/LeakyReluconv2d_1/Conv2D/ReadVariableOp*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
b
leaky_re_lu_1/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_1/LeakyRelu/mulMulleaky_re_lu_1/LeakyRelu/alphaconv2d_1/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0

leaky_re_lu_1/LeakyReluMaximumleaky_re_lu_1/LeakyRelu/mulconv2d_1/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Č
max_pooling2d/MaxPoolMaxPoolleaky_re_lu_1/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
¤
/conv2d_2/kernel/Initializer/random_normal/shapeConst*"
_class
loc:@conv2d_2/kernel*
valueB"°  0   *
dtype0*
_output_shapes
:

.conv2d_2/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_2/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ű
>conv2d_2/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_2/kernel/Initializer/random_normal/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed28*
dtype0*
_output_shapes
:	°0*

seed
ô
-conv2d_2/kernel/Initializer/random_normal/mulMul>conv2d_2/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_2/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:	°0
Ý
)conv2d_2/kernel/Initializer/random_normalAdd-conv2d_2/kernel/Initializer/random_normal/mul.conv2d_2/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:	°0
ź
conv2d_2/kernel/Initializer/QrQr)conv2d_2/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_2/kernel*)
_output_shapes
:	°0:00

$conv2d_2/kernel/Initializer/DiagPartDiagPart conv2d_2/kernel/Initializer/Qr:1*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:0

 conv2d_2/kernel/Initializer/SignSign$conv2d_2/kernel/Initializer/DiagPart*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:0
ś
conv2d_2/kernel/Initializer/mulMulconv2d_2/kernel/Initializer/Qr conv2d_2/kernel/Initializer/Sign*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:	°0
Ś
)conv2d_2/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_2/kernel*%
valueB"      0   0   *
dtype0*
_output_shapes
:
Ý
#conv2d_2/kernel/Initializer/ReshapeReshapeconv2d_2/kernel/Initializer/mul)conv2d_2/kernel/Initializer/Reshape/shape*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_2/kernel*
Tshape0

#conv2d_2/kernel/Initializer/mul_1/xConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
!conv2d_2/kernel/Initializer/mul_1Mul#conv2d_2/kernel/Initializer/mul_1/x#conv2d_2/kernel/Initializer/Reshape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:00
ˇ
conv2d_2/kernelVarHandleOp* 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
	container *
shape:00*
dtype0*
_output_shapes
: 
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 

conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel!conv2d_2/kernel/Initializer/mul_1*"
_class
loc:@conv2d_2/kernel*
dtype0

#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:00
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:00
ú
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
	dilations
*
T0
b
leaky_re_lu_2/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_2/LeakyRelu/mulMulleaky_re_lu_2/LeakyRelu/alphaconv2d_2/Conv2D*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0

leaky_re_lu_2/LeakyReluMaximumleaky_re_lu_2/LeakyRelu/mulconv2d_2/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Č
max_pooling2d_1/MaxPoolMaxPoolleaky_re_lu_2/LeakyRelu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
¤
/conv2d_3/kernel/Initializer/random_normal/shapeConst*"
_class
loc:@conv2d_3/kernel*
valueB"°  0   *
dtype0*
_output_shapes
:

.conv2d_3/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_3/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ű
>conv2d_3/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_3/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	°0*

seed*
T0*"
_class
loc:@conv2d_3/kernel*
seed2Q
ô
-conv2d_3/kernel/Initializer/random_normal/mulMul>conv2d_3/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_3/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:	°0
Ý
)conv2d_3/kernel/Initializer/random_normalAdd-conv2d_3/kernel/Initializer/random_normal/mul.conv2d_3/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:	°0
ź
conv2d_3/kernel/Initializer/QrQr)conv2d_3/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_3/kernel*)
_output_shapes
:	°0:00

$conv2d_3/kernel/Initializer/DiagPartDiagPart conv2d_3/kernel/Initializer/Qr:1*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:0

 conv2d_3/kernel/Initializer/SignSign$conv2d_3/kernel/Initializer/DiagPart*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
:0
ś
conv2d_3/kernel/Initializer/mulMulconv2d_3/kernel/Initializer/Qr conv2d_3/kernel/Initializer/Sign*
_output_shapes
:	°0*
T0*"
_class
loc:@conv2d_3/kernel
Ś
)conv2d_3/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_3/kernel*%
valueB"      0   0   *
dtype0*
_output_shapes
:
Ý
#conv2d_3/kernel/Initializer/ReshapeReshapeconv2d_3/kernel/Initializer/mul)conv2d_3/kernel/Initializer/Reshape/shape*
T0*"
_class
loc:@conv2d_3/kernel*
Tshape0*&
_output_shapes
:00

#conv2d_3/kernel/Initializer/mul_1/xConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
!conv2d_3/kernel/Initializer/mul_1Mul#conv2d_3/kernel/Initializer/mul_1/x#conv2d_3/kernel/Initializer/Reshape*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_3/kernel
ˇ
conv2d_3/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
	container *
shape:00
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 

conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel!conv2d_3/kernel/Initializer/mul_1*"
_class
loc:@conv2d_3/kernel*
dtype0

#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
:00
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:00
ú
conv2d_3/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
b
leaky_re_lu_3/LeakyRelu/alphaConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=

leaky_re_lu_3/LeakyRelu/mulMulleaky_re_lu_3/LeakyRelu/alphaconv2d_3/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0

leaky_re_lu_3/LeakyReluMaximumleaky_re_lu_3/LeakyRelu/mulconv2d_3/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
Č
max_pooling2d_2/MaxPoolMaxPoolleaky_re_lu_3/LeakyRelu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
¤
/conv2d_4/kernel/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_4/kernel*
valueB"°  0   

.conv2d_4/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_4/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ű
>conv2d_4/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_4/kernel/Initializer/random_normal/shape*
T0*"
_class
loc:@conv2d_4/kernel*
seed2j*
dtype0*
_output_shapes
:	°0*

seed
ô
-conv2d_4/kernel/Initializer/random_normal/mulMul>conv2d_4/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_4/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:	°0
Ý
)conv2d_4/kernel/Initializer/random_normalAdd-conv2d_4/kernel/Initializer/random_normal/mul.conv2d_4/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:	°0
ź
conv2d_4/kernel/Initializer/QrQr)conv2d_4/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_4/kernel*)
_output_shapes
:	°0:00

$conv2d_4/kernel/Initializer/DiagPartDiagPart conv2d_4/kernel/Initializer/Qr:1*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:0

 conv2d_4/kernel/Initializer/SignSign$conv2d_4/kernel/Initializer/DiagPart*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
:0
ś
conv2d_4/kernel/Initializer/mulMulconv2d_4/kernel/Initializer/Qr conv2d_4/kernel/Initializer/Sign*
_output_shapes
:	°0*
T0*"
_class
loc:@conv2d_4/kernel
Ś
)conv2d_4/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_4/kernel*%
valueB"      0   0   *
dtype0*
_output_shapes
:
Ý
#conv2d_4/kernel/Initializer/ReshapeReshapeconv2d_4/kernel/Initializer/mul)conv2d_4/kernel/Initializer/Reshape/shape*
T0*"
_class
loc:@conv2d_4/kernel*
Tshape0*&
_output_shapes
:00

#conv2d_4/kernel/Initializer/mul_1/xConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
!conv2d_4/kernel/Initializer/mul_1Mul#conv2d_4/kernel/Initializer/mul_1/x#conv2d_4/kernel/Initializer/Reshape*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_4/kernel
ˇ
conv2d_4/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
	container *
shape:00
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 

conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel!conv2d_4/kernel/Initializer/mul_1*"
_class
loc:@conv2d_4/kernel*
dtype0

#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*&
_output_shapes
:00
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00
ú
conv2d_4/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_4/Conv2D/ReadVariableOp*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
b
leaky_re_lu_4/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_4/LeakyRelu/mulMulleaky_re_lu_4/LeakyRelu/alphaconv2d_4/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0

leaky_re_lu_4/LeakyReluMaximumleaky_re_lu_4/LeakyRelu/mulconv2d_4/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
Č
max_pooling2d_3/MaxPoolMaxPoolleaky_re_lu_4/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
¤
/conv2d_5/kernel/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_5/kernel*
valueB"°  0   

.conv2d_5/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_5/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_5/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ü
>conv2d_5/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_5/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	°0*

seed*
T0*"
_class
loc:@conv2d_5/kernel*
seed2
ô
-conv2d_5/kernel/Initializer/random_normal/mulMul>conv2d_5/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_5/kernel/Initializer/random_normal/stddev*
_output_shapes
:	°0*
T0*"
_class
loc:@conv2d_5/kernel
Ý
)conv2d_5/kernel/Initializer/random_normalAdd-conv2d_5/kernel/Initializer/random_normal/mul.conv2d_5/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:	°0
ź
conv2d_5/kernel/Initializer/QrQr)conv2d_5/kernel/Initializer/random_normal*)
_output_shapes
:	°0:00*
full_matrices( *
T0*"
_class
loc:@conv2d_5/kernel

$conv2d_5/kernel/Initializer/DiagPartDiagPart conv2d_5/kernel/Initializer/Qr:1*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
:0

 conv2d_5/kernel/Initializer/SignSign$conv2d_5/kernel/Initializer/DiagPart*
_output_shapes
:0*
T0*"
_class
loc:@conv2d_5/kernel
ś
conv2d_5/kernel/Initializer/mulMulconv2d_5/kernel/Initializer/Qr conv2d_5/kernel/Initializer/Sign*
_output_shapes
:	°0*
T0*"
_class
loc:@conv2d_5/kernel
Ś
)conv2d_5/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_5/kernel*%
valueB"      0   0   *
dtype0*
_output_shapes
:
Ý
#conv2d_5/kernel/Initializer/ReshapeReshapeconv2d_5/kernel/Initializer/mul)conv2d_5/kernel/Initializer/Reshape/shape*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_5/kernel*
Tshape0

#conv2d_5/kernel/Initializer/mul_1/xConst*"
_class
loc:@conv2d_5/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
!conv2d_5/kernel/Initializer/mul_1Mul#conv2d_5/kernel/Initializer/mul_1/x#conv2d_5/kernel/Initializer/Reshape*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:00
ˇ
conv2d_5/kernelVarHandleOp*
shape:00*
dtype0*
_output_shapes
: * 
shared_nameconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
	container 
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 

conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel!conv2d_5/kernel/Initializer/mul_1*"
_class
loc:@conv2d_5/kernel*
dtype0

#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:00*"
_class
loc:@conv2d_5/kernel
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:00
ú
conv2d_5/Conv2DConv2Dmax_pooling2d_3/MaxPoolconv2d_5/Conv2D/ReadVariableOp*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
b
leaky_re_lu_5/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_5/LeakyRelu/mulMulleaky_re_lu_5/LeakyRelu/alphaconv2d_5/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0

leaky_re_lu_5/LeakyReluMaximumleaky_re_lu_5/LeakyRelu/mulconv2d_5/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Č
max_pooling2d_4/MaxPoolMaxPoolleaky_re_lu_5/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
¤
/conv2d_6/kernel/Initializer/random_normal/shapeConst*"
_class
loc:@conv2d_6/kernel*
valueB"°  0   *
dtype0*
_output_shapes
:

.conv2d_6/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_6/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_6/kernel/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_6/kernel*
valueB
 *  ?
ü
>conv2d_6/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_6/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	°0*

seed*
T0*"
_class
loc:@conv2d_6/kernel*
seed2
ô
-conv2d_6/kernel/Initializer/random_normal/mulMul>conv2d_6/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_6/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:	°0
Ý
)conv2d_6/kernel/Initializer/random_normalAdd-conv2d_6/kernel/Initializer/random_normal/mul.conv2d_6/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:	°0
ź
conv2d_6/kernel/Initializer/QrQr)conv2d_6/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_6/kernel*)
_output_shapes
:	°0:00

$conv2d_6/kernel/Initializer/DiagPartDiagPart conv2d_6/kernel/Initializer/Qr:1*
_output_shapes
:0*
T0*"
_class
loc:@conv2d_6/kernel

 conv2d_6/kernel/Initializer/SignSign$conv2d_6/kernel/Initializer/DiagPart*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:0
ś
conv2d_6/kernel/Initializer/mulMulconv2d_6/kernel/Initializer/Qr conv2d_6/kernel/Initializer/Sign*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
:	°0
Ś
)conv2d_6/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_6/kernel*%
valueB"      0   0   *
dtype0*
_output_shapes
:
Ý
#conv2d_6/kernel/Initializer/ReshapeReshapeconv2d_6/kernel/Initializer/mul)conv2d_6/kernel/Initializer/Reshape/shape*
T0*"
_class
loc:@conv2d_6/kernel*
Tshape0*&
_output_shapes
:00

#conv2d_6/kernel/Initializer/mul_1/xConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_6/kernel*
valueB
 *  ?
Ç
!conv2d_6/kernel/Initializer/mul_1Mul#conv2d_6/kernel/Initializer/mul_1/x#conv2d_6/kernel/Initializer/Reshape*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:00
ˇ
conv2d_6/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
	container *
shape:00
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 

conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel!conv2d_6/kernel/Initializer/mul_1*"
_class
loc:@conv2d_6/kernel*
dtype0

#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
:00
g
conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:00
ú
conv2d_6/Conv2DConv2Dmax_pooling2d_4/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
b
leaky_re_lu_6/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_6/LeakyRelu/mulMulleaky_re_lu_6/LeakyRelu/alphaconv2d_6/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0

leaky_re_lu_6/LeakyReluMaximumleaky_re_lu_6/LeakyRelu/mulconv2d_6/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
j
up_sampling2d/ShapeShapeleaky_re_lu_6/LeakyRelu*
T0*
out_type0*
_output_shapes
:
k
!up_sampling2d/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
m
#up_sampling2d/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ă
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape!up_sampling2d/strided_slice/stack#up_sampling2d/strided_slice/stack_1#up_sampling2d/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
d
up_sampling2d/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
o
up_sampling2d/mulMulup_sampling2d/strided_sliceup_sampling2d/Const*
_output_shapes
:*
T0
ˇ
#up_sampling2d/ResizeNearestNeighborResizeNearestNeighborleaky_re_lu_6/LeakyReluup_sampling2d/mul*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
align_corners( 
Y
concatenate/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
Ä
concatenate/concatConcatV2#up_sampling2d/ResizeNearestNeighbormax_pooling2d_3/MaxPoolconcatenate/concat/axis*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*

Tidx0*
T0
¤
/conv2d_7/kernel/Initializer/random_normal/shapeConst*"
_class
loc:@conv2d_7/kernel*
valueB"`  `   *
dtype0*
_output_shapes
:

.conv2d_7/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_7/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_7/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_7/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ü
>conv2d_7/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_7/kernel/Initializer/random_normal/shape*
seed2ž*
dtype0*
_output_shapes
:	ŕ`*

seed*
T0*"
_class
loc:@conv2d_7/kernel
ô
-conv2d_7/kernel/Initializer/random_normal/mulMul>conv2d_7/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_7/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:	ŕ`
Ý
)conv2d_7/kernel/Initializer/random_normalAdd-conv2d_7/kernel/Initializer/random_normal/mul.conv2d_7/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:	ŕ`
ź
conv2d_7/kernel/Initializer/QrQr)conv2d_7/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_7/kernel*)
_output_shapes
:	ŕ`:``

$conv2d_7/kernel/Initializer/DiagPartDiagPart conv2d_7/kernel/Initializer/Qr:1*
_output_shapes
:`*
T0*"
_class
loc:@conv2d_7/kernel

 conv2d_7/kernel/Initializer/SignSign$conv2d_7/kernel/Initializer/DiagPart*
_output_shapes
:`*
T0*"
_class
loc:@conv2d_7/kernel
ś
conv2d_7/kernel/Initializer/mulMulconv2d_7/kernel/Initializer/Qr conv2d_7/kernel/Initializer/Sign*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
:	ŕ`
Ś
)conv2d_7/kernel/Initializer/Reshape/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_7/kernel*%
valueB"      `   `   
Ý
#conv2d_7/kernel/Initializer/ReshapeReshapeconv2d_7/kernel/Initializer/mul)conv2d_7/kernel/Initializer/Reshape/shape*
T0*"
_class
loc:@conv2d_7/kernel*
Tshape0*&
_output_shapes
:``

#conv2d_7/kernel/Initializer/mul_1/xConst*"
_class
loc:@conv2d_7/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
!conv2d_7/kernel/Initializer/mul_1Mul#conv2d_7/kernel/Initializer/mul_1/x#conv2d_7/kernel/Initializer/Reshape*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:``
ˇ
conv2d_7/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
	container *
shape:``
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 

conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel!conv2d_7/kernel/Initializer/mul_1*"
_class
loc:@conv2d_7/kernel*
dtype0

#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:``*"
_class
loc:@conv2d_7/kernel
g
conv2d_7/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:``
ő
conv2d_7/Conv2DConv2Dconcatenate/concatconv2d_7/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
b
leaky_re_lu_7/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_7/LeakyRelu/mulMulleaky_re_lu_7/LeakyRelu/alphaconv2d_7/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

leaky_re_lu_7/LeakyReluMaximumleaky_re_lu_7/LeakyRelu/mulconv2d_7/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
¤
/conv2d_8/kernel/Initializer/random_normal/shapeConst*"
_class
loc:@conv2d_8/kernel*
valueB"`  `   *
dtype0*
_output_shapes
:

.conv2d_8/kernel/Initializer/random_normal/meanConst*"
_class
loc:@conv2d_8/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

0conv2d_8/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_8/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ü
>conv2d_8/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_8/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	ŕ`*

seed*
T0*"
_class
loc:@conv2d_8/kernel*
seed2Ö
ô
-conv2d_8/kernel/Initializer/random_normal/mulMul>conv2d_8/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_8/kernel/Initializer/random_normal/stddev*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:	ŕ`
Ý
)conv2d_8/kernel/Initializer/random_normalAdd-conv2d_8/kernel/Initializer/random_normal/mul.conv2d_8/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:	ŕ`
ź
conv2d_8/kernel/Initializer/QrQr)conv2d_8/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_8/kernel*)
_output_shapes
:	ŕ`:``

$conv2d_8/kernel/Initializer/DiagPartDiagPart conv2d_8/kernel/Initializer/Qr:1*
_output_shapes
:`*
T0*"
_class
loc:@conv2d_8/kernel

 conv2d_8/kernel/Initializer/SignSign$conv2d_8/kernel/Initializer/DiagPart*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
:`
ś
conv2d_8/kernel/Initializer/mulMulconv2d_8/kernel/Initializer/Qr conv2d_8/kernel/Initializer/Sign*
_output_shapes
:	ŕ`*
T0*"
_class
loc:@conv2d_8/kernel
Ś
)conv2d_8/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_8/kernel*%
valueB"      `   `   *
dtype0*
_output_shapes
:
Ý
#conv2d_8/kernel/Initializer/ReshapeReshapeconv2d_8/kernel/Initializer/mul)conv2d_8/kernel/Initializer/Reshape/shape*&
_output_shapes
:``*
T0*"
_class
loc:@conv2d_8/kernel*
Tshape0

#conv2d_8/kernel/Initializer/mul_1/xConst*"
_class
loc:@conv2d_8/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ç
!conv2d_8/kernel/Initializer/mul_1Mul#conv2d_8/kernel/Initializer/mul_1/x#conv2d_8/kernel/Initializer/Reshape*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:``
ˇ
conv2d_8/kernelVarHandleOp*"
_class
loc:@conv2d_8/kernel*
	container *
shape:``*
dtype0*
_output_shapes
: * 
shared_nameconv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 

conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel!conv2d_8/kernel/Initializer/mul_1*
dtype0*"
_class
loc:@conv2d_8/kernel

#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
dtype0*&
_output_shapes
:``
g
conv2d_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:``
ú
conv2d_8/Conv2DConv2Dleaky_re_lu_7/LeakyReluconv2d_8/Conv2D/ReadVariableOp*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
b
leaky_re_lu_8/LeakyRelu/alphaConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=

leaky_re_lu_8/LeakyRelu/mulMulleaky_re_lu_8/LeakyRelu/alphaconv2d_8/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

leaky_re_lu_8/LeakyReluMaximumleaky_re_lu_8/LeakyRelu/mulconv2d_8/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
l
up_sampling2d_1/ShapeShapeleaky_re_lu_8/LeakyRelu*
_output_shapes
:*
T0*
out_type0
m
#up_sampling2d_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
o
%up_sampling2d_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Í
up_sampling2d_1/strided_sliceStridedSliceup_sampling2d_1/Shape#up_sampling2d_1/strided_slice/stack%up_sampling2d_1/strided_slice/stack_1%up_sampling2d_1/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
f
up_sampling2d_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
u
up_sampling2d_1/mulMulup_sampling2d_1/strided_sliceup_sampling2d_1/Const*
T0*
_output_shapes
:
ť
%up_sampling2d_1/ResizeNearestNeighborResizeNearestNeighborleaky_re_lu_8/LeakyReluup_sampling2d_1/mul*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
align_corners( 
[
concatenate_1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
concatenate_1/concatConcatV2%up_sampling2d_1/ResizeNearestNeighbormax_pooling2d_2/MaxPoolconcatenate_1/concat/axis*
N*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *

Tidx0*
T0
¤
/conv2d_9/kernel/Initializer/random_normal/shapeConst*"
_class
loc:@conv2d_9/kernel*
valueB"  `   *
dtype0*
_output_shapes
:

.conv2d_9/kernel/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_9/kernel*
valueB
 *    

0conv2d_9/kernel/Initializer/random_normal/stddevConst*"
_class
loc:@conv2d_9/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ü
>conv2d_9/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal/conv2d_9/kernel/Initializer/random_normal/shape*

seed*
T0*"
_class
loc:@conv2d_9/kernel*
seed2ř*
dtype0*
_output_shapes
:	
`
ô
-conv2d_9/kernel/Initializer/random_normal/mulMul>conv2d_9/kernel/Initializer/random_normal/RandomStandardNormal0conv2d_9/kernel/Initializer/random_normal/stddev*
_output_shapes
:	
`*
T0*"
_class
loc:@conv2d_9/kernel
Ý
)conv2d_9/kernel/Initializer/random_normalAdd-conv2d_9/kernel/Initializer/random_normal/mul.conv2d_9/kernel/Initializer/random_normal/mean*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:	
`
ź
conv2d_9/kernel/Initializer/QrQr)conv2d_9/kernel/Initializer/random_normal*
full_matrices( *
T0*"
_class
loc:@conv2d_9/kernel*)
_output_shapes
:	
`:``

$conv2d_9/kernel/Initializer/DiagPartDiagPart conv2d_9/kernel/Initializer/Qr:1*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:`

 conv2d_9/kernel/Initializer/SignSign$conv2d_9/kernel/Initializer/DiagPart*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
:`
ś
conv2d_9/kernel/Initializer/mulMulconv2d_9/kernel/Initializer/Qr conv2d_9/kernel/Initializer/Sign*
_output_shapes
:	
`*
T0*"
_class
loc:@conv2d_9/kernel
Ś
)conv2d_9/kernel/Initializer/Reshape/shapeConst*"
_class
loc:@conv2d_9/kernel*%
valueB"         `   *
dtype0*
_output_shapes
:
Ţ
#conv2d_9/kernel/Initializer/ReshapeReshapeconv2d_9/kernel/Initializer/mul)conv2d_9/kernel/Initializer/Reshape/shape*
T0*"
_class
loc:@conv2d_9/kernel*
Tshape0*'
_output_shapes
:`

#conv2d_9/kernel/Initializer/mul_1/xConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_9/kernel*
valueB
 *  ?
Č
!conv2d_9/kernel/Initializer/mul_1Mul#conv2d_9/kernel/Initializer/mul_1/x#conv2d_9/kernel/Initializer/Reshape*
T0*"
_class
loc:@conv2d_9/kernel*'
_output_shapes
:`
¸
conv2d_9/kernelVarHandleOp* 
shared_nameconv2d_9/kernel*"
_class
loc:@conv2d_9/kernel*
	container *
shape:`*
dtype0*
_output_shapes
: 
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 

conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel!conv2d_9/kernel/Initializer/mul_1*
dtype0*"
_class
loc:@conv2d_9/kernel
 
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*"
_class
loc:@conv2d_9/kernel*
dtype0*'
_output_shapes
:`
g
conv2d_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
w
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*
dtype0*'
_output_shapes
:`
÷
conv2d_9/Conv2DConv2Dconcatenate_1/concatconv2d_9/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
b
leaky_re_lu_9/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_9/LeakyRelu/mulMulleaky_re_lu_9/LeakyRelu/alphaconv2d_9/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0

leaky_re_lu_9/LeakyReluMaximumleaky_re_lu_9/LeakyRelu/mulconv2d_9/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0
Ś
0conv2d_10/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_10/kernel*
valueB"`  `   *
dtype0*
_output_shapes
:

/conv2d_10/kernel/Initializer/random_normal/meanConst*#
_class
loc:@conv2d_10/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1conv2d_10/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@conv2d_10/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
˙
?conv2d_10/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_10/kernel/Initializer/random_normal/shape*
seed2*
dtype0*
_output_shapes
:	ŕ`*

seed*
T0*#
_class
loc:@conv2d_10/kernel
ř
.conv2d_10/kernel/Initializer/random_normal/mulMul?conv2d_10/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_10/kernel/Initializer/random_normal/stddev*
_output_shapes
:	ŕ`*
T0*#
_class
loc:@conv2d_10/kernel
á
*conv2d_10/kernel/Initializer/random_normalAdd.conv2d_10/kernel/Initializer/random_normal/mul/conv2d_10/kernel/Initializer/random_normal/mean*
_output_shapes
:	ŕ`*
T0*#
_class
loc:@conv2d_10/kernel
ż
conv2d_10/kernel/Initializer/QrQr*conv2d_10/kernel/Initializer/random_normal*
T0*#
_class
loc:@conv2d_10/kernel*)
_output_shapes
:	ŕ`:``*
full_matrices( 

%conv2d_10/kernel/Initializer/DiagPartDiagPart!conv2d_10/kernel/Initializer/Qr:1*
_output_shapes
:`*
T0*#
_class
loc:@conv2d_10/kernel

!conv2d_10/kernel/Initializer/SignSign%conv2d_10/kernel/Initializer/DiagPart*
T0*#
_class
loc:@conv2d_10/kernel*
_output_shapes
:`
ş
 conv2d_10/kernel/Initializer/mulMulconv2d_10/kernel/Initializer/Qr!conv2d_10/kernel/Initializer/Sign*
T0*#
_class
loc:@conv2d_10/kernel*
_output_shapes
:	ŕ`
¨
*conv2d_10/kernel/Initializer/Reshape/shapeConst*#
_class
loc:@conv2d_10/kernel*%
valueB"      `   `   *
dtype0*
_output_shapes
:
á
$conv2d_10/kernel/Initializer/ReshapeReshape conv2d_10/kernel/Initializer/mul*conv2d_10/kernel/Initializer/Reshape/shape*&
_output_shapes
:``*
T0*#
_class
loc:@conv2d_10/kernel*
Tshape0

$conv2d_10/kernel/Initializer/mul_1/xConst*#
_class
loc:@conv2d_10/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ë
"conv2d_10/kernel/Initializer/mul_1Mul$conv2d_10/kernel/Initializer/mul_1/x$conv2d_10/kernel/Initializer/Reshape*
T0*#
_class
loc:@conv2d_10/kernel*&
_output_shapes
:``
ş
conv2d_10/kernelVarHandleOp*!
shared_nameconv2d_10/kernel*#
_class
loc:@conv2d_10/kernel*
	container *
shape:``*
dtype0*
_output_shapes
: 
q
1conv2d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 

conv2d_10/kernel/AssignAssignVariableOpconv2d_10/kernel"conv2d_10/kernel/Initializer/mul_1*#
_class
loc:@conv2d_10/kernel*
dtype0
˘
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*#
_class
loc:@conv2d_10/kernel*
dtype0*&
_output_shapes
:``
h
conv2d_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_10/Conv2D/ReadVariableOpReadVariableOpconv2d_10/kernel*
dtype0*&
_output_shapes
:``
ü
conv2d_10/Conv2DConv2Dleaky_re_lu_9/LeakyReluconv2d_10/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
c
leaky_re_lu_10/LeakyRelu/alphaConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=

leaky_re_lu_10/LeakyRelu/mulMulleaky_re_lu_10/LeakyRelu/alphaconv2d_10/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

leaky_re_lu_10/LeakyReluMaximumleaky_re_lu_10/LeakyRelu/mulconv2d_10/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
m
up_sampling2d_2/ShapeShapeleaky_re_lu_10/LeakyRelu*
T0*
out_type0*
_output_shapes
:
m
#up_sampling2d_2/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Í
up_sampling2d_2/strided_sliceStridedSliceup_sampling2d_2/Shape#up_sampling2d_2/strided_slice/stack%up_sampling2d_2/strided_slice/stack_1%up_sampling2d_2/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:
f
up_sampling2d_2/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
u
up_sampling2d_2/mulMulup_sampling2d_2/strided_sliceup_sampling2d_2/Const*
T0*
_output_shapes
:
ź
%up_sampling2d_2/ResizeNearestNeighborResizeNearestNeighborleaky_re_lu_10/LeakyReluup_sampling2d_2/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
align_corners( *
T0
[
concatenate_2/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
concatenate_2/concatConcatV2%up_sampling2d_2/ResizeNearestNeighbormax_pooling2d_1/MaxPoolconcatenate_2/concat/axis*
N*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*

Tidx0*
T0
Ś
0conv2d_11/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_11/kernel*
valueB"  `   *
dtype0*
_output_shapes
:

/conv2d_11/kernel/Initializer/random_normal/meanConst*#
_class
loc:@conv2d_11/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1conv2d_11/kernel/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *#
_class
loc:@conv2d_11/kernel*
valueB
 *  ?
˙
?conv2d_11/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_11/kernel/Initializer/random_normal/shape*
T0*#
_class
loc:@conv2d_11/kernel*
seed2˛*
dtype0*
_output_shapes
:	
`*

seed
ř
.conv2d_11/kernel/Initializer/random_normal/mulMul?conv2d_11/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_11/kernel/Initializer/random_normal/stddev*
_output_shapes
:	
`*
T0*#
_class
loc:@conv2d_11/kernel
á
*conv2d_11/kernel/Initializer/random_normalAdd.conv2d_11/kernel/Initializer/random_normal/mul/conv2d_11/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@conv2d_11/kernel*
_output_shapes
:	
`
ż
conv2d_11/kernel/Initializer/QrQr*conv2d_11/kernel/Initializer/random_normal*
full_matrices( *
T0*#
_class
loc:@conv2d_11/kernel*)
_output_shapes
:	
`:``

%conv2d_11/kernel/Initializer/DiagPartDiagPart!conv2d_11/kernel/Initializer/Qr:1*
_output_shapes
:`*
T0*#
_class
loc:@conv2d_11/kernel

!conv2d_11/kernel/Initializer/SignSign%conv2d_11/kernel/Initializer/DiagPart*
_output_shapes
:`*
T0*#
_class
loc:@conv2d_11/kernel
ş
 conv2d_11/kernel/Initializer/mulMulconv2d_11/kernel/Initializer/Qr!conv2d_11/kernel/Initializer/Sign*
_output_shapes
:	
`*
T0*#
_class
loc:@conv2d_11/kernel
¨
*conv2d_11/kernel/Initializer/Reshape/shapeConst*#
_class
loc:@conv2d_11/kernel*%
valueB"         `   *
dtype0*
_output_shapes
:
â
$conv2d_11/kernel/Initializer/ReshapeReshape conv2d_11/kernel/Initializer/mul*conv2d_11/kernel/Initializer/Reshape/shape*
T0*#
_class
loc:@conv2d_11/kernel*
Tshape0*'
_output_shapes
:`

$conv2d_11/kernel/Initializer/mul_1/xConst*#
_class
loc:@conv2d_11/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ě
"conv2d_11/kernel/Initializer/mul_1Mul$conv2d_11/kernel/Initializer/mul_1/x$conv2d_11/kernel/Initializer/Reshape*
T0*#
_class
loc:@conv2d_11/kernel*'
_output_shapes
:`
ť
conv2d_11/kernelVarHandleOp*!
shared_nameconv2d_11/kernel*#
_class
loc:@conv2d_11/kernel*
	container *
shape:`*
dtype0*
_output_shapes
: 
q
1conv2d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 

conv2d_11/kernel/AssignAssignVariableOpconv2d_11/kernel"conv2d_11/kernel/Initializer/mul_1*#
_class
loc:@conv2d_11/kernel*
dtype0
Ł
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*'
_output_shapes
:`*#
_class
loc:@conv2d_11/kernel
h
conv2d_11/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
y
conv2d_11/Conv2D/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*'
_output_shapes
:`
ů
conv2d_11/Conv2DConv2Dconcatenate_2/concatconv2d_11/Conv2D/ReadVariableOp*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
c
leaky_re_lu_11/LeakyRelu/alphaConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=

leaky_re_lu_11/LeakyRelu/mulMulleaky_re_lu_11/LeakyRelu/alphaconv2d_11/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`

leaky_re_lu_11/LeakyReluMaximumleaky_re_lu_11/LeakyRelu/mulconv2d_11/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ś
0conv2d_12/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_12/kernel*
valueB"`  `   *
dtype0*
_output_shapes
:

/conv2d_12/kernel/Initializer/random_normal/meanConst*#
_class
loc:@conv2d_12/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1conv2d_12/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@conv2d_12/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
˙
?conv2d_12/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_12/kernel/Initializer/random_normal/shape*
T0*#
_class
loc:@conv2d_12/kernel*
seed2Ę*
dtype0*
_output_shapes
:	ŕ`*

seed
ř
.conv2d_12/kernel/Initializer/random_normal/mulMul?conv2d_12/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_12/kernel/Initializer/random_normal/stddev*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
:	ŕ`
á
*conv2d_12/kernel/Initializer/random_normalAdd.conv2d_12/kernel/Initializer/random_normal/mul/conv2d_12/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
:	ŕ`
ż
conv2d_12/kernel/Initializer/QrQr*conv2d_12/kernel/Initializer/random_normal*)
_output_shapes
:	ŕ`:``*
full_matrices( *
T0*#
_class
loc:@conv2d_12/kernel

%conv2d_12/kernel/Initializer/DiagPartDiagPart!conv2d_12/kernel/Initializer/Qr:1*
_output_shapes
:`*
T0*#
_class
loc:@conv2d_12/kernel

!conv2d_12/kernel/Initializer/SignSign%conv2d_12/kernel/Initializer/DiagPart*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
:`
ş
 conv2d_12/kernel/Initializer/mulMulconv2d_12/kernel/Initializer/Qr!conv2d_12/kernel/Initializer/Sign*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
:	ŕ`
¨
*conv2d_12/kernel/Initializer/Reshape/shapeConst*#
_class
loc:@conv2d_12/kernel*%
valueB"      `   `   *
dtype0*
_output_shapes
:
á
$conv2d_12/kernel/Initializer/ReshapeReshape conv2d_12/kernel/Initializer/mul*conv2d_12/kernel/Initializer/Reshape/shape*
T0*#
_class
loc:@conv2d_12/kernel*
Tshape0*&
_output_shapes
:``

$conv2d_12/kernel/Initializer/mul_1/xConst*#
_class
loc:@conv2d_12/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ë
"conv2d_12/kernel/Initializer/mul_1Mul$conv2d_12/kernel/Initializer/mul_1/x$conv2d_12/kernel/Initializer/Reshape*&
_output_shapes
:``*
T0*#
_class
loc:@conv2d_12/kernel
ş
conv2d_12/kernelVarHandleOp*!
shared_nameconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
	container *
shape:``*
dtype0*
_output_shapes
: 
q
1conv2d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 

conv2d_12/kernel/AssignAssignVariableOpconv2d_12/kernel"conv2d_12/kernel/Initializer/mul_1*#
_class
loc:@conv2d_12/kernel*
dtype0
˘
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
dtype0*&
_output_shapes
:``
h
conv2d_12/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_12/Conv2D/ReadVariableOpReadVariableOpconv2d_12/kernel*
dtype0*&
_output_shapes
:``
ý
conv2d_12/Conv2DConv2Dleaky_re_lu_11/LeakyReluconv2d_12/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
c
leaky_re_lu_12/LeakyRelu/alphaConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=

leaky_re_lu_12/LeakyRelu/mulMulleaky_re_lu_12/LeakyRelu/alphaconv2d_12/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`

leaky_re_lu_12/LeakyReluMaximumleaky_re_lu_12/LeakyRelu/mulconv2d_12/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
T0
m
up_sampling2d_3/ShapeShapeleaky_re_lu_12/LeakyRelu*
T0*
out_type0*
_output_shapes
:
m
#up_sampling2d_3/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Í
up_sampling2d_3/strided_sliceStridedSliceup_sampling2d_3/Shape#up_sampling2d_3/strided_slice/stack%up_sampling2d_3/strided_slice/stack_1%up_sampling2d_3/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:
f
up_sampling2d_3/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
u
up_sampling2d_3/mulMulup_sampling2d_3/strided_sliceup_sampling2d_3/Const*
T0*
_output_shapes
:
ž
%up_sampling2d_3/ResizeNearestNeighborResizeNearestNeighborleaky_re_lu_12/LeakyReluup_sampling2d_3/mul*
align_corners( *
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
[
concatenate_3/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ë
concatenate_3/concatConcatV2%up_sampling2d_3/ResizeNearestNeighbormax_pooling2d/MaxPoolconcatenate_3/concat/axis*
T0*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*

Tidx0
Ś
0conv2d_13/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_13/kernel*
valueB"  `   *
dtype0*
_output_shapes
:

/conv2d_13/kernel/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *#
_class
loc:@conv2d_13/kernel*
valueB
 *    

1conv2d_13/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@conv2d_13/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
˙
?conv2d_13/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_13/kernel/Initializer/random_normal/shape*
T0*#
_class
loc:@conv2d_13/kernel*
seed2ě*
dtype0*
_output_shapes
:	
`*

seed
ř
.conv2d_13/kernel/Initializer/random_normal/mulMul?conv2d_13/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_13/kernel/Initializer/random_normal/stddev*
_output_shapes
:	
`*
T0*#
_class
loc:@conv2d_13/kernel
á
*conv2d_13/kernel/Initializer/random_normalAdd.conv2d_13/kernel/Initializer/random_normal/mul/conv2d_13/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@conv2d_13/kernel*
_output_shapes
:	
`
ż
conv2d_13/kernel/Initializer/QrQr*conv2d_13/kernel/Initializer/random_normal*
T0*#
_class
loc:@conv2d_13/kernel*)
_output_shapes
:	
`:``*
full_matrices( 

%conv2d_13/kernel/Initializer/DiagPartDiagPart!conv2d_13/kernel/Initializer/Qr:1*
T0*#
_class
loc:@conv2d_13/kernel*
_output_shapes
:`

!conv2d_13/kernel/Initializer/SignSign%conv2d_13/kernel/Initializer/DiagPart*
T0*#
_class
loc:@conv2d_13/kernel*
_output_shapes
:`
ş
 conv2d_13/kernel/Initializer/mulMulconv2d_13/kernel/Initializer/Qr!conv2d_13/kernel/Initializer/Sign*
T0*#
_class
loc:@conv2d_13/kernel*
_output_shapes
:	
`
¨
*conv2d_13/kernel/Initializer/Reshape/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@conv2d_13/kernel*%
valueB"         `   
â
$conv2d_13/kernel/Initializer/ReshapeReshape conv2d_13/kernel/Initializer/mul*conv2d_13/kernel/Initializer/Reshape/shape*
T0*#
_class
loc:@conv2d_13/kernel*
Tshape0*'
_output_shapes
:`

$conv2d_13/kernel/Initializer/mul_1/xConst*#
_class
loc:@conv2d_13/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ě
"conv2d_13/kernel/Initializer/mul_1Mul$conv2d_13/kernel/Initializer/mul_1/x$conv2d_13/kernel/Initializer/Reshape*
T0*#
_class
loc:@conv2d_13/kernel*'
_output_shapes
:`
ť
conv2d_13/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_13/kernel*#
_class
loc:@conv2d_13/kernel*
	container *
shape:`
q
1conv2d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 

conv2d_13/kernel/AssignAssignVariableOpconv2d_13/kernel"conv2d_13/kernel/Initializer/mul_1*#
_class
loc:@conv2d_13/kernel*
dtype0
Ł
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*#
_class
loc:@conv2d_13/kernel*
dtype0*'
_output_shapes
:`
h
conv2d_13/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
y
conv2d_13/Conv2D/ReadVariableOpReadVariableOpconv2d_13/kernel*
dtype0*'
_output_shapes
:`
ű
conv2d_13/Conv2DConv2Dconcatenate_3/concatconv2d_13/Conv2D/ReadVariableOp*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
c
leaky_re_lu_13/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_13/LeakyRelu/mulMulleaky_re_lu_13/LeakyRelu/alphaconv2d_13/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`

leaky_re_lu_13/LeakyReluMaximumleaky_re_lu_13/LeakyRelu/mulconv2d_13/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ś
0conv2d_14/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_14/kernel*
valueB"`  `   *
dtype0*
_output_shapes
:

/conv2d_14/kernel/Initializer/random_normal/meanConst*#
_class
loc:@conv2d_14/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1conv2d_14/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@conv2d_14/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
˙
?conv2d_14/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_14/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	ŕ`*

seed*
T0*#
_class
loc:@conv2d_14/kernel*
seed2
ř
.conv2d_14/kernel/Initializer/random_normal/mulMul?conv2d_14/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_14/kernel/Initializer/random_normal/stddev*
_output_shapes
:	ŕ`*
T0*#
_class
loc:@conv2d_14/kernel
á
*conv2d_14/kernel/Initializer/random_normalAdd.conv2d_14/kernel/Initializer/random_normal/mul/conv2d_14/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@conv2d_14/kernel*
_output_shapes
:	ŕ`
ż
conv2d_14/kernel/Initializer/QrQr*conv2d_14/kernel/Initializer/random_normal*)
_output_shapes
:	ŕ`:``*
full_matrices( *
T0*#
_class
loc:@conv2d_14/kernel

%conv2d_14/kernel/Initializer/DiagPartDiagPart!conv2d_14/kernel/Initializer/Qr:1*
T0*#
_class
loc:@conv2d_14/kernel*
_output_shapes
:`

!conv2d_14/kernel/Initializer/SignSign%conv2d_14/kernel/Initializer/DiagPart*
T0*#
_class
loc:@conv2d_14/kernel*
_output_shapes
:`
ş
 conv2d_14/kernel/Initializer/mulMulconv2d_14/kernel/Initializer/Qr!conv2d_14/kernel/Initializer/Sign*
T0*#
_class
loc:@conv2d_14/kernel*
_output_shapes
:	ŕ`
¨
*conv2d_14/kernel/Initializer/Reshape/shapeConst*#
_class
loc:@conv2d_14/kernel*%
valueB"      `   `   *
dtype0*
_output_shapes
:
á
$conv2d_14/kernel/Initializer/ReshapeReshape conv2d_14/kernel/Initializer/mul*conv2d_14/kernel/Initializer/Reshape/shape*&
_output_shapes
:``*
T0*#
_class
loc:@conv2d_14/kernel*
Tshape0

$conv2d_14/kernel/Initializer/mul_1/xConst*
dtype0*
_output_shapes
: *#
_class
loc:@conv2d_14/kernel*
valueB
 *  ?
Ë
"conv2d_14/kernel/Initializer/mul_1Mul$conv2d_14/kernel/Initializer/mul_1/x$conv2d_14/kernel/Initializer/Reshape*
T0*#
_class
loc:@conv2d_14/kernel*&
_output_shapes
:``
ş
conv2d_14/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_14/kernel*#
_class
loc:@conv2d_14/kernel*
	container *
shape:``
q
1conv2d_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_14/kernel*
_output_shapes
: 

conv2d_14/kernel/AssignAssignVariableOpconv2d_14/kernel"conv2d_14/kernel/Initializer/mul_1*#
_class
loc:@conv2d_14/kernel*
dtype0
˘
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*#
_class
loc:@conv2d_14/kernel*
dtype0*&
_output_shapes
:``
h
conv2d_14/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
x
conv2d_14/Conv2D/ReadVariableOpReadVariableOpconv2d_14/kernel*
dtype0*&
_output_shapes
:``
˙
conv2d_14/Conv2DConv2Dleaky_re_lu_13/LeakyReluconv2d_14/Conv2D/ReadVariableOp*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
c
leaky_re_lu_14/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_14/LeakyRelu/mulMulleaky_re_lu_14/LeakyRelu/alphaconv2d_14/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`

leaky_re_lu_14/LeakyReluMaximumleaky_re_lu_14/LeakyRelu/mulconv2d_14/Conv2D*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0
m
up_sampling2d_4/ShapeShapeleaky_re_lu_14/LeakyRelu*
_output_shapes
:*
T0*
out_type0
m
#up_sampling2d_4/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Í
up_sampling2d_4/strided_sliceStridedSliceup_sampling2d_4/Shape#up_sampling2d_4/strided_slice/stack%up_sampling2d_4/strided_slice/stack_1%up_sampling2d_4/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
f
up_sampling2d_4/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
u
up_sampling2d_4/mulMulup_sampling2d_4/strided_sliceup_sampling2d_4/Const*
T0*
_output_shapes
:
ž
%up_sampling2d_4/ResizeNearestNeighborResizeNearestNeighborleaky_re_lu_14/LeakyReluup_sampling2d_4/mul*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
align_corners( 
[
concatenate_4/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
¸
concatenate_4/concatConcatV2%up_sampling2d_4/ResizeNearestNeighborimgconcatenate_4/concat/axis*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙a*

Tidx0*
T0
Ś
0conv2d_15/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_15/kernel*
valueB"i  @   *
dtype0*
_output_shapes
:

/conv2d_15/kernel/Initializer/random_normal/meanConst*#
_class
loc:@conv2d_15/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1conv2d_15/kernel/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *#
_class
loc:@conv2d_15/kernel*
valueB
 *  ?
˙
?conv2d_15/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_15/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	é@*

seed*
T0*#
_class
loc:@conv2d_15/kernel*
seed2Ś
ř
.conv2d_15/kernel/Initializer/random_normal/mulMul?conv2d_15/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_15/kernel/Initializer/random_normal/stddev*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
:	é@
á
*conv2d_15/kernel/Initializer/random_normalAdd.conv2d_15/kernel/Initializer/random_normal/mul/conv2d_15/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
:	é@
ż
conv2d_15/kernel/Initializer/QrQr*conv2d_15/kernel/Initializer/random_normal*)
_output_shapes
:	é@:@@*
full_matrices( *
T0*#
_class
loc:@conv2d_15/kernel

%conv2d_15/kernel/Initializer/DiagPartDiagPart!conv2d_15/kernel/Initializer/Qr:1*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
:@

!conv2d_15/kernel/Initializer/SignSign%conv2d_15/kernel/Initializer/DiagPart*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
:@
ş
 conv2d_15/kernel/Initializer/mulMulconv2d_15/kernel/Initializer/Qr!conv2d_15/kernel/Initializer/Sign*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
:	é@
¨
*conv2d_15/kernel/Initializer/Reshape/shapeConst*#
_class
loc:@conv2d_15/kernel*%
valueB"      a   @   *
dtype0*
_output_shapes
:
á
$conv2d_15/kernel/Initializer/ReshapeReshape conv2d_15/kernel/Initializer/mul*conv2d_15/kernel/Initializer/Reshape/shape*
T0*#
_class
loc:@conv2d_15/kernel*
Tshape0*&
_output_shapes
:a@

$conv2d_15/kernel/Initializer/mul_1/xConst*#
_class
loc:@conv2d_15/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ë
"conv2d_15/kernel/Initializer/mul_1Mul$conv2d_15/kernel/Initializer/mul_1/x$conv2d_15/kernel/Initializer/Reshape*
T0*#
_class
loc:@conv2d_15/kernel*&
_output_shapes
:a@
ş
conv2d_15/kernelVarHandleOp*#
_class
loc:@conv2d_15/kernel*
	container *
shape:a@*
dtype0*
_output_shapes
: *!
shared_nameconv2d_15/kernel
q
1conv2d_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_15/kernel*
_output_shapes
: 

conv2d_15/kernel/AssignAssignVariableOpconv2d_15/kernel"conv2d_15/kernel/Initializer/mul_1*#
_class
loc:@conv2d_15/kernel*
dtype0
˘
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*#
_class
loc:@conv2d_15/kernel*
dtype0*&
_output_shapes
:a@
h
conv2d_15/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_15/Conv2D/ReadVariableOpReadVariableOpconv2d_15/kernel*
dtype0*&
_output_shapes
:a@
ű
conv2d_15/Conv2DConv2Dconcatenate_4/concatconv2d_15/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@
c
leaky_re_lu_15/LeakyRelu/alphaConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

leaky_re_lu_15/LeakyRelu/mulMulleaky_re_lu_15/LeakyRelu/alphaconv2d_15/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@

leaky_re_lu_15/LeakyReluMaximumleaky_re_lu_15/LeakyRelu/mulconv2d_15/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ś
0conv2d_16/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_16/kernel*
valueB"@      *
dtype0*
_output_shapes
:

/conv2d_16/kernel/Initializer/random_normal/meanConst*#
_class
loc:@conv2d_16/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1conv2d_16/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@conv2d_16/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
˙
?conv2d_16/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_16/kernel/Initializer/random_normal/shape*
T0*#
_class
loc:@conv2d_16/kernel*
seed2ž*
dtype0*
_output_shapes
:	Ŕ *

seed
ř
.conv2d_16/kernel/Initializer/random_normal/mulMul?conv2d_16/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_16/kernel/Initializer/random_normal/stddev*
T0*#
_class
loc:@conv2d_16/kernel*
_output_shapes
:	Ŕ 
á
*conv2d_16/kernel/Initializer/random_normalAdd.conv2d_16/kernel/Initializer/random_normal/mul/conv2d_16/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@conv2d_16/kernel*
_output_shapes
:	Ŕ 
ż
conv2d_16/kernel/Initializer/QrQr*conv2d_16/kernel/Initializer/random_normal*
T0*#
_class
loc:@conv2d_16/kernel*)
_output_shapes
:	Ŕ :  *
full_matrices( 

%conv2d_16/kernel/Initializer/DiagPartDiagPart!conv2d_16/kernel/Initializer/Qr:1*
_output_shapes
: *
T0*#
_class
loc:@conv2d_16/kernel

!conv2d_16/kernel/Initializer/SignSign%conv2d_16/kernel/Initializer/DiagPart*
T0*#
_class
loc:@conv2d_16/kernel*
_output_shapes
: 
ş
 conv2d_16/kernel/Initializer/mulMulconv2d_16/kernel/Initializer/Qr!conv2d_16/kernel/Initializer/Sign*
T0*#
_class
loc:@conv2d_16/kernel*
_output_shapes
:	Ŕ 
¨
*conv2d_16/kernel/Initializer/Reshape/shapeConst*#
_class
loc:@conv2d_16/kernel*%
valueB"      @       *
dtype0*
_output_shapes
:
á
$conv2d_16/kernel/Initializer/ReshapeReshape conv2d_16/kernel/Initializer/mul*conv2d_16/kernel/Initializer/Reshape/shape*&
_output_shapes
:@ *
T0*#
_class
loc:@conv2d_16/kernel*
Tshape0

$conv2d_16/kernel/Initializer/mul_1/xConst*#
_class
loc:@conv2d_16/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ë
"conv2d_16/kernel/Initializer/mul_1Mul$conv2d_16/kernel/Initializer/mul_1/x$conv2d_16/kernel/Initializer/Reshape*&
_output_shapes
:@ *
T0*#
_class
loc:@conv2d_16/kernel
ş
conv2d_16/kernelVarHandleOp*
shape:@ *
dtype0*
_output_shapes
: *!
shared_nameconv2d_16/kernel*#
_class
loc:@conv2d_16/kernel*
	container 
q
1conv2d_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_16/kernel*
_output_shapes
: 

conv2d_16/kernel/AssignAssignVariableOpconv2d_16/kernel"conv2d_16/kernel/Initializer/mul_1*#
_class
loc:@conv2d_16/kernel*
dtype0
˘
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*#
_class
loc:@conv2d_16/kernel*
dtype0*&
_output_shapes
:@ 
h
conv2d_16/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_16/Conv2D/ReadVariableOpReadVariableOpconv2d_16/kernel*
dtype0*&
_output_shapes
:@ 
˙
conv2d_16/Conv2DConv2Dleaky_re_lu_15/LeakyReluconv2d_16/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0
c
leaky_re_lu_16/LeakyRelu/alphaConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=

leaky_re_lu_16/LeakyRelu/mulMulleaky_re_lu_16/LeakyRelu/alphaconv2d_16/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

leaky_re_lu_16/LeakyReluMaximumleaky_re_lu_16/LeakyRelu/mulconv2d_16/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ś
0conv2d_17/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@conv2d_17/kernel*
valueB"      *
dtype0*
_output_shapes
:

/conv2d_17/kernel/Initializer/random_normal/meanConst*#
_class
loc:@conv2d_17/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1conv2d_17/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@conv2d_17/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
˙
?conv2d_17/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0conv2d_17/kernel/Initializer/random_normal/shape*
seed2Ö*
dtype0*
_output_shapes
:	 *

seed*
T0*#
_class
loc:@conv2d_17/kernel
ř
.conv2d_17/kernel/Initializer/random_normal/mulMul?conv2d_17/kernel/Initializer/random_normal/RandomStandardNormal1conv2d_17/kernel/Initializer/random_normal/stddev*
_output_shapes
:	 *
T0*#
_class
loc:@conv2d_17/kernel
á
*conv2d_17/kernel/Initializer/random_normalAdd.conv2d_17/kernel/Initializer/random_normal/mul/conv2d_17/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@conv2d_17/kernel*
_output_shapes
:	 
ż
conv2d_17/kernel/Initializer/QrQr*conv2d_17/kernel/Initializer/random_normal*)
_output_shapes
:	 :*
full_matrices( *
T0*#
_class
loc:@conv2d_17/kernel

%conv2d_17/kernel/Initializer/DiagPartDiagPart!conv2d_17/kernel/Initializer/Qr:1*
T0*#
_class
loc:@conv2d_17/kernel*
_output_shapes
:

!conv2d_17/kernel/Initializer/SignSign%conv2d_17/kernel/Initializer/DiagPart*
T0*#
_class
loc:@conv2d_17/kernel*
_output_shapes
:
ş
 conv2d_17/kernel/Initializer/mulMulconv2d_17/kernel/Initializer/Qr!conv2d_17/kernel/Initializer/Sign*
T0*#
_class
loc:@conv2d_17/kernel*
_output_shapes
:	 
¨
*conv2d_17/kernel/Initializer/Reshape/shapeConst*#
_class
loc:@conv2d_17/kernel*%
valueB"             *
dtype0*
_output_shapes
:
á
$conv2d_17/kernel/Initializer/ReshapeReshape conv2d_17/kernel/Initializer/mul*conv2d_17/kernel/Initializer/Reshape/shape*
T0*#
_class
loc:@conv2d_17/kernel*
Tshape0*&
_output_shapes
: 

$conv2d_17/kernel/Initializer/mul_1/xConst*#
_class
loc:@conv2d_17/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ë
"conv2d_17/kernel/Initializer/mul_1Mul$conv2d_17/kernel/Initializer/mul_1/x$conv2d_17/kernel/Initializer/Reshape*&
_output_shapes
: *
T0*#
_class
loc:@conv2d_17/kernel
ş
conv2d_17/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_17/kernel*#
_class
loc:@conv2d_17/kernel*
	container *
shape: 
q
1conv2d_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_17/kernel*
_output_shapes
: 

conv2d_17/kernel/AssignAssignVariableOpconv2d_17/kernel"conv2d_17/kernel/Initializer/mul_1*
dtype0*#
_class
loc:@conv2d_17/kernel
˘
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
: *#
_class
loc:@conv2d_17/kernel
h
conv2d_17/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_17/Conv2D/ReadVariableOpReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
: 
˙
conv2d_17/Conv2DConv2Dleaky_re_lu_16/LeakyReluconv2d_17/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations

e
activation/TanhTanhconv2d_17/Conv2D*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

)Adam/iterations/Initializer/initial_valueConst*"
_class
loc:@Adam/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
§
Adam/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*
dtype0	*"
_class
loc:@Adam/iterations

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

!Adam/lr/Initializer/initial_valueConst*
_class
loc:@Adam/lr*
valueB
 *o:*
dtype0*
_output_shapes
: 

Adam/lrVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	Adam/lr*
_class
loc:@Adam/lr*
	container 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

%Adam/beta_1/Initializer/initial_valueConst*
_class
loc:@Adam/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 

Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1

%Adam/beta_2/Initializer/initial_valueConst*
_class
loc:@Adam/beta_2*
valueB
 *wž?*
dtype0*
_output_shapes
: 

Adam/beta_2VarHandleOp*
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay*
valueB
 *    


Adam/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam/decay

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
ş
activation_targetPlaceholder*?
shape6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:

activation_sample_weightsPlaceholderWithDefaultConst*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/activation_loss/subSubactivation/Tanhactivation_target*
T0*:
_output_shapes(
&:$˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

loss/activation_loss/SquareSquareloss/activation_loss/sub*
T0*:
_output_shapes(
&:$˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
+loss/activation_loss/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
Ŕ
loss/activation_loss/MeanMeanloss/activation_loss/Square+loss/activation_loss/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
Iloss/activation_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeactivation_sample_weights*
T0*
out_type0*
_output_shapes
:

Hloss/activation_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ą
Hloss/activation_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/activation_loss/Mean*
_output_shapes
:*
T0*
out_type0

Gloss/activation_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
~
-loss/activation_loss/Mean_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
¸
loss/activation_loss/Mean_1Meanloss/activation_loss/Mean-loss/activation_loss/Mean_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/activation_loss/MulMulloss/activation_loss/Mean_1activation_sample_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
loss/activation_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/activation_loss/SumSumloss/activation_loss/Mulloss/activation_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
f
loss/activation_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/activation_loss/Sum_1Sumactivation_sample_weightsloss/activation_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
~
loss/activation_loss/truedivRealDivloss/activation_loss/Sumloss/activation_loss/Sum_1*
_output_shapes
: *
T0
d
loss/activation_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/activation_loss/GreaterGreaterloss/activation_loss/Sum_1loss/activation_loss/zeros_like*
T0*
_output_shapes
: 
Ł
loss/activation_loss/SelectSelectloss/activation_loss/Greaterloss/activation_loss/truedivloss/activation_loss/zeros_like*
_output_shapes
: *
T0
_
loss/activation_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 

loss/activation_loss/Mean_2Meanloss/activation_loss/Selectloss/activation_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
loss/mulMul
loss/mul/xloss/activation_loss/Mean_2*
T0*
_output_shapes
: 

metrics/mean_squared_error/subSubactivation/Tanhactivation_target*
T0*:
_output_shapes(
&:$˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

!metrics/mean_squared_error/SquareSquaremetrics/mean_squared_error/sub*
T0*:
_output_shapes(
&:$˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
|
1metrics/mean_squared_error/Mean/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ň
metrics/mean_squared_error/MeanMean!metrics/mean_squared_error/Square1metrics/mean_squared_error/Mean/reduction_indices*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
u
 metrics/mean_squared_error/ConstConst*!
valueB"          *
dtype0*
_output_shapes
:
Ş
!metrics/mean_squared_error/Mean_1Meanmetrics/mean_squared_error/Mean metrics/mean_squared_error/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
}
training/Adam/gradients/ShapeConst*
_class
loc:@loss/mul*
valueB *
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 
Š
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/activation_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
š
Ftraining/Adam/gradients/loss/activation_loss/Mean_2_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/activation_loss/Mean_2*
valueB 

@training/Adam/gradients/loss/activation_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ftraining/Adam/gradients/loss/activation_loss/Mean_2_grad/Reshape/shape*
T0*.
_class$
" loc:@loss/activation_loss/Mean_2*
Tshape0*
_output_shapes
: 
ą
>training/Adam/gradients/loss/activation_loss/Mean_2_grad/ConstConst*.
_class$
" loc:@loss/activation_loss/Mean_2*
valueB *
dtype0*
_output_shapes
: 
Ş
=training/Adam/gradients/loss/activation_loss/Mean_2_grad/TileTile@training/Adam/gradients/loss/activation_loss/Mean_2_grad/Reshape>training/Adam/gradients/loss/activation_loss/Mean_2_grad/Const*
T0*.
_class$
" loc:@loss/activation_loss/Mean_2*
_output_shapes
: *

Tmultiples0
ľ
@training/Adam/gradients/loss/activation_loss/Mean_2_grad/Const_1Const*
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/activation_loss/Mean_2*
valueB
 *  ?

@training/Adam/gradients/loss/activation_loss/Mean_2_grad/truedivRealDiv=training/Adam/gradients/loss/activation_loss/Mean_2_grad/Tile@training/Adam/gradients/loss/activation_loss/Mean_2_grad/Const_1*
T0*.
_class$
" loc:@loss/activation_loss/Mean_2*
_output_shapes
: 
¸
Ctraining/Adam/gradients/loss/activation_loss/Select_grad/zeros_likeConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/activation_loss/Select*
valueB
 *    
ż
?training/Adam/gradients/loss/activation_loss/Select_grad/SelectSelectloss/activation_loss/Greater@training/Adam/gradients/loss/activation_loss/Mean_2_grad/truedivCtraining/Adam/gradients/loss/activation_loss/Select_grad/zeros_like*
T0*.
_class$
" loc:@loss/activation_loss/Select*
_output_shapes
: 
Á
Atraining/Adam/gradients/loss/activation_loss/Select_grad/Select_1Selectloss/activation_loss/GreaterCtraining/Adam/gradients/loss/activation_loss/Select_grad/zeros_like@training/Adam/gradients/loss/activation_loss/Mean_2_grad/truediv*
_output_shapes
: *
T0*.
_class$
" loc:@loss/activation_loss/Select
ł
?training/Adam/gradients/loss/activation_loss/truediv_grad/ShapeConst*/
_class%
#!loc:@loss/activation_loss/truediv*
valueB *
dtype0*
_output_shapes
: 
ľ
Atraining/Adam/gradients/loss/activation_loss/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
: */
_class%
#!loc:@loss/activation_loss/truediv*
valueB 
Ú
Otraining/Adam/gradients/loss/activation_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/loss/activation_loss/truediv_grad/ShapeAtraining/Adam/gradients/loss/activation_loss/truediv_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@loss/activation_loss/truediv
ű
Atraining/Adam/gradients/loss/activation_loss/truediv_grad/RealDivRealDiv?training/Adam/gradients/loss/activation_loss/Select_grad/Selectloss/activation_loss/Sum_1*
T0*/
_class%
#!loc:@loss/activation_loss/truediv*
_output_shapes
: 
Ç
=training/Adam/gradients/loss/activation_loss/truediv_grad/SumSumAtraining/Adam/gradients/loss/activation_loss/truediv_grad/RealDivOtraining/Adam/gradients/loss/activation_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@loss/activation_loss/truediv
Ź
Atraining/Adam/gradients/loss/activation_loss/truediv_grad/ReshapeReshape=training/Adam/gradients/loss/activation_loss/truediv_grad/Sum?training/Adam/gradients/loss/activation_loss/truediv_grad/Shape*
T0*/
_class%
#!loc:@loss/activation_loss/truediv*
Tshape0*
_output_shapes
: 
°
=training/Adam/gradients/loss/activation_loss/truediv_grad/NegNegloss/activation_loss/Sum*
T0*/
_class%
#!loc:@loss/activation_loss/truediv*
_output_shapes
: 
ű
Ctraining/Adam/gradients/loss/activation_loss/truediv_grad/RealDiv_1RealDiv=training/Adam/gradients/loss/activation_loss/truediv_grad/Negloss/activation_loss/Sum_1*
T0*/
_class%
#!loc:@loss/activation_loss/truediv*
_output_shapes
: 

Ctraining/Adam/gradients/loss/activation_loss/truediv_grad/RealDiv_2RealDivCtraining/Adam/gradients/loss/activation_loss/truediv_grad/RealDiv_1loss/activation_loss/Sum_1*
T0*/
_class%
#!loc:@loss/activation_loss/truediv*
_output_shapes
: 

=training/Adam/gradients/loss/activation_loss/truediv_grad/mulMul?training/Adam/gradients/loss/activation_loss/Select_grad/SelectCtraining/Adam/gradients/loss/activation_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0*/
_class%
#!loc:@loss/activation_loss/truediv
Ç
?training/Adam/gradients/loss/activation_loss/truediv_grad/Sum_1Sum=training/Adam/gradients/loss/activation_loss/truediv_grad/mulQtraining/Adam/gradients/loss/activation_loss/truediv_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@loss/activation_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
˛
Ctraining/Adam/gradients/loss/activation_loss/truediv_grad/Reshape_1Reshape?training/Adam/gradients/loss/activation_loss/truediv_grad/Sum_1Atraining/Adam/gradients/loss/activation_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*/
_class%
#!loc:@loss/activation_loss/truediv*
Tshape0
ş
Ctraining/Adam/gradients/loss/activation_loss/Sum_grad/Reshape/shapeConst*+
_class!
loc:@loss/activation_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
°
=training/Adam/gradients/loss/activation_loss/Sum_grad/ReshapeReshapeAtraining/Adam/gradients/loss/activation_loss/truediv_grad/ReshapeCtraining/Adam/gradients/loss/activation_loss/Sum_grad/Reshape/shape*
T0*+
_class!
loc:@loss/activation_loss/Sum*
Tshape0*
_output_shapes
:
Ŕ
;training/Adam/gradients/loss/activation_loss/Sum_grad/ShapeShapeloss/activation_loss/Mul*
_output_shapes
:*
T0*+
_class!
loc:@loss/activation_loss/Sum*
out_type0
Ť
:training/Adam/gradients/loss/activation_loss/Sum_grad/TileTile=training/Adam/gradients/loss/activation_loss/Sum_grad/Reshape;training/Adam/gradients/loss/activation_loss/Sum_grad/Shape*

Tmultiples0*
T0*+
_class!
loc:@loss/activation_loss/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
;training/Adam/gradients/loss/activation_loss/Mul_grad/ShapeShapeloss/activation_loss/Mean_1*
_output_shapes
:*
T0*+
_class!
loc:@loss/activation_loss/Mul*
out_type0
Ă
=training/Adam/gradients/loss/activation_loss/Mul_grad/Shape_1Shapeactivation_sample_weights*
T0*+
_class!
loc:@loss/activation_loss/Mul*
out_type0*
_output_shapes
:
Ę
Ktraining/Adam/gradients/loss/activation_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/loss/activation_loss/Mul_grad/Shape=training/Adam/gradients/loss/activation_loss/Mul_grad/Shape_1*
T0*+
_class!
loc:@loss/activation_loss/Mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ň
9training/Adam/gradients/loss/activation_loss/Mul_grad/MulMul:training/Adam/gradients/loss/activation_loss/Sum_grad/Tileactivation_sample_weights*
T0*+
_class!
loc:@loss/activation_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
9training/Adam/gradients/loss/activation_loss/Mul_grad/SumSum9training/Adam/gradients/loss/activation_loss/Mul_grad/MulKtraining/Adam/gradients/loss/activation_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/activation_loss/Mul*
_output_shapes
:
Š
=training/Adam/gradients/loss/activation_loss/Mul_grad/ReshapeReshape9training/Adam/gradients/loss/activation_loss/Mul_grad/Sum;training/Adam/gradients/loss/activation_loss/Mul_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@loss/activation_loss/Mul*
Tshape0
ö
;training/Adam/gradients/loss/activation_loss/Mul_grad/Mul_1Mulloss/activation_loss/Mean_1:training/Adam/gradients/loss/activation_loss/Sum_grad/Tile*
T0*+
_class!
loc:@loss/activation_loss/Mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
;training/Adam/gradients/loss/activation_loss/Mul_grad/Sum_1Sum;training/Adam/gradients/loss/activation_loss/Mul_grad/Mul_1Mtraining/Adam/gradients/loss/activation_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/activation_loss/Mul*
_output_shapes
:
Ż
?training/Adam/gradients/loss/activation_loss/Mul_grad/Reshape_1Reshape;training/Adam/gradients/loss/activation_loss/Mul_grad/Sum_1=training/Adam/gradients/loss/activation_loss/Mul_grad/Shape_1*
T0*+
_class!
loc:@loss/activation_loss/Mul*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
>training/Adam/gradients/loss/activation_loss/Mean_1_grad/ShapeShapeloss/activation_loss/Mean*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
out_type0*
_output_shapes
:
Ż
=training/Adam/gradients/loss/activation_loss/Mean_1_grad/SizeConst*
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/activation_loss/Mean_1*
value	B :

<training/Adam/gradients/loss/activation_loss/Mean_1_grad/addAdd-loss/activation_loss/Mean_1/reduction_indices=training/Adam/gradients/loss/activation_loss/Mean_1_grad/Size*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
:

<training/Adam/gradients/loss/activation_loss/Mean_1_grad/modFloorMod<training/Adam/gradients/loss/activation_loss/Mean_1_grad/add=training/Adam/gradients/loss/activation_loss/Mean_1_grad/Size*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
:
ş
@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape_1Const*.
_class$
" loc:@loss/activation_loss/Mean_1*
valueB:*
dtype0*
_output_shapes
:
ś
Dtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/range/startConst*.
_class$
" loc:@loss/activation_loss/Mean_1*
value	B : *
dtype0*
_output_shapes
: 
ś
Dtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/range/deltaConst*.
_class$
" loc:@loss/activation_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
ę
>training/Adam/gradients/loss/activation_loss/Mean_1_grad/rangeRangeDtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/range/start=training/Adam/gradients/loss/activation_loss/Mean_1_grad/SizeDtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/range/delta*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
:*

Tidx0
ľ
Ctraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Fill/valueConst*.
_class$
" loc:@loss/activation_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
ł
=training/Adam/gradients/loss/activation_loss/Mean_1_grad/FillFill@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape_1Ctraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Fill/value*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*

index_type0*
_output_shapes
:
˛
Ftraining/Adam/gradients/loss/activation_loss/Mean_1_grad/DynamicStitchDynamicStitch>training/Adam/gradients/loss/activation_loss/Mean_1_grad/range<training/Adam/gradients/loss/activation_loss/Mean_1_grad/mod>training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/activation_loss/Mean_1_grad/Fill*
N*
_output_shapes
:*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1
´
Btraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Maximum/yConst*.
_class$
" loc:@loss/activation_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
Ź
@training/Adam/gradients/loss/activation_loss/Mean_1_grad/MaximumMaximumFtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/DynamicStitchBtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Maximum/y*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
:
¤
Atraining/Adam/gradients/loss/activation_loss/Mean_1_grad/floordivFloorDiv>training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Maximum*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
:
Ř
@training/Adam/gradients/loss/activation_loss/Mean_1_grad/ReshapeReshape=training/Adam/gradients/loss/activation_loss/Mul_grad/ReshapeFtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/DynamicStitch*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
Tshape0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ô
=training/Adam/gradients/loss/activation_loss/Mean_1_grad/TileTile@training/Adam/gradients/loss/activation_loss/Mean_1_grad/ReshapeAtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/floordiv*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1
É
@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape_2Shapeloss/activation_loss/Mean*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
out_type0*
_output_shapes
:
Ë
@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape_3Shapeloss/activation_loss/Mean_1*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
out_type0*
_output_shapes
:
¸
>training/Adam/gradients/loss/activation_loss/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*.
_class$
" loc:@loss/activation_loss/Mean_1*
valueB: 
ľ
=training/Adam/gradients/loss/activation_loss/Mean_1_grad/ProdProd@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape_2>training/Adam/gradients/loss/activation_loss/Mean_1_grad/Const*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
: *
	keep_dims( *

Tidx0
ş
@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Const_1Const*.
_class$
" loc:@loss/activation_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
š
?training/Adam/gradients/loss/activation_loss/Mean_1_grad/Prod_1Prod@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Shape_3@training/Adam/gradients/loss/activation_loss/Mean_1_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1
ś
Dtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Maximum_1/yConst*.
_class$
" loc:@loss/activation_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
Ľ
Btraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Maximum_1Maximum?training/Adam/gradients/loss/activation_loss/Mean_1_grad/Prod_1Dtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Maximum_1/y*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
: 
Ł
Ctraining/Adam/gradients/loss/activation_loss/Mean_1_grad/floordiv_1FloorDiv=training/Adam/gradients/loss/activation_loss/Mean_1_grad/ProdBtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/Maximum_1*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*
_output_shapes
: 
ú
=training/Adam/gradients/loss/activation_loss/Mean_1_grad/CastCastCtraining/Adam/gradients/loss/activation_loss/Mean_1_grad/floordiv_1*

SrcT0*.
_class$
" loc:@loss/activation_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0
ą
@training/Adam/gradients/loss/activation_loss/Mean_1_grad/truedivRealDiv=training/Adam/gradients/loss/activation_loss/Mean_1_grad/Tile=training/Adam/gradients/loss/activation_loss/Mean_1_grad/Cast*
T0*.
_class$
" loc:@loss/activation_loss/Mean_1*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
<training/Adam/gradients/loss/activation_loss/Mean_grad/ShapeShapeloss/activation_loss/Square*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
out_type0*
_output_shapes
:
Ť
;training/Adam/gradients/loss/activation_loss/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@loss/activation_loss/Mean*
value	B :
ú
:training/Adam/gradients/loss/activation_loss/Mean_grad/addAdd+loss/activation_loss/Mean/reduction_indices;training/Adam/gradients/loss/activation_loss/Mean_grad/Size*
_output_shapes
: *
T0*,
_class"
 loc:@loss/activation_loss/Mean

:training/Adam/gradients/loss/activation_loss/Mean_grad/modFloorMod:training/Adam/gradients/loss/activation_loss/Mean_grad/add;training/Adam/gradients/loss/activation_loss/Mean_grad/Size*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
_output_shapes
: 
Ż
>training/Adam/gradients/loss/activation_loss/Mean_grad/Shape_1Const*,
_class"
 loc:@loss/activation_loss/Mean*
valueB *
dtype0*
_output_shapes
: 
˛
Btraining/Adam/gradients/loss/activation_loss/Mean_grad/range/startConst*,
_class"
 loc:@loss/activation_loss/Mean*
value	B : *
dtype0*
_output_shapes
: 
˛
Btraining/Adam/gradients/loss/activation_loss/Mean_grad/range/deltaConst*,
_class"
 loc:@loss/activation_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
ŕ
<training/Adam/gradients/loss/activation_loss/Mean_grad/rangeRangeBtraining/Adam/gradients/loss/activation_loss/Mean_grad/range/start;training/Adam/gradients/loss/activation_loss/Mean_grad/SizeBtraining/Adam/gradients/loss/activation_loss/Mean_grad/range/delta*,
_class"
 loc:@loss/activation_loss/Mean*
_output_shapes
:*

Tidx0
ą
Atraining/Adam/gradients/loss/activation_loss/Mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@loss/activation_loss/Mean*
value	B :
§
;training/Adam/gradients/loss/activation_loss/Mean_grad/FillFill>training/Adam/gradients/loss/activation_loss/Mean_grad/Shape_1Atraining/Adam/gradients/loss/activation_loss/Mean_grad/Fill/value*
T0*,
_class"
 loc:@loss/activation_loss/Mean*

index_type0*
_output_shapes
: 
Ś
Dtraining/Adam/gradients/loss/activation_loss/Mean_grad/DynamicStitchDynamicStitch<training/Adam/gradients/loss/activation_loss/Mean_grad/range:training/Adam/gradients/loss/activation_loss/Mean_grad/mod<training/Adam/gradients/loss/activation_loss/Mean_grad/Shape;training/Adam/gradients/loss/activation_loss/Mean_grad/Fill*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
N*
_output_shapes
:
°
@training/Adam/gradients/loss/activation_loss/Mean_grad/Maximum/yConst*,
_class"
 loc:@loss/activation_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
¤
>training/Adam/gradients/loss/activation_loss/Mean_grad/MaximumMaximumDtraining/Adam/gradients/loss/activation_loss/Mean_grad/DynamicStitch@training/Adam/gradients/loss/activation_loss/Mean_grad/Maximum/y*
_output_shapes
:*
T0*,
_class"
 loc:@loss/activation_loss/Mean

?training/Adam/gradients/loss/activation_loss/Mean_grad/floordivFloorDiv<training/Adam/gradients/loss/activation_loss/Mean_grad/Shape>training/Adam/gradients/loss/activation_loss/Mean_grad/Maximum*
_output_shapes
:*
T0*,
_class"
 loc:@loss/activation_loss/Mean
â
>training/Adam/gradients/loss/activation_loss/Mean_grad/ReshapeReshape@training/Adam/gradients/loss/activation_loss/Mean_1_grad/truedivDtraining/Adam/gradients/loss/activation_loss/Mean_grad/DynamicStitch*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
Tshape0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ů
;training/Adam/gradients/loss/activation_loss/Mean_grad/TileTile>training/Adam/gradients/loss/activation_loss/Mean_grad/Reshape?training/Adam/gradients/loss/activation_loss/Mean_grad/floordiv*
T0*,
_class"
 loc:@loss/activation_loss/Mean*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0
Ç
>training/Adam/gradients/loss/activation_loss/Mean_grad/Shape_2Shapeloss/activation_loss/Square*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
out_type0*
_output_shapes
:
Ĺ
>training/Adam/gradients/loss/activation_loss/Mean_grad/Shape_3Shapeloss/activation_loss/Mean*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
out_type0*
_output_shapes
:
´
<training/Adam/gradients/loss/activation_loss/Mean_grad/ConstConst*,
_class"
 loc:@loss/activation_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
­
;training/Adam/gradients/loss/activation_loss/Mean_grad/ProdProd>training/Adam/gradients/loss/activation_loss/Mean_grad/Shape_2<training/Adam/gradients/loss/activation_loss/Mean_grad/Const*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
ś
>training/Adam/gradients/loss/activation_loss/Mean_grad/Const_1Const*,
_class"
 loc:@loss/activation_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
ą
=training/Adam/gradients/loss/activation_loss/Mean_grad/Prod_1Prod>training/Adam/gradients/loss/activation_loss/Mean_grad/Shape_3>training/Adam/gradients/loss/activation_loss/Mean_grad/Const_1*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
˛
Btraining/Adam/gradients/loss/activation_loss/Mean_grad/Maximum_1/yConst*,
_class"
 loc:@loss/activation_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 

@training/Adam/gradients/loss/activation_loss/Mean_grad/Maximum_1Maximum=training/Adam/gradients/loss/activation_loss/Mean_grad/Prod_1Btraining/Adam/gradients/loss/activation_loss/Mean_grad/Maximum_1/y*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
_output_shapes
: 

Atraining/Adam/gradients/loss/activation_loss/Mean_grad/floordiv_1FloorDiv;training/Adam/gradients/loss/activation_loss/Mean_grad/Prod@training/Adam/gradients/loss/activation_loss/Mean_grad/Maximum_1*
T0*,
_class"
 loc:@loss/activation_loss/Mean*
_output_shapes
: 
ô
;training/Adam/gradients/loss/activation_loss/Mean_grad/CastCastAtraining/Adam/gradients/loss/activation_loss/Mean_grad/floordiv_1*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0*,
_class"
 loc:@loss/activation_loss/Mean
ś
>training/Adam/gradients/loss/activation_loss/Mean_grad/truedivRealDiv;training/Adam/gradients/loss/activation_loss/Mean_grad/Tile;training/Adam/gradients/loss/activation_loss/Mean_grad/Cast*
T0*,
_class"
 loc:@loss/activation_loss/Mean*:
_output_shapes(
&:$˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ô
>training/Adam/gradients/loss/activation_loss/Square_grad/ConstConst?^training/Adam/gradients/loss/activation_loss/Mean_grad/truediv*.
_class$
" loc:@loss/activation_loss/Square*
valueB
 *   @*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/activation_loss/Square_grad/MulMulloss/activation_loss/sub>training/Adam/gradients/loss/activation_loss/Square_grad/Const*:
_output_shapes(
&:$˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*.
_class$
" loc:@loss/activation_loss/Square
¸
>training/Adam/gradients/loss/activation_loss/Square_grad/Mul_1Mul>training/Adam/gradients/loss/activation_loss/Mean_grad/truediv<training/Adam/gradients/loss/activation_loss/Square_grad/Mul*
T0*.
_class$
" loc:@loss/activation_loss/Square*:
_output_shapes(
&:$˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ˇ
;training/Adam/gradients/loss/activation_loss/sub_grad/ShapeShapeactivation/Tanh*
T0*+
_class!
loc:@loss/activation_loss/sub*
out_type0*
_output_shapes
:
ť
=training/Adam/gradients/loss/activation_loss/sub_grad/Shape_1Shapeactivation_target*
T0*+
_class!
loc:@loss/activation_loss/sub*
out_type0*
_output_shapes
:
Ę
Ktraining/Adam/gradients/loss/activation_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/loss/activation_loss/sub_grad/Shape=training/Adam/gradients/loss/activation_loss/sub_grad/Shape_1*
T0*+
_class!
loc:@loss/activation_loss/sub*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ş
9training/Adam/gradients/loss/activation_loss/sub_grad/SumSum>training/Adam/gradients/loss/activation_loss/Square_grad/Mul_1Ktraining/Adam/gradients/loss/activation_loss/sub_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@loss/activation_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
=training/Adam/gradients/loss/activation_loss/sub_grad/ReshapeReshape9training/Adam/gradients/loss/activation_loss/sub_grad/Sum;training/Adam/gradients/loss/activation_loss/sub_grad/Shape*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@loss/activation_loss/sub*
Tshape0
ž
;training/Adam/gradients/loss/activation_loss/sub_grad/Sum_1Sum>training/Adam/gradients/loss/activation_loss/Square_grad/Mul_1Mtraining/Adam/gradients/loss/activation_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/activation_loss/sub
Í
9training/Adam/gradients/loss/activation_loss/sub_grad/NegNeg;training/Adam/gradients/loss/activation_loss/sub_grad/Sum_1*
T0*+
_class!
loc:@loss/activation_loss/sub*
_output_shapes
:
Ô
?training/Adam/gradients/loss/activation_loss/sub_grad/Reshape_1Reshape9training/Adam/gradients/loss/activation_loss/sub_grad/Neg=training/Adam/gradients/loss/activation_loss/sub_grad/Shape_1*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@loss/activation_loss/sub*
Tshape0
ń
5training/Adam/gradients/activation/Tanh_grad/TanhGradTanhGradactivation/Tanh=training/Adam/gradients/loss/activation_loss/sub_grad/Reshape*
T0*"
_class
loc:@activation/Tanh*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
4training/Adam/gradients/conv2d_17/Conv2D_grad/ShapeNShapeNleaky_re_lu_16/LeakyReluconv2d_17/Conv2D/ReadVariableOp*
T0*#
_class
loc:@conv2d_17/Conv2D*
out_type0*
N* 
_output_shapes
::
ľ
Atraining/Adam/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_17/Conv2D_grad/ShapeNconv2d_17/Conv2D/ReadVariableOp5training/Adam/gradients/activation/Tanh_grad/TanhGrad*
	dilations
*
T0*#
_class
loc:@conv2d_17/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
§
Btraining/Adam/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterleaky_re_lu_16/LeakyRelu6training/Adam/gradients/conv2d_17/Conv2D_grad/ShapeN:15training/Adam/gradients/activation/Tanh_grad/TanhGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0*#
_class
loc:@conv2d_17/Conv2D
Ä
;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/ShapeShapeleaky_re_lu_16/LeakyRelu/mul*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*
out_type0
ş
=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Shape_1Shapeconv2d_16/Conv2D*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*
out_type0*
_output_shapes
:
ë
=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Shape_2ShapeAtraining/Adam/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInput*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*
out_type0
ł
Atraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/zeros/ConstConst*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
Ŕ
;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/zerosFill=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Shape_2Atraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/zeros/Const*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*

index_type0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ë
Btraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_16/LeakyRelu/mulconv2d_16/Conv2D*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ę
Ktraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Shape=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
<training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/SelectSelectBtraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/GreaterEqualAtraining/Adam/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInput;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/zeros*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ő
>training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Select_1SelectBtraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/GreaterEqual;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/zerosAtraining/Adam/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInput*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¸
9training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/SumSum<training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/SelectKtraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu
ˇ
=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/ReshapeReshape9training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Sum;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Shape*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ž
;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Select_1Mtraining/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
˝
?training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Reshape_1Reshape;training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Sum_1=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Shape_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu*
Tshape0
ł
?training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/ShapeConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul*
valueB 
Â
Atraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Shape_1Shapeconv2d_16/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ú
Otraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/ShapeAtraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul

=training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/MulMul=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Reshapeconv2d_16/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ĺ
=training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/SumSum=training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/MulOtraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul
Ź
Atraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/ReshapeReshape=training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Sum?training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Shape*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

?training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_16/LeakyRelu/alpha=training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Reshape*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ë
?training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Sum_1Sum?training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Mul_1Qtraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul*
_output_shapes
:
Í
Ctraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Reshape_1Reshape?training/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Sum_1Atraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_16/LeakyRelu/mul*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

training/Adam/gradients/AddNAddN?training/Adam/gradients/leaky_re_lu_16/LeakyRelu_grad/Reshape_1Ctraining/Adam/gradients/leaky_re_lu_16/LeakyRelu/mul_grad/Reshape_1*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*+
_class!
loc:@leaky_re_lu_16/LeakyRelu
â
4training/Adam/gradients/conv2d_16/Conv2D_grad/ShapeNShapeNleaky_re_lu_15/LeakyReluconv2d_16/Conv2D/ReadVariableOp*
T0*#
_class
loc:@conv2d_16/Conv2D*
out_type0*
N* 
_output_shapes
::

Atraining/Adam/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_16/Conv2D_grad/ShapeNconv2d_16/Conv2D/ReadVariableOptraining/Adam/gradients/AddN*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*#
_class
loc:@conv2d_16/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

Btraining/Adam/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterleaky_re_lu_15/LeakyRelu6training/Adam/gradients/conv2d_16/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN*&
_output_shapes
:@ *
	dilations
*
T0*#
_class
loc:@conv2d_16/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ä
;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/ShapeShapeleaky_re_lu_15/LeakyRelu/mul*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
out_type0
ş
=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Shape_1Shapeconv2d_15/Conv2D*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
out_type0
ë
=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Shape_2ShapeAtraining/Adam/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInput*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
out_type0
ł
Atraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/zeros/ConstConst*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
Ŕ
;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/zerosFill=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Shape_2Atraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/zeros/Const*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*

index_type0
ë
Btraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_15/LeakyRelu/mulconv2d_15/Conv2D*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu
Ę
Ktraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Shape=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
<training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/SelectSelectBtraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/GreaterEqualAtraining/Adam/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInput;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/zeros*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu
ő
>training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Select_1SelectBtraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/GreaterEqual;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/zerosAtraining/Adam/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInput*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@
¸
9training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/SumSum<training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/SelectKtraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/ReshapeReshape9training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Sum;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Shape*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ž
;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Select_1Mtraining/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
˝
?training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Reshape_1Reshape;training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Sum_1=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Shape_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
Tshape0
ł
?training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/ShapeConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*
valueB 
Â
Atraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Shape_1Shapeconv2d_15/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ú
Otraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/ShapeAtraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/MulMul=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Reshapeconv2d_15/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ĺ
=training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/SumSum=training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/MulOtraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
Atraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/ReshapeReshape=training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Sum?training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Shape*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

?training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_15/LeakyRelu/alpha=training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Reshape*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul
Ë
?training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Sum_1Sum?training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Mul_1Qtraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Í
Ctraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Reshape_1Reshape?training/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Sum_1Atraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_15/LeakyRelu/mul*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@

training/Adam/gradients/AddN_1AddN?training/Adam/gradients/leaky_re_lu_15/LeakyRelu_grad/Reshape_1Ctraining/Adam/gradients/leaky_re_lu_15/LeakyRelu/mul_grad/Reshape_1*
T0*+
_class!
loc:@leaky_re_lu_15/LeakyRelu*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ţ
4training/Adam/gradients/conv2d_15/Conv2D_grad/ShapeNShapeNconcatenate_4/concatconv2d_15/Conv2D/ReadVariableOp*
T0*#
_class
loc:@conv2d_15/Conv2D*
out_type0*
N* 
_output_shapes
::

Atraining/Adam/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_15/Conv2D_grad/ShapeNconv2d_15/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙a*
	dilations
*
T0*#
_class
loc:@conv2d_15/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

Btraining/Adam/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_4/concat6training/Adam/gradients/conv2d_15/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_1*
paddingSAME*&
_output_shapes
:a@*
	dilations
*
T0*#
_class
loc:@conv2d_15/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ą
6training/Adam/gradients/concatenate_4/concat_grad/RankConst*
dtype0*
_output_shapes
: *'
_class
loc:@concatenate_4/concat*
value	B :
Ţ
5training/Adam/gradients/concatenate_4/concat_grad/modFloorModconcatenate_4/concat/axis6training/Adam/gradients/concatenate_4/concat_grad/Rank*
T0*'
_class
loc:@concatenate_4/concat*
_output_shapes
: 
Ĺ
7training/Adam/gradients/concatenate_4/concat_grad/ShapeShape%up_sampling2d_4/ResizeNearestNeighbor*
T0*'
_class
loc:@concatenate_4/concat*
out_type0*
_output_shapes
:
Ű
8training/Adam/gradients/concatenate_4/concat_grad/ShapeNShapeN%up_sampling2d_4/ResizeNearestNeighborimg*
T0*'
_class
loc:@concatenate_4/concat*
out_type0*
N* 
_output_shapes
::
Ď
>training/Adam/gradients/concatenate_4/concat_grad/ConcatOffsetConcatOffset5training/Adam/gradients/concatenate_4/concat_grad/mod8training/Adam/gradients/concatenate_4/concat_grad/ShapeN:training/Adam/gradients/concatenate_4/concat_grad/ShapeN:1*'
_class
loc:@concatenate_4/concat*
N* 
_output_shapes
::
ď
7training/Adam/gradients/concatenate_4/concat_grad/SliceSliceAtraining/Adam/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropInput>training/Adam/gradients/concatenate_4/concat_grad/ConcatOffset8training/Adam/gradients/concatenate_4/concat_grad/ShapeN*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
Index0*
T0*'
_class
loc:@concatenate_4/concat
ő
9training/Adam/gradients/concatenate_4/concat_grad/Slice_1SliceAtraining/Adam/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/concatenate_4/concat_grad/ConcatOffset:1:training/Adam/gradients/concatenate_4/concat_grad/ShapeN:1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0*'
_class
loc:@concatenate_4/concat
ě
atraining/Adam/gradients/up_sampling2d_4/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*8
_class.
,*loc:@up_sampling2d_4/ResizeNearestNeighbor*
valueB"      *
dtype0*
_output_shapes
:
 
\training/Adam/gradients/up_sampling2d_4/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad7training/Adam/gradients/concatenate_4/concat_grad/Sliceatraining/Adam/gradients/up_sampling2d_4/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
align_corners( *
T0*8
_class.
,*loc:@up_sampling2d_4/ResizeNearestNeighbor
Ä
;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/ShapeShapeleaky_re_lu_14/LeakyRelu/mul*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
out_type0*
_output_shapes
:
ş
=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Shape_1Shapeconv2d_14/Conv2D*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
out_type0

=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Shape_2Shape\training/Adam/gradients/up_sampling2d_4/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
out_type0
ł
Atraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
valueB
 *    
Ŕ
;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/zerosFill=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Shape_2Atraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/zeros/Const*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*

index_type0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ë
Btraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_14/LeakyRelu/mulconv2d_14/Conv2D*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu
Ę
Ktraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Shape=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

<training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/SelectSelectBtraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/GreaterEqual\training/Adam/gradients/up_sampling2d_4/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/zeros*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`

>training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Select_1SelectBtraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/GreaterEqual;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/zeros\training/Adam/gradients/up_sampling2d_4/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu
¸
9training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/SumSum<training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/SelectKtraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
_output_shapes
:
ˇ
=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/ReshapeReshape9training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Sum;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Shape*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ž
;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Select_1Mtraining/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu
˝
?training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Reshape_1Reshape;training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Sum_1=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ł
?training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/ShapeConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*
valueB 
Â
Atraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Shape_1Shapeconv2d_14/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ú
Otraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/ShapeAtraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/MulMul=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Reshapeconv2d_14/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ĺ
=training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/SumSum=training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/MulOtraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*
_output_shapes
:
Ź
Atraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/ReshapeReshape=training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Sum?training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Shape*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

?training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_14/LeakyRelu/alpha=training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Reshape*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ë
?training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Sum_1Sum?training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Mul_1Qtraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Í
Ctraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Reshape_1Reshape?training/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Sum_1Atraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_14/LeakyRelu/mul*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`

training/Adam/gradients/AddN_2AddN?training/Adam/gradients/leaky_re_lu_14/LeakyRelu_grad/Reshape_1Ctraining/Adam/gradients/leaky_re_lu_14/LeakyRelu/mul_grad/Reshape_1*
T0*+
_class!
loc:@leaky_re_lu_14/LeakyRelu*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
â
4training/Adam/gradients/conv2d_14/Conv2D_grad/ShapeNShapeNleaky_re_lu_13/LeakyReluconv2d_14/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*#
_class
loc:@conv2d_14/Conv2D*
out_type0

Atraining/Adam/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_14/Conv2D_grad/ShapeNconv2d_14/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_2*
	dilations
*
T0*#
_class
loc:@conv2d_14/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`

Btraining/Adam/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterleaky_re_lu_13/LeakyRelu6training/Adam/gradients/conv2d_14/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_2*
	dilations
*
T0*#
_class
loc:@conv2d_14/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:``
Ä
;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/ShapeShapeleaky_re_lu_13/LeakyRelu/mul*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
out_type0*
_output_shapes
:
ş
=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Shape_1Shapeconv2d_13/Conv2D*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
out_type0
ë
=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Shape_2ShapeAtraining/Adam/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInput*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
out_type0*
_output_shapes
:
ł
Atraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
valueB
 *    
Ŕ
;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/zerosFill=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Shape_2Atraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/zeros/Const*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*

index_type0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ë
Btraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_13/LeakyRelu/mulconv2d_13/Conv2D*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ę
Ktraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Shape=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
<training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/SelectSelectBtraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/GreaterEqualAtraining/Adam/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInput;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/zeros*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ő
>training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Select_1SelectBtraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/GreaterEqual;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/zerosAtraining/Adam/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInput*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
¸
9training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/SumSum<training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/SelectKtraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/ReshapeReshape9training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Sum;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Shape*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ž
;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Select_1Mtraining/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
˝
?training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Reshape_1Reshape;training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Sum_1=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ł
?training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/ShapeConst*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
Â
Atraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Shape_1Shapeconv2d_13/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ú
Otraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/ShapeAtraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/MulMul=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Reshapeconv2d_13/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ĺ
=training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/SumSum=training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/MulOtraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
Atraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/ReshapeReshape=training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Sum?training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Shape*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

?training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_13/LeakyRelu/alpha=training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Reshape*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ë
?training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Sum_1Sum?training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Mul_1Qtraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*
_output_shapes
:
Í
Ctraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Reshape_1Reshape?training/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Sum_1Atraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_13/LeakyRelu/mul*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`

training/Adam/gradients/AddN_3AddN?training/Adam/gradients/leaky_re_lu_13/LeakyRelu_grad/Reshape_1Ctraining/Adam/gradients/leaky_re_lu_13/LeakyRelu/mul_grad/Reshape_1*
T0*+
_class!
loc:@leaky_re_lu_13/LeakyRelu*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ţ
4training/Adam/gradients/conv2d_13/Conv2D_grad/ShapeNShapeNconcatenate_3/concatconv2d_13/Conv2D/ReadVariableOp*
T0*#
_class
loc:@conv2d_13/Conv2D*
out_type0*
N* 
_output_shapes
::

Atraining/Adam/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_13/Conv2D_grad/ShapeNconv2d_13/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_3*
paddingSAME*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*#
_class
loc:@conv2d_13/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(

Btraining/Adam/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_3/concat6training/Adam/gradients/conv2d_13/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_3*
T0*#
_class
loc:@conv2d_13/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:`*
	dilations

Ą
6training/Adam/gradients/concatenate_3/concat_grad/RankConst*'
_class
loc:@concatenate_3/concat*
value	B :*
dtype0*
_output_shapes
: 
Ţ
5training/Adam/gradients/concatenate_3/concat_grad/modFloorModconcatenate_3/concat/axis6training/Adam/gradients/concatenate_3/concat_grad/Rank*
T0*'
_class
loc:@concatenate_3/concat*
_output_shapes
: 
Ĺ
7training/Adam/gradients/concatenate_3/concat_grad/ShapeShape%up_sampling2d_3/ResizeNearestNeighbor*
T0*'
_class
loc:@concatenate_3/concat*
out_type0*
_output_shapes
:
í
8training/Adam/gradients/concatenate_3/concat_grad/ShapeNShapeN%up_sampling2d_3/ResizeNearestNeighbormax_pooling2d/MaxPool*
T0*'
_class
loc:@concatenate_3/concat*
out_type0*
N* 
_output_shapes
::
Ď
>training/Adam/gradients/concatenate_3/concat_grad/ConcatOffsetConcatOffset5training/Adam/gradients/concatenate_3/concat_grad/mod8training/Adam/gradients/concatenate_3/concat_grad/ShapeN:training/Adam/gradients/concatenate_3/concat_grad/ShapeN:1*'
_class
loc:@concatenate_3/concat*
N* 
_output_shapes
::
ď
7training/Adam/gradients/concatenate_3/concat_grad/SliceSliceAtraining/Adam/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropInput>training/Adam/gradients/concatenate_3/concat_grad/ConcatOffset8training/Adam/gradients/concatenate_3/concat_grad/ShapeN*
Index0*
T0*'
_class
loc:@concatenate_3/concat*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ő
9training/Adam/gradients/concatenate_3/concat_grad/Slice_1SliceAtraining/Adam/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/concatenate_3/concat_grad/ConcatOffset:1:training/Adam/gradients/concatenate_3/concat_grad/ShapeN:1*
Index0*
T0*'
_class
loc:@concatenate_3/concat*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ě
atraining/Adam/gradients/up_sampling2d_3/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@up_sampling2d_3/ResizeNearestNeighbor*
valueB"@   @   

\training/Adam/gradients/up_sampling2d_3/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad7training/Adam/gradients/concatenate_3/concat_grad/Sliceatraining/Adam/gradients/up_sampling2d_3/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
align_corners( *
T0*8
_class.
,*loc:@up_sampling2d_3/ResizeNearestNeighbor
Ä
;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/ShapeShapeleaky_re_lu_12/LeakyRelu/mul*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*
out_type0*
_output_shapes
:
ş
=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Shape_1Shapeconv2d_12/Conv2D*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*
out_type0

=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Shape_2Shape\training/Adam/gradients/up_sampling2d_3/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*
out_type0*
_output_shapes
:
ł
Atraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *+
_class!
loc:@leaky_re_lu_12/LeakyRelu*
valueB
 *    
ž
;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/zerosFill=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Shape_2Atraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/zeros/Const*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*

index_type0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
é
Btraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_12/LeakyRelu/mulconv2d_12/Conv2D*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ę
Ktraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Shape=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

<training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/SelectSelectBtraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/GreaterEqual\training/Adam/gradients/up_sampling2d_3/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/zeros*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`

>training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Select_1SelectBtraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/GreaterEqual;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/zeros\training/Adam/gradients/up_sampling2d_3/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
¸
9training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/SumSum<training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/SelectKtraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*
_output_shapes
:
ľ
=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/ReshapeReshape9training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Sum;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*
Tshape0
ž
;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Select_1Mtraining/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu
ť
?training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Reshape_1Reshape;training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Sum_1=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
ł
?training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/ShapeConst*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
Â
Atraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Shape_1Shapeconv2d_12/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ú
Otraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/ShapeAtraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/MulMul=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Reshapeconv2d_12/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ĺ
=training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/SumSum=training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/MulOtraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
Atraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/ReshapeReshape=training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Sum?training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Shape*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

?training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_12/LeakyRelu/alpha=training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Reshape*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ë
?training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Sum_1Sum?training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Mul_1Qtraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul
Ë
Ctraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Reshape_1Reshape?training/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Sum_1Atraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_12/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`

training/Adam/gradients/AddN_4AddN?training/Adam/gradients/leaky_re_lu_12/LeakyRelu_grad/Reshape_1Ctraining/Adam/gradients/leaky_re_lu_12/LeakyRelu/mul_grad/Reshape_1*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
T0*+
_class!
loc:@leaky_re_lu_12/LeakyRelu
â
4training/Adam/gradients/conv2d_12/Conv2D_grad/ShapeNShapeNleaky_re_lu_11/LeakyReluconv2d_12/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*#
_class
loc:@conv2d_12/Conv2D*
out_type0

Atraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_12/Conv2D_grad/ShapeNconv2d_12/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_4*
	dilations
*
T0*#
_class
loc:@conv2d_12/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`

Btraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterleaky_re_lu_11/LeakyRelu6training/Adam/gradients/conv2d_12/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_4*
	dilations
*
T0*#
_class
loc:@conv2d_12/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:``
Ä
;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/ShapeShapeleaky_re_lu_11/LeakyRelu/mul*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
out_type0*
_output_shapes
:
ş
=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Shape_1Shapeconv2d_11/Conv2D*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
out_type0*
_output_shapes
:
ë
=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Shape_2ShapeAtraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInput*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
out_type0*
_output_shapes
:
ł
Atraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/zeros/ConstConst*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ž
;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/zerosFill=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Shape_2Atraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/zeros/Const*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*

index_type0
é
Btraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_11/LeakyRelu/mulconv2d_11/Conv2D*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ę
Ktraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Shape=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ń
<training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/SelectSelectBtraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/GreaterEqualAtraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInput;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/zeros*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
ó
>training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Select_1SelectBtraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/GreaterEqual;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/zerosAtraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInput*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
¸
9training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/SumSum<training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/SelectKtraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
_output_shapes
:
ľ
=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/ReshapeReshape9training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Sum;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Shape*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
ž
;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Select_1Mtraining/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ť
?training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Reshape_1Reshape;training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Sum_1=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
ł
?training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/ShapeConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*
valueB 
Â
Atraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Shape_1Shapeconv2d_11/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ú
Otraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/ShapeAtraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/MulMul=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Reshapeconv2d_11/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ĺ
=training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/SumSum=training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/MulOtraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*
_output_shapes
:
Ź
Atraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/ReshapeReshape=training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Sum?training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Shape*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

?training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_11/LeakyRelu/alpha=training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Reshape*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ë
?training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Sum_1Sum?training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Mul_1Qtraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ë
Ctraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Reshape_1Reshape?training/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Sum_1Atraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_11/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`

training/Adam/gradients/AddN_5AddN?training/Adam/gradients/leaky_re_lu_11/LeakyRelu_grad/Reshape_1Ctraining/Adam/gradients/leaky_re_lu_11/LeakyRelu/mul_grad/Reshape_1*
T0*+
_class!
loc:@leaky_re_lu_11/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`
Ţ
4training/Adam/gradients/conv2d_11/Conv2D_grad/ShapeNShapeNconcatenate_2/concatconv2d_11/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*#
_class
loc:@conv2d_11/Conv2D*
out_type0

Atraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_11/Conv2D_grad/ShapeNconv2d_11/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_5*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

Btraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_2/concat6training/Adam/gradients/conv2d_11/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_5*
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:`
Ą
6training/Adam/gradients/concatenate_2/concat_grad/RankConst*
dtype0*
_output_shapes
: *'
_class
loc:@concatenate_2/concat*
value	B :
Ţ
5training/Adam/gradients/concatenate_2/concat_grad/modFloorModconcatenate_2/concat/axis6training/Adam/gradients/concatenate_2/concat_grad/Rank*
T0*'
_class
loc:@concatenate_2/concat*
_output_shapes
: 
Ĺ
7training/Adam/gradients/concatenate_2/concat_grad/ShapeShape%up_sampling2d_2/ResizeNearestNeighbor*
T0*'
_class
loc:@concatenate_2/concat*
out_type0*
_output_shapes
:
ď
8training/Adam/gradients/concatenate_2/concat_grad/ShapeNShapeN%up_sampling2d_2/ResizeNearestNeighbormax_pooling2d_1/MaxPool*
N* 
_output_shapes
::*
T0*'
_class
loc:@concatenate_2/concat*
out_type0
Ď
>training/Adam/gradients/concatenate_2/concat_grad/ConcatOffsetConcatOffset5training/Adam/gradients/concatenate_2/concat_grad/mod8training/Adam/gradients/concatenate_2/concat_grad/ShapeN:training/Adam/gradients/concatenate_2/concat_grad/ShapeN:1*
N* 
_output_shapes
::*'
_class
loc:@concatenate_2/concat
í
7training/Adam/gradients/concatenate_2/concat_grad/SliceSliceAtraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInput>training/Adam/gradients/concatenate_2/concat_grad/ConcatOffset8training/Adam/gradients/concatenate_2/concat_grad/ShapeN*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@`*
Index0*
T0*'
_class
loc:@concatenate_2/concat
ó
9training/Adam/gradients/concatenate_2/concat_grad/Slice_1SliceAtraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/concatenate_2/concat_grad/ConcatOffset:1:training/Adam/gradients/concatenate_2/concat_grad/ShapeN:1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0*
Index0*
T0*'
_class
loc:@concatenate_2/concat
ě
atraining/Adam/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@up_sampling2d_2/ResizeNearestNeighbor*
valueB"        

\training/Adam/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad7training/Adam/gradients/concatenate_2/concat_grad/Sliceatraining/Adam/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*
align_corners( *
T0*8
_class.
,*loc:@up_sampling2d_2/ResizeNearestNeighbor*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ä
;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/ShapeShapeleaky_re_lu_10/LeakyRelu/mul*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*
out_type0*
_output_shapes
:
ş
=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Shape_1Shapeconv2d_10/Conv2D*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*
out_type0*
_output_shapes
:

=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Shape_2Shape\training/Adam/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
_output_shapes
:*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*
out_type0
ł
Atraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/zeros/ConstConst*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ž
;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/zerosFill=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Shape_2Atraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/zeros/Const*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*

index_type0
é
Btraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_10/LeakyRelu/mulconv2d_10/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu
Ę
Ktraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Shape=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Shape_1*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

<training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/SelectSelectBtraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/GreaterEqual\training/Adam/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/zeros*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

>training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Select_1SelectBtraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/GreaterEqual;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/zeros\training/Adam/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
¸
9training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/SumSum<training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/SelectKtraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu
ľ
=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/ReshapeReshape9training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Sum;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Shape*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ž
;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Select_1Mtraining/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu
ť
?training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Reshape_1Reshape;training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Sum_1=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Shape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*
Tshape0
ł
?training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/ShapeConst*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
Â
Atraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Shape_1Shapeconv2d_10/Conv2D*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ú
Otraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/ShapeAtraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/MulMul=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Reshapeconv2d_10/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul
Ĺ
=training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/SumSum=training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/MulOtraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
Atraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/ReshapeReshape=training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Sum?training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Shape*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

?training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_10/LeakyRelu/alpha=training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Reshape*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ë
?training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Sum_1Sum?training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Mul_1Qtraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ë
Ctraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Reshape_1Reshape?training/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Sum_1Atraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Shape_1*
T0*/
_class%
#!loc:@leaky_re_lu_10/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

training/Adam/gradients/AddN_6AddN?training/Adam/gradients/leaky_re_lu_10/LeakyRelu_grad/Reshape_1Ctraining/Adam/gradients/leaky_re_lu_10/LeakyRelu/mul_grad/Reshape_1*
T0*+
_class!
loc:@leaky_re_lu_10/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
á
4training/Adam/gradients/conv2d_10/Conv2D_grad/ShapeNShapeNleaky_re_lu_9/LeakyReluconv2d_10/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*#
_class
loc:@conv2d_10/Conv2D*
out_type0

Atraining/Adam/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_10/Conv2D_grad/ShapeNconv2d_10/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_6*
	dilations
*
T0*#
_class
loc:@conv2d_10/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

Btraining/Adam/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterleaky_re_lu_9/LeakyRelu6training/Adam/gradients/conv2d_10/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_6*&
_output_shapes
:``*
	dilations
*
T0*#
_class
loc:@conv2d_10/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Á
:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/ShapeShapeleaky_re_lu_9/LeakyRelu/mul*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*
out_type0*
_output_shapes
:
ˇ
<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Shape_1Shapeconv2d_9/Conv2D*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*
out_type0*
_output_shapes
:
é
<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Shape_2ShapeAtraining/Adam/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInput*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*
out_type0*
_output_shapes
:
ą
@training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/zeros/ConstConst*
dtype0*
_output_shapes
: **
_class 
loc:@leaky_re_lu_9/LeakyRelu*
valueB
 *    
ş
:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/zeros/Const*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*

index_type0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ĺ
Atraining/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_9/LeakyRelu/mulconv2d_9/Conv2D*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ć
Jtraining/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu
í
;training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/GreaterEqualAtraining/Adam/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInput:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/zeros*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu
ď
=training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/zerosAtraining/Adam/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu
´
8training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu
ą
<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*
Tshape0
ş
:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
>training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ą
>training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Shape_1Shapeconv2d_9/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ü
<training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Reshapeconv2d_9/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Á
<training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
¨
@training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Shape*
_output_shapes
: *
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*
Tshape0

>training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_9/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ç
>training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*
_output_shapes
:
Ç
Btraining/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_9/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

training/Adam/gradients/AddN_7AddN>training/Adam/gradients/leaky_re_lu_9/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_9/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_9/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ű
3training/Adam/gradients/conv2d_9/Conv2D_grad/ShapeNShapeNconcatenate_1/concatconv2d_9/Conv2D/ReadVariableOp*
T0*"
_class
loc:@conv2d_9/Conv2D*
out_type0*
N* 
_output_shapes
::

@training/Adam/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_9/Conv2D_grad/ShapeNconv2d_9/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_7*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
	dilations
*
T0*"
_class
loc:@conv2d_9/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

Atraining/Adam/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_1/concat5training/Adam/gradients/conv2d_9/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_7*'
_output_shapes
:`*
	dilations
*
T0*"
_class
loc:@conv2d_9/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ą
6training/Adam/gradients/concatenate_1/concat_grad/RankConst*'
_class
loc:@concatenate_1/concat*
value	B :*
dtype0*
_output_shapes
: 
Ţ
5training/Adam/gradients/concatenate_1/concat_grad/modFloorModconcatenate_1/concat/axis6training/Adam/gradients/concatenate_1/concat_grad/Rank*
T0*'
_class
loc:@concatenate_1/concat*
_output_shapes
: 
Ĺ
7training/Adam/gradients/concatenate_1/concat_grad/ShapeShape%up_sampling2d_1/ResizeNearestNeighbor*
T0*'
_class
loc:@concatenate_1/concat*
out_type0*
_output_shapes
:
ď
8training/Adam/gradients/concatenate_1/concat_grad/ShapeNShapeN%up_sampling2d_1/ResizeNearestNeighbormax_pooling2d_2/MaxPool*
T0*'
_class
loc:@concatenate_1/concat*
out_type0*
N* 
_output_shapes
::
Ď
>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffsetConcatOffset5training/Adam/gradients/concatenate_1/concat_grad/mod8training/Adam/gradients/concatenate_1/concat_grad/ShapeN:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
ě
7training/Adam/gradients/concatenate_1/concat_grad/SliceSlice@training/Adam/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInput>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset8training/Adam/gradients/concatenate_1/concat_grad/ShapeN*
Index0*
T0*'
_class
loc:@concatenate_1/concat*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ň
9training/Adam/gradients/concatenate_1/concat_grad/Slice_1Slice@training/Adam/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset:1:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1*
Index0*
T0*'
_class
loc:@concatenate_1/concat*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
ě
atraining/Adam/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*8
_class.
,*loc:@up_sampling2d_1/ResizeNearestNeighbor*
valueB"      *
dtype0*
_output_shapes
:

\training/Adam/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad7training/Adam/gradients/concatenate_1/concat_grad/Sliceatraining/Adam/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*
align_corners( *
T0*8
_class.
,*loc:@up_sampling2d_1/ResizeNearestNeighbor*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Á
:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/ShapeShapeleaky_re_lu_8/LeakyRelu/mul*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
out_type0*
_output_shapes
:
ˇ
<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Shape_1Shapeconv2d_8/Conv2D*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
out_type0*
_output_shapes
:

<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Shape_2Shape\training/Adam/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
out_type0*
_output_shapes
:
ą
@training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/zeros/ConstConst**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ş
:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/zeros/Const*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*

index_type0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ĺ
Atraining/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_8/LeakyRelu/mulconv2d_8/Conv2D*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ć
Jtraining/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

;training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/GreaterEqual\training/Adam/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/zeros*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

=training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/zeros\training/Adam/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
´
8training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/BroadcastGradientArgs*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ą
<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Shape*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ş
:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu
ˇ
>training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ą
>training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Shape_1Shapeconv2d_8/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul
ü
<training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Reshapeconv2d_8/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Á
<training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
¨
@training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Shape*
_output_shapes
: *
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*
Tshape0

>training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_8/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ç
>training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ç
Btraining/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_8/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

training/Adam/gradients/AddN_8AddN>training/Adam/gradients/leaky_re_lu_8/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_8/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_8/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ţ
3training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNleaky_re_lu_7/LeakyReluconv2d_8/Conv2D/ReadVariableOp*
T0*"
_class
loc:@conv2d_8/Conv2D*
out_type0*
N* 
_output_shapes
::

@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_8*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`

Atraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterleaky_re_lu_7/LeakyRelu5training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_8*&
_output_shapes
:``*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Á
:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/ShapeShapeleaky_re_lu_7/LeakyRelu/mul*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
out_type0*
_output_shapes
:
ˇ
<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Shape_1Shapeconv2d_7/Conv2D*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
out_type0
č
<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Shape_2Shape@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
out_type0
ą
@training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/zeros/ConstConst**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ş
:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/zeros/Const*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*

index_type0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ĺ
Atraining/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_7/LeakyRelu/mulconv2d_7/Conv2D*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ć
Jtraining/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu
ě
;training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/GreaterEqual@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/zeros*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
î
=training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/zeros@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
´
8training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/BroadcastGradientArgs*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ą
<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Shape*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
ş
:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
>training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Shape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
Tshape0
ą
>training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Shape_1Shapeconv2d_7/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ü
<training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Reshapeconv2d_7/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Á
<training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
¨
@training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Shape*
_output_shapes
: *
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*
Tshape0

>training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_7/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ç
>training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*
_output_shapes
:
Ç
Btraining/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Shape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
T0*.
_class$
" loc:@leaky_re_lu_7/LeakyRelu/mul*
Tshape0

training/Adam/gradients/AddN_9AddN>training/Adam/gradients/leaky_re_lu_7/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_7/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_7/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ů
3training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconcatenate/concatconv2d_7/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*"
_class
loc:@conv2d_7/Conv2D*
out_type0

@training/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_9*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

Atraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate/concat5training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_9*&
_output_shapes
:``*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

4training/Adam/gradients/concatenate/concat_grad/RankConst*%
_class
loc:@concatenate/concat*
value	B :*
dtype0*
_output_shapes
: 
Ö
3training/Adam/gradients/concatenate/concat_grad/modFloorModconcatenate/concat/axis4training/Adam/gradients/concatenate/concat_grad/Rank*
T0*%
_class
loc:@concatenate/concat*
_output_shapes
: 
ż
5training/Adam/gradients/concatenate/concat_grad/ShapeShape#up_sampling2d/ResizeNearestNeighbor*
T0*%
_class
loc:@concatenate/concat*
out_type0*
_output_shapes
:
é
6training/Adam/gradients/concatenate/concat_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighbormax_pooling2d_3/MaxPool*
T0*%
_class
loc:@concatenate/concat*
out_type0*
N* 
_output_shapes
::
Ĺ
<training/Adam/gradients/concatenate/concat_grad/ConcatOffsetConcatOffset3training/Adam/gradients/concatenate/concat_grad/mod6training/Adam/gradients/concatenate/concat_grad/ShapeN8training/Adam/gradients/concatenate/concat_grad/ShapeN:1*%
_class
loc:@concatenate/concat*
N* 
_output_shapes
::
ä
5training/Adam/gradients/concatenate/concat_grad/SliceSlice@training/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInput<training/Adam/gradients/concatenate/concat_grad/ConcatOffset6training/Adam/gradients/concatenate/concat_grad/ShapeN*
Index0*
T0*%
_class
loc:@concatenate/concat*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ę
7training/Adam/gradients/concatenate/concat_grad/Slice_1Slice@training/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInput>training/Adam/gradients/concatenate/concat_grad/ConcatOffset:18training/Adam/gradients/concatenate/concat_grad/ShapeN:1*
Index0*
T0*%
_class
loc:@concatenate/concat*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
č
_training/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*
valueB"      *
dtype0*
_output_shapes
:

Ztraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad5training/Adam/gradients/concatenate/concat_grad/Slice_training/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
align_corners( *
T0*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor
Á
:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/ShapeShapeleaky_re_lu_6/LeakyRelu/mul*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
out_type0
ˇ
<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Shape_1Shapeconv2d_6/Conv2D*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
out_type0*
_output_shapes
:

<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Shape_2ShapeZtraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
out_type0*
_output_shapes
:
ą
@training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/zeros/ConstConst**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ş
:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/zeros/Const*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*

index_type0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ĺ
Atraining/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_6/LeakyRelu/mulconv2d_6/Conv2D*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ć
Jtraining/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

;training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/GreaterEqualZtraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/zeros*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu

=training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/zerosZtraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
´
8training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
_output_shapes
:
ą
<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
Tshape0
ş
:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
>training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ą
>training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Shape_1Shapeconv2d_6/Conv2D*
_output_shapes
:*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul*
out_type0
Ö
Ntraining/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul
ü
<training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Reshapeconv2d_6/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul
Á
<training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul
¨
@training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Shape*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

>training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_6/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ç
>training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ç
Btraining/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_6/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0

training/Adam/gradients/AddN_10AddN>training/Adam/gradients/leaky_re_lu_6/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_6/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_6/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ţ
3training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeNShapeNmax_pooling2d_4/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
T0*"
_class
loc:@conv2d_6/Conv2D*
out_type0*
N* 
_output_shapes
::

@training/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_10*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D

Atraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_4/MaxPool5training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_10*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00
ü
@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGradleaky_re_lu_5/LeakyRelumax_pooling2d_4/MaxPool@training/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*
T0**
_class 
loc:@max_pooling2d_4/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Á
:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/ShapeShapeleaky_re_lu_5/LeakyRelu/mul*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
out_type0*
_output_shapes
:
ˇ
<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Shape_1Shapeconv2d_5/Conv2D*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
out_type0*
_output_shapes
:
č
<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Shape_2Shape@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGrad*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
out_type0*
_output_shapes
:
ą
@training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/zeros/ConstConst**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ş
:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/zeros/Const*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*

index_type0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ĺ
Atraining/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_5/LeakyRelu/mulconv2d_5/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu
Ć
Jtraining/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ě
;training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/GreaterEqual@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGrad:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/zeros*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
î
=training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/zeros@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu
´
8training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/BroadcastGradientArgs*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ą
<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
Tshape0
ş
:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
_output_shapes
:
ˇ
>training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ą
>training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Shape_1Shapeconv2d_5/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ü
<training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Reshapeconv2d_5/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul
Á
<training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul
¨
@training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Shape*
_output_shapes
: *
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul*
Tshape0

>training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_5/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul
Ç
>training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ç
Btraining/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Shape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*.
_class$
" loc:@leaky_re_lu_5/LeakyRelu/mul*
Tshape0

training/Adam/gradients/AddN_11AddN>training/Adam/gradients/leaky_re_lu_5/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_5/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_5/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ţ
3training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeNShapeNmax_pooling2d_3/MaxPoolconv2d_5/Conv2D/ReadVariableOp*
T0*"
_class
loc:@conv2d_5/Conv2D*
out_type0*
N* 
_output_shapes
::

@training/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_11*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0

Atraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_3/MaxPool5training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_11*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00*
	dilations


training/Adam/gradients/AddN_12AddN7training/Adam/gradients/concatenate/concat_grad/Slice_1@training/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*
T0*%
_class
loc:@concatenate/concat*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ű
@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradleaky_re_lu_4/LeakyRelumax_pooling2d_3/MaxPooltraining/Adam/gradients/AddN_12*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0*
T0**
_class 
loc:@max_pooling2d_3/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
Á
:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/ShapeShapeleaky_re_lu_4/LeakyRelu/mul*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
out_type0
ˇ
<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Shape_1Shapeconv2d_4/Conv2D*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
out_type0*
_output_shapes
:
č
<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Shape_2Shape@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGrad*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
out_type0*
_output_shapes
:
ą
@training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/zeros/ConstConst*
dtype0*
_output_shapes
: **
_class 
loc:@leaky_re_lu_4/LeakyRelu*
valueB
 *    
ş
:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/zeros/Const*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*

index_type0
ĺ
Atraining/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_4/LeakyRelu/mulconv2d_4/Conv2D*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu
Ć
Jtraining/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ě
;training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/GreaterEqual@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGrad:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/zeros*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
î
=training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/zeros@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGrad*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
´
8training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/BroadcastGradientArgs*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ą
<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Shape*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
ş
:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
_output_shapes
:
ˇ
>training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Shape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
Tshape0
ą
>training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Shape_1Shapeconv2d_4/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul
ü
<training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Reshapeconv2d_4/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
Á
<training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
¨
@training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Shape*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

>training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_4/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
Ç
>training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ç
Btraining/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_4/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0

training/Adam/gradients/AddN_13AddN>training/Adam/gradients/leaky_re_lu_4/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_4/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_4/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
Ţ
3training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv2d_4/Conv2D/ReadVariableOp*
T0*"
_class
loc:@conv2d_4/Conv2D*
out_type0*
N* 
_output_shapes
::

@training/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_13*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0

Atraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool5training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_13*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00

training/Adam/gradients/AddN_14AddN9training/Adam/gradients/concatenate_1/concat_grad/Slice_1@training/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*
T0*'
_class
loc:@concatenate_1/concat*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  0
Ű
@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradleaky_re_lu_3/LeakyRelumax_pooling2d_2/MaxPooltraining/Adam/gradients/AddN_14*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0*
T0**
_class 
loc:@max_pooling2d_2/MaxPool
Á
:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/ShapeShapeleaky_re_lu_3/LeakyRelu/mul*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
out_type0
ˇ
<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Shape_1Shapeconv2d_3/Conv2D*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
out_type0*
_output_shapes
:
č
<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Shape_2Shape@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
out_type0
ą
@training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/zeros/ConstConst**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ş
:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/zeros/Const*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*

index_type0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
ĺ
Atraining/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_3/LeakyRelu/mulconv2d_3/Conv2D*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
Ć
Jtraining/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ě
;training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/GreaterEqual@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/zeros*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
î
=training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/zeros@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
´
8training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
_output_shapes
:
ą
<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
Tshape0
ş
:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ˇ
>training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Shape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
Tshape0
ą
>training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Shape_1Shapeconv2d_3/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul
ü
<training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Reshapeconv2d_3/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
Á
<training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul*
_output_shapes
:
¨
@training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Shape*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

>training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_3/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
Ç
>training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul
Ç
Btraining/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_3/LeakyRelu/mul*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0

training/Adam/gradients/AddN_15AddN>training/Adam/gradients/leaky_re_lu_3/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_3/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_3/LeakyRelu*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0
Ţ
3training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*"
_class
loc:@conv2d_3/Conv2D*
out_type0

@training/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_15*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

Atraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool5training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_15*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00*
	dilations


training/Adam/gradients/AddN_16AddN9training/Adam/gradients/concatenate_2/concat_grad/Slice_1@training/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@0*
T0*'
_class
loc:@concatenate_2/concat
Ý
@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradleaky_re_lu_2/LeakyRelumax_pooling2d_1/MaxPooltraining/Adam/gradients/AddN_16*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@max_pooling2d_1/MaxPool
Á
:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/ShapeShapeleaky_re_lu_2/LeakyRelu/mul*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
out_type0
ˇ
<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Shape_1Shapeconv2d_2/Conv2D*
_output_shapes
:*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
out_type0
č
<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Shape_2Shape@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGrad*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
out_type0*
_output_shapes
:
ą
@training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/zeros/ConstConst**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ź
:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/zeros/Const*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*

index_type0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ç
Atraining/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_2/LeakyRelu/mulconv2d_2/Conv2D*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu
Ć
Jtraining/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
î
;training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/GreaterEqual@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGrad:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/zeros*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
đ
=training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/zeros@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGrad*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu
´
8training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/BroadcastGradientArgs*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ł
<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Shape*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ş
:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu
š
>training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Shape_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
Tshape0
ą
>training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Shape_1Shapeconv2d_2/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ţ
<training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Reshapeconv2d_2/Conv2D*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul
Á
<training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
¨
@training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Shape*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

>training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_2/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ç
>training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
É
Btraining/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Shape_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*.
_class$
" loc:@leaky_re_lu_2/LeakyRelu/mul*
Tshape0

training/Adam/gradients/AddN_17AddN>training/Adam/gradients/leaky_re_lu_2/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_2/LeakyRelu/mul_grad/Reshape_1*
T0**
_class 
loc:@leaky_re_lu_2/LeakyRelu*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ü
3training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*"
_class
loc:@conv2d_2/Conv2D*
out_type0*
N* 
_output_shapes
::

@training/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_17*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

Atraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool5training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_17*
paddingSAME*&
_output_shapes
:00*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

training/Adam/gradients/AddN_18AddN9training/Adam/gradients/concatenate_3/concat_grad/Slice_1@training/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*
T0*'
_class
loc:@concatenate_3/concat*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
×
>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradleaky_re_lu_1/LeakyRelumax_pooling2d/MaxPooltraining/Adam/gradients/AddN_18*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*(
_class
loc:@max_pooling2d/MaxPool
Á
:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/ShapeShapeleaky_re_lu_1/LeakyRelu/mul*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*
out_type0*
_output_shapes
:
ˇ
<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Shape_1Shapeconv2d_1/Conv2D*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*
out_type0*
_output_shapes
:
ć
<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Shape_2Shape>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*
out_type0*
_output_shapes
:
ą
@training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/zeros/ConstConst**
_class 
loc:@leaky_re_lu_1/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
ź
:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/zerosFill<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Shape_2@training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/zeros/Const*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*

index_type0
ç
Atraining/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu_1/LeakyRelu/mulconv2d_1/Conv2D*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ć
Jtraining/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Shape<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ě
;training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/SelectSelectAtraining/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/GreaterEqual>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/zeros*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
î
=training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Select_1SelectAtraining/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/GreaterEqual:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/zeros>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu
´
8training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/SumSum;training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/SelectJtraining/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*
_output_shapes
:
ł
<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/ReshapeReshape8training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Sum:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Shape*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*
Tshape0
ş
:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Sum_1Sum=training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Select_1Ltraining/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu
š
>training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Reshape_1Reshape:training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Sum_1<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Shape_1*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ą
>training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/ShapeConst*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
ż
@training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Shape_1Shapeconv2d_1/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*
out_type0*
_output_shapes
:
Ö
Ntraining/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Shape@training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ţ
<training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/MulMul<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Reshapeconv2d_1/Conv2D*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Á
<training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/SumSum<training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/MulNtraining/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
¨
@training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/ReshapeReshape<training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Sum>training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Shape*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

>training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu_1/LeakyRelu/alpha<training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Reshape*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ç
>training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Sum_1Sum>training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Mul_1Ptraining/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*
_output_shapes
:
É
Btraining/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Reshape_1Reshape>training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Sum_1@training/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Shape_1*
T0*.
_class$
" loc:@leaky_re_lu_1/LeakyRelu/mul*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0

training/Adam/gradients/AddN_19AddN>training/Adam/gradients/leaky_re_lu_1/LeakyRelu_grad/Reshape_1Btraining/Adam/gradients/leaky_re_lu_1/LeakyRelu/mul_grad/Reshape_1*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0**
_class 
loc:@leaky_re_lu_1/LeakyRelu
Ü
3training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNleaky_re_lu/LeakyReluconv2d_1/Conv2D/ReadVariableOp*
T0*"
_class
loc:@conv2d_1/Conv2D*
out_type0*
N* 
_output_shapes
::

@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_19*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

Atraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterleaky_re_lu/LeakyRelu5training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_19*&
_output_shapes
:00*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ť
8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/ShapeShapeleaky_re_lu/LeakyRelu/mul*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*
out_type0*
_output_shapes
:
ą
:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Shape_1Shapeconv2d/Conv2D*
_output_shapes
:*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*
out_type0
ä
:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Shape_2Shape@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*
out_type0*
_output_shapes
:
­
>training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/zeros/ConstConst*(
_class
loc:@leaky_re_lu/LeakyRelu*
valueB
 *    *
dtype0*
_output_shapes
: 
´
8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/zerosFill:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Shape_2>training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/zeros/Const*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*

index_type0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ß
?training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/GreaterEqualGreaterEqualleaky_re_lu/LeakyRelu/mulconv2d/Conv2D*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ž
Htraining/Adam/gradients/leaky_re_lu/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Shape:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Shape_1*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ć
9training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/SelectSelect?training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/GreaterEqual@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/zeros*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
č
;training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Select_1Select?training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/GreaterEqual8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/zeros@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ź
6training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/SumSum9training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/SelectHtraining/Adam/gradients/leaky_re_lu/LeakyRelu_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu
Ť
:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/ReshapeReshape6training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Sum8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Shape*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*
Tshape0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
˛
8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Sum_1Sum;training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Select_1Jtraining/Adam/gradients/leaky_re_lu/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*
_output_shapes
:*
	keep_dims( *

Tidx0
ą
<training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Reshape_1Reshape8training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Sum_1:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Shape_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*
Tshape0
­
<training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/ShapeConst*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul*
valueB *
dtype0*
_output_shapes
: 
š
>training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Shape_1Shapeconv2d/Conv2D*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul*
out_type0*
_output_shapes
:
Î
Ltraining/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Shape>training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Shape_1*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ö
:training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/MulMul:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Reshapeconv2d/Conv2D*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
š
:training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/SumSum:training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/MulLtraining/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul
 
>training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/ReshapeReshape:training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Sum<training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Shape*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul*
Tshape0*
_output_shapes
: 

<training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Mul_1Mulleaky_re_lu/LeakyRelu/alpha:training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Reshape*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
ż
<training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Sum_1Sum<training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Mul_1Ntraining/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul
Á
@training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Reshape_1Reshape<training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Sum_1>training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Shape_1*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
T0*,
_class"
 loc:@leaky_re_lu/LeakyRelu/mul*
Tshape0

training/Adam/gradients/AddN_20AddN<training/Adam/gradients/leaky_re_lu/LeakyRelu_grad/Reshape_1@training/Adam/gradients/leaky_re_lu/LeakyRelu/mul_grad/Reshape_1*
T0*(
_class
loc:@leaky_re_lu/LeakyRelu*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙0
Ä
1training/Adam/gradients/conv2d/Conv2D_grad/ShapeNShapeNimgconv2d/Conv2D/ReadVariableOp*
T0* 
_class
loc:@conv2d/Conv2D*
out_type0*
N* 
_output_shapes
::

>training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput1training/Adam/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOptraining/Adam/gradients/AddN_20*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D
ó
?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterimg3training/Adam/gradients/conv2d/Conv2D_grad/ShapeN:1training/Adam/gradients/AddN_20*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
_output_shapes
: *
T0
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
x
training/Adam/zerosConst*%
valueB0*    *
dtype0*&
_output_shapes
:0
Ě
training/Adam/VariableVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
	container *
shape:0
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
´
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*&
_output_shapes
:0
~
%training/Adam/zeros_1/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   0   
`
training/Adam/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_1Fill%training/Adam/zeros_1/shape_as_tensortraining/Adam/zeros_1/Const*
T0*

index_type0*&
_output_shapes
:00
Ň
training/Adam/Variable_1VarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
ş
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*&
_output_shapes
:00
~
%training/Adam/zeros_2/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
¤
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*&
_output_shapes
:00*
T0*

index_type0
Ň
training/Adam/Variable_2VarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0
ş
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*&
_output_shapes
:00
~
%training/Adam/zeros_3/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_3Fill%training/Adam/zeros_3/shape_as_tensortraining/Adam/zeros_3/Const*&
_output_shapes
:00*
T0*

index_type0
Ň
training/Adam/Variable_3VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
	container *
shape:00

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
ş
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*&
_output_shapes
:00
~
%training/Adam/zeros_4/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   0   
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:00
Ň
training/Adam/Variable_4VarHandleOp*+
_class!
loc:@training/Adam/Variable_4*
	container *
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_4

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
ş
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*&
_output_shapes
:00
~
%training/Adam/zeros_5/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_5/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
¤
training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
T0*

index_type0*&
_output_shapes
:00
Ň
training/Adam/Variable_5VarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
ş
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*&
_output_shapes
:00*+
_class!
loc:@training/Adam/Variable_5
~
%training/Adam/zeros_6/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*&
_output_shapes
:00*
T0*

index_type0
Ň
training/Adam/Variable_6VarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6
ş
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*&
_output_shapes
:00*+
_class!
loc:@training/Adam/Variable_6
~
%training/Adam/zeros_7/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_7Fill%training/Adam/zeros_7/shape_as_tensortraining/Adam/zeros_7/Const*
T0*

index_type0*&
_output_shapes
:``
Ň
training/Adam/Variable_7VarHandleOp*)
shared_nametraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
	container *
shape:``*
dtype0*
_output_shapes
: 

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0
ş
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*&
_output_shapes
:``
~
%training/Adam/zeros_8/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
¤
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*&
_output_shapes
:``
Ň
training/Adam/Variable_8VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
	container *
shape:``

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0
ş
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*&
_output_shapes
:``
~
%training/Adam/zeros_9/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ľ
training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*'
_output_shapes
:`*
T0*

index_type0
Ó
training/Adam/Variable_9VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
	container *
shape:`

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9
ť
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*'
_output_shapes
:`

&training/Adam/zeros_10/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:``
Ő
training/Adam/Variable_10VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
	container *
shape:``

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
˘
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
˝
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*&
_output_shapes
:``

&training/Adam/zeros_11/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         `   
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*'
_output_shapes
:`
Ö
training/Adam/Variable_11VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
	container *
shape:`

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
˘
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11
ž
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*'
_output_shapes
:`

&training/Adam/zeros_12/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:``
Ő
training/Adam/Variable_12VarHandleOp*
	container *
shape:``*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12

:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
˘
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0
˝
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*&
_output_shapes
:``

&training/Adam/zeros_13/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_13/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
¨
training/Adam/zeros_13Fill&training/Adam/zeros_13/shape_as_tensortraining/Adam/zeros_13/Const*
T0*

index_type0*'
_output_shapes
:`
Ö
training/Adam/Variable_13VarHandleOp**
shared_nametraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
	container *
shape:`*
dtype0*
_output_shapes
: 

:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
˘
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0
ž
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0*'
_output_shapes
:`

&training/Adam/zeros_14/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:``
Ő
training/Adam/Variable_14VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
	container *
shape:``

:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
˘
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0
˝
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*&
_output_shapes
:``

&training/Adam/zeros_15/shape_as_tensorConst*%
valueB"      a   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_15/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_15Fill&training/Adam/zeros_15/shape_as_tensortraining/Adam/zeros_15/Const*
T0*

index_type0*&
_output_shapes
:a@
Ő
training/Adam/Variable_15VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
	container *
shape:a@

:training/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
˘
 training/Adam/Variable_15/AssignAssignVariableOptraining/Adam/Variable_15training/Adam/zeros_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0
˝
-training/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*&
_output_shapes
:a@

&training/Adam/zeros_16/shape_as_tensorConst*%
valueB"      @       *
dtype0*
_output_shapes
:
a
training/Adam/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
T0*

index_type0*&
_output_shapes
:@ 
Ő
training/Adam/Variable_16VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
	container *
shape:@ 

:training/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
˘
 training/Adam/Variable_16/AssignAssignVariableOptraining/Adam/Variable_16training/Adam/zeros_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0
˝
-training/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
dtype0*&
_output_shapes
:@ *,
_class"
 loc:@training/Adam/Variable_16
{
training/Adam/zeros_17Const*%
valueB *    *
dtype0*&
_output_shapes
: 
Ő
training/Adam/Variable_17VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
	container *
shape: 

:training/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
˘
 training/Adam/Variable_17/AssignAssignVariableOptraining/Adam/Variable_17training/Adam/zeros_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0
˝
-training/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*&
_output_shapes
: 
{
training/Adam/zeros_18Const*%
valueB0*    *
dtype0*&
_output_shapes
:0
Ő
training/Adam/Variable_18VarHandleOp**
shared_nametraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
˘
 training/Adam/Variable_18/AssignAssignVariableOptraining/Adam/Variable_18training/Adam/zeros_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0
˝
-training/Adam/Variable_18/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*&
_output_shapes
:0

&training/Adam/zeros_19/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   0   
a
training/Adam/zeros_19/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_19Fill&training/Adam/zeros_19/shape_as_tensortraining/Adam/zeros_19/Const*
T0*

index_type0*&
_output_shapes
:00
Ő
training/Adam/Variable_19VarHandleOp*,
_class"
 loc:@training/Adam/Variable_19*
	container *
shape:00*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_19

:training/Adam/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
˘
 training/Adam/Variable_19/AssignAssignVariableOptraining/Adam/Variable_19training/Adam/zeros_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0
˝
-training/Adam/Variable_19/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*&
_output_shapes
:00

&training/Adam/zeros_20/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*&
_output_shapes
:00*
T0*

index_type0
Ő
training/Adam/Variable_20VarHandleOp**
shared_nametraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
	container *
shape:00*
dtype0*
_output_shapes
: 

:training/Adam/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
˘
 training/Adam/Variable_20/AssignAssignVariableOptraining/Adam/Variable_20training/Adam/zeros_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0
˝
-training/Adam/Variable_20/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*&
_output_shapes
:00

&training/Adam/zeros_21/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_21/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_21Fill&training/Adam/zeros_21/shape_as_tensortraining/Adam/zeros_21/Const*
T0*

index_type0*&
_output_shapes
:00
Ő
training/Adam/Variable_21VarHandleOp*
shape:00*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
	container 

:training/Adam/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
˘
 training/Adam/Variable_21/AssignAssignVariableOptraining/Adam/Variable_21training/Adam/zeros_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0
˝
-training/Adam/Variable_21/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0*&
_output_shapes
:00

&training/Adam/zeros_22/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*&
_output_shapes
:00
Ő
training/Adam/Variable_22VarHandleOp**
shared_nametraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
	container *
shape:00*
dtype0*
_output_shapes
: 

:training/Adam/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
˘
 training/Adam/Variable_22/AssignAssignVariableOptraining/Adam/Variable_22training/Adam/zeros_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0
˝
-training/Adam/Variable_22/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*&
_output_shapes
:00

&training/Adam/zeros_23/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_23/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_23Fill&training/Adam/zeros_23/shape_as_tensortraining/Adam/zeros_23/Const*
T0*

index_type0*&
_output_shapes
:00
Ő
training/Adam/Variable_23VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
	container *
shape:00

:training/Adam/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
˘
 training/Adam/Variable_23/AssignAssignVariableOptraining/Adam/Variable_23training/Adam/zeros_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0
˝
-training/Adam/Variable_23/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_23*
dtype0*&
_output_shapes
:00*,
_class"
 loc:@training/Adam/Variable_23

&training/Adam/zeros_24/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   0   
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0*&
_output_shapes
:00
Ő
training/Adam/Variable_24VarHandleOp*,
_class"
 loc:@training/Adam/Variable_24*
	container *
shape:00*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_24

:training/Adam/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
˘
 training/Adam/Variable_24/AssignAssignVariableOptraining/Adam/Variable_24training/Adam/zeros_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0
˝
-training/Adam/Variable_24/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*&
_output_shapes
:00

&training/Adam/zeros_25/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   
a
training/Adam/zeros_25/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_25Fill&training/Adam/zeros_25/shape_as_tensortraining/Adam/zeros_25/Const*&
_output_shapes
:``*
T0*

index_type0
Ő
training/Adam/Variable_25VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
	container *
shape:``

:training/Adam/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
˘
 training/Adam/Variable_25/AssignAssignVariableOptraining/Adam/Variable_25training/Adam/zeros_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0
˝
-training/Adam/Variable_25/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0*&
_output_shapes
:``

&training/Adam/zeros_26/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
T0*

index_type0*&
_output_shapes
:``
Ő
training/Adam/Variable_26VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
	container *
shape:``

:training/Adam/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
˘
 training/Adam/Variable_26/AssignAssignVariableOptraining/Adam/Variable_26training/Adam/zeros_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0
˝
-training/Adam/Variable_26/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_26*
dtype0*&
_output_shapes
:``*,
_class"
 loc:@training/Adam/Variable_26

&training/Adam/zeros_27/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_27/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_27Fill&training/Adam/zeros_27/shape_as_tensortraining/Adam/zeros_27/Const*
T0*

index_type0*'
_output_shapes
:`
Ö
training/Adam/Variable_27VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
	container *
shape:`

:training/Adam/Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
˘
 training/Adam/Variable_27/AssignAssignVariableOptraining/Adam/Variable_27training/Adam/zeros_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0
ž
-training/Adam/Variable_27/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0*'
_output_shapes
:`

&training/Adam/zeros_28/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*&
_output_shapes
:``
Ő
training/Adam/Variable_28VarHandleOp**
shared_nametraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28*
	container *
shape:``*
dtype0*
_output_shapes
: 

:training/Adam/Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
˘
 training/Adam/Variable_28/AssignAssignVariableOptraining/Adam/Variable_28training/Adam/zeros_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0
˝
-training/Adam/Variable_28/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_28*
dtype0*&
_output_shapes
:``*,
_class"
 loc:@training/Adam/Variable_28

&training/Adam/zeros_29/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_29/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_29Fill&training/Adam/zeros_29/shape_as_tensortraining/Adam/zeros_29/Const*
T0*

index_type0*'
_output_shapes
:`
Ö
training/Adam/Variable_29VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
	container *
shape:`

:training/Adam/Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
˘
 training/Adam/Variable_29/AssignAssignVariableOptraining/Adam/Variable_29training/Adam/zeros_29*,
_class"
 loc:@training/Adam/Variable_29*
dtype0
ž
-training/Adam/Variable_29/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_29*
dtype0*'
_output_shapes
:`*,
_class"
 loc:@training/Adam/Variable_29

&training/Adam/zeros_30/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   
a
training/Adam/zeros_30/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*&
_output_shapes
:``*
T0*

index_type0
Ő
training/Adam/Variable_30VarHandleOp**
shared_nametraining/Adam/Variable_30*,
_class"
 loc:@training/Adam/Variable_30*
	container *
shape:``*
dtype0*
_output_shapes
: 

:training/Adam/Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_30*
_output_shapes
: 
˘
 training/Adam/Variable_30/AssignAssignVariableOptraining/Adam/Variable_30training/Adam/zeros_30*,
_class"
 loc:@training/Adam/Variable_30*
dtype0
˝
-training/Adam/Variable_30/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_30*,
_class"
 loc:@training/Adam/Variable_30*
dtype0*&
_output_shapes
:``

&training/Adam/zeros_31/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         `   
a
training/Adam/zeros_31/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_31Fill&training/Adam/zeros_31/shape_as_tensortraining/Adam/zeros_31/Const*
T0*

index_type0*'
_output_shapes
:`
Ö
training/Adam/Variable_31VarHandleOp*,
_class"
 loc:@training/Adam/Variable_31*
	container *
shape:`*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_31

:training/Adam/Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_31*
_output_shapes
: 
˘
 training/Adam/Variable_31/AssignAssignVariableOptraining/Adam/Variable_31training/Adam/zeros_31*
dtype0*,
_class"
 loc:@training/Adam/Variable_31
ž
-training/Adam/Variable_31/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_31*,
_class"
 loc:@training/Adam/Variable_31*
dtype0*'
_output_shapes
:`

&training/Adam/zeros_32/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*
T0*

index_type0*&
_output_shapes
:``
Ő
training/Adam/Variable_32VarHandleOp*
	container *
shape:``*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32

:training/Adam/Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_32*
_output_shapes
: 
˘
 training/Adam/Variable_32/AssignAssignVariableOptraining/Adam/Variable_32training/Adam/zeros_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0
˝
-training/Adam/Variable_32/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_32*
dtype0*&
_output_shapes
:``*,
_class"
 loc:@training/Adam/Variable_32

&training/Adam/zeros_33/shape_as_tensorConst*%
valueB"      a   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_33/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_33Fill&training/Adam/zeros_33/shape_as_tensortraining/Adam/zeros_33/Const*
T0*

index_type0*&
_output_shapes
:a@
Ő
training/Adam/Variable_33VarHandleOp*,
_class"
 loc:@training/Adam/Variable_33*
	container *
shape:a@*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_33

:training/Adam/Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_33*
_output_shapes
: 
˘
 training/Adam/Variable_33/AssignAssignVariableOptraining/Adam/Variable_33training/Adam/zeros_33*,
_class"
 loc:@training/Adam/Variable_33*
dtype0
˝
-training/Adam/Variable_33/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_33*,
_class"
 loc:@training/Adam/Variable_33*
dtype0*&
_output_shapes
:a@

&training/Adam/zeros_34/shape_as_tensorConst*%
valueB"      @       *
dtype0*
_output_shapes
:
a
training/Adam/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_34Fill&training/Adam/zeros_34/shape_as_tensortraining/Adam/zeros_34/Const*&
_output_shapes
:@ *
T0*

index_type0
Ő
training/Adam/Variable_34VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_34*,
_class"
 loc:@training/Adam/Variable_34*
	container *
shape:@ 

:training/Adam/Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_34*
_output_shapes
: 
˘
 training/Adam/Variable_34/AssignAssignVariableOptraining/Adam/Variable_34training/Adam/zeros_34*,
_class"
 loc:@training/Adam/Variable_34*
dtype0
˝
-training/Adam/Variable_34/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_34*
dtype0*&
_output_shapes
:@ *,
_class"
 loc:@training/Adam/Variable_34
{
training/Adam/zeros_35Const*
dtype0*&
_output_shapes
: *%
valueB *    
Ő
training/Adam/Variable_35VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
	container *
shape: 

:training/Adam/Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_35*
_output_shapes
: 
˘
 training/Adam/Variable_35/AssignAssignVariableOptraining/Adam/Variable_35training/Adam/zeros_35*,
_class"
 loc:@training/Adam/Variable_35*
dtype0
˝
-training/Adam/Variable_35/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_35*
dtype0*&
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_35
p
&training/Adam/zeros_36/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_36Fill&training/Adam/zeros_36/shape_as_tensortraining/Adam/zeros_36/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_36VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_36*,
_class"
 loc:@training/Adam/Variable_36*
	container 

:training/Adam/Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_36*
_output_shapes
: 
˘
 training/Adam/Variable_36/AssignAssignVariableOptraining/Adam/Variable_36training/Adam/zeros_36*,
_class"
 loc:@training/Adam/Variable_36*
dtype0
ą
-training/Adam/Variable_36/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_36*,
_class"
 loc:@training/Adam/Variable_36*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_37/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_37/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_37Fill&training/Adam/zeros_37/shape_as_tensortraining/Adam/zeros_37/Const*
_output_shapes
:*
T0*

index_type0
É
training/Adam/Variable_37VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_37*,
_class"
 loc:@training/Adam/Variable_37*
	container 

:training/Adam/Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_37*
_output_shapes
: 
˘
 training/Adam/Variable_37/AssignAssignVariableOptraining/Adam/Variable_37training/Adam/zeros_37*
dtype0*,
_class"
 loc:@training/Adam/Variable_37
ą
-training/Adam/Variable_37/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_37*,
_class"
 loc:@training/Adam/Variable_37*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_38/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_38Fill&training/Adam/zeros_38/shape_as_tensortraining/Adam/zeros_38/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_38VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
	container *
shape:

:training/Adam/Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_38*
_output_shapes
: 
˘
 training/Adam/Variable_38/AssignAssignVariableOptraining/Adam/Variable_38training/Adam/zeros_38*,
_class"
 loc:@training/Adam/Variable_38*
dtype0
ą
-training/Adam/Variable_38/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_39/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_39/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_39Fill&training/Adam/zeros_39/shape_as_tensortraining/Adam/zeros_39/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_39VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39

:training/Adam/Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_39*
_output_shapes
: 
˘
 training/Adam/Variable_39/AssignAssignVariableOptraining/Adam/Variable_39training/Adam/zeros_39*
dtype0*,
_class"
 loc:@training/Adam/Variable_39
ą
-training/Adam/Variable_39/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_40/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_40/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_40Fill&training/Adam/zeros_40/shape_as_tensortraining/Adam/zeros_40/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_40VarHandleOp*,
_class"
 loc:@training/Adam/Variable_40*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_40

:training/Adam/Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_40*
_output_shapes
: 
˘
 training/Adam/Variable_40/AssignAssignVariableOptraining/Adam/Variable_40training/Adam/zeros_40*,
_class"
 loc:@training/Adam/Variable_40*
dtype0
ą
-training/Adam/Variable_40/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_40*,
_class"
 loc:@training/Adam/Variable_40*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_41/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_41/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_41Fill&training/Adam/zeros_41/shape_as_tensortraining/Adam/zeros_41/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_41VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_41*,
_class"
 loc:@training/Adam/Variable_41*
	container *
shape:

:training/Adam/Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_41*
_output_shapes
: 
˘
 training/Adam/Variable_41/AssignAssignVariableOptraining/Adam/Variable_41training/Adam/zeros_41*,
_class"
 loc:@training/Adam/Variable_41*
dtype0
ą
-training/Adam/Variable_41/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_41*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_41
p
&training/Adam/zeros_42/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_42/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_42Fill&training/Adam/zeros_42/shape_as_tensortraining/Adam/zeros_42/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_42VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_42*,
_class"
 loc:@training/Adam/Variable_42*
	container *
shape:

:training/Adam/Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_42*
_output_shapes
: 
˘
 training/Adam/Variable_42/AssignAssignVariableOptraining/Adam/Variable_42training/Adam/zeros_42*,
_class"
 loc:@training/Adam/Variable_42*
dtype0
ą
-training/Adam/Variable_42/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_42*,
_class"
 loc:@training/Adam/Variable_42*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_43/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_43/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_43Fill&training/Adam/zeros_43/shape_as_tensortraining/Adam/zeros_43/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_43VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_43*,
_class"
 loc:@training/Adam/Variable_43*
	container *
shape:

:training/Adam/Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_43*
_output_shapes
: 
˘
 training/Adam/Variable_43/AssignAssignVariableOptraining/Adam/Variable_43training/Adam/zeros_43*,
_class"
 loc:@training/Adam/Variable_43*
dtype0
ą
-training/Adam/Variable_43/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_43*,
_class"
 loc:@training/Adam/Variable_43*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_44/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_44/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_44Fill&training/Adam/zeros_44/shape_as_tensortraining/Adam/zeros_44/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_44VarHandleOp**
shared_nametraining/Adam/Variable_44*,
_class"
 loc:@training/Adam/Variable_44*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_44/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_44*
_output_shapes
: 
˘
 training/Adam/Variable_44/AssignAssignVariableOptraining/Adam/Variable_44training/Adam/zeros_44*,
_class"
 loc:@training/Adam/Variable_44*
dtype0
ą
-training/Adam/Variable_44/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_44*,
_class"
 loc:@training/Adam/Variable_44*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_45/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_45/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_45Fill&training/Adam/zeros_45/shape_as_tensortraining/Adam/zeros_45/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_45VarHandleOp**
shared_nametraining/Adam/Variable_45*,
_class"
 loc:@training/Adam/Variable_45*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_45/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_45*
_output_shapes
: 
˘
 training/Adam/Variable_45/AssignAssignVariableOptraining/Adam/Variable_45training/Adam/zeros_45*,
_class"
 loc:@training/Adam/Variable_45*
dtype0
ą
-training/Adam/Variable_45/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_45*,
_class"
 loc:@training/Adam/Variable_45*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_46/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_46/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_46Fill&training/Adam/zeros_46/shape_as_tensortraining/Adam/zeros_46/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_46VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_46*,
_class"
 loc:@training/Adam/Variable_46*
	container *
shape:

:training/Adam/Variable_46/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_46*
_output_shapes
: 
˘
 training/Adam/Variable_46/AssignAssignVariableOptraining/Adam/Variable_46training/Adam/zeros_46*,
_class"
 loc:@training/Adam/Variable_46*
dtype0
ą
-training/Adam/Variable_46/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_46*,
_class"
 loc:@training/Adam/Variable_46*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_47/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_47/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_47Fill&training/Adam/zeros_47/shape_as_tensortraining/Adam/zeros_47/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_47VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_47*,
_class"
 loc:@training/Adam/Variable_47*
	container *
shape:

:training/Adam/Variable_47/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_47*
_output_shapes
: 
˘
 training/Adam/Variable_47/AssignAssignVariableOptraining/Adam/Variable_47training/Adam/zeros_47*,
_class"
 loc:@training/Adam/Variable_47*
dtype0
ą
-training/Adam/Variable_47/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_47*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_47
p
&training/Adam/zeros_48/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_48/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_48Fill&training/Adam/zeros_48/shape_as_tensortraining/Adam/zeros_48/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_48VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_48*,
_class"
 loc:@training/Adam/Variable_48*
	container *
shape:

:training/Adam/Variable_48/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_48*
_output_shapes
: 
˘
 training/Adam/Variable_48/AssignAssignVariableOptraining/Adam/Variable_48training/Adam/zeros_48*
dtype0*,
_class"
 loc:@training/Adam/Variable_48
ą
-training/Adam/Variable_48/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_48*,
_class"
 loc:@training/Adam/Variable_48*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_49/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_49/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_49Fill&training/Adam/zeros_49/shape_as_tensortraining/Adam/zeros_49/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_49VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_49*,
_class"
 loc:@training/Adam/Variable_49*
	container *
shape:

:training/Adam/Variable_49/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_49*
_output_shapes
: 
˘
 training/Adam/Variable_49/AssignAssignVariableOptraining/Adam/Variable_49training/Adam/zeros_49*,
_class"
 loc:@training/Adam/Variable_49*
dtype0
ą
-training/Adam/Variable_49/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_49*,
_class"
 loc:@training/Adam/Variable_49*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_50/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_50/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_50Fill&training/Adam/zeros_50/shape_as_tensortraining/Adam/zeros_50/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_50VarHandleOp**
shared_nametraining/Adam/Variable_50*,
_class"
 loc:@training/Adam/Variable_50*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_50/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_50*
_output_shapes
: 
˘
 training/Adam/Variable_50/AssignAssignVariableOptraining/Adam/Variable_50training/Adam/zeros_50*,
_class"
 loc:@training/Adam/Variable_50*
dtype0
ą
-training/Adam/Variable_50/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_50*,
_class"
 loc:@training/Adam/Variable_50*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_51/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_51/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_51Fill&training/Adam/zeros_51/shape_as_tensortraining/Adam/zeros_51/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_51VarHandleOp*,
_class"
 loc:@training/Adam/Variable_51*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_51

:training/Adam/Variable_51/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_51*
_output_shapes
: 
˘
 training/Adam/Variable_51/AssignAssignVariableOptraining/Adam/Variable_51training/Adam/zeros_51*,
_class"
 loc:@training/Adam/Variable_51*
dtype0
ą
-training/Adam/Variable_51/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_51*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_51
p
&training/Adam/zeros_52/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_52/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_52Fill&training/Adam/zeros_52/shape_as_tensortraining/Adam/zeros_52/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_52VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_52*,
_class"
 loc:@training/Adam/Variable_52*
	container *
shape:

:training/Adam/Variable_52/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_52*
_output_shapes
: 
˘
 training/Adam/Variable_52/AssignAssignVariableOptraining/Adam/Variable_52training/Adam/zeros_52*
dtype0*,
_class"
 loc:@training/Adam/Variable_52
ą
-training/Adam/Variable_52/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_52*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_52
p
&training/Adam/zeros_53/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_53/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_53Fill&training/Adam/zeros_53/shape_as_tensortraining/Adam/zeros_53/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_53VarHandleOp**
shared_nametraining/Adam/Variable_53*,
_class"
 loc:@training/Adam/Variable_53*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_53/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_53*
_output_shapes
: 
˘
 training/Adam/Variable_53/AssignAssignVariableOptraining/Adam/Variable_53training/Adam/zeros_53*,
_class"
 loc:@training/Adam/Variable_53*
dtype0
ą
-training/Adam/Variable_53/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_53*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_53
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*&
_output_shapes
:0

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0*&
_output_shapes
:0
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
Ą
training/Adam/mul_2Multraining/Adam/sub_2?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
u
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*&
_output_shapes
:0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_18*
dtype0*&
_output_shapes
:0

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*&
_output_shapes
:0
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 

training/Adam/SquareSquare?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
v
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*&
_output_shapes
:0
u
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*&
_output_shapes
:0
s
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*&
_output_shapes
:0
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*&
_output_shapes
:0*
T0
l
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*&
_output_shapes
:0
Z
training/Adam/add_3/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
x
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*&
_output_shapes
:0*
T0
}
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*&
_output_shapes
:0
t
training/Adam/ReadVariableOp_6ReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*&
_output_shapes
:0
l
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*&
_output_shapes
:0
q
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_18training/Adam/add_2*
dtype0
Ł
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_18!^training/Adam/AssignVariableOp_1*
dtype0*&
_output_shapes
:0
e
 training/Adam/AssignVariableOp_2AssignVariableOpconv2d/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpconv2d/kernel!^training/Adam/AssignVariableOp_2*
dtype0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*&
_output_shapes
:00

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
Ł
training/Adam/mul_7Multraining/Adam/sub_5Atraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
u
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_19*
dtype0*&
_output_shapes
:00

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*&
_output_shapes
:00*
T0
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 

training/Adam/Square_1SquareAtraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:00*
T0
x
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*&
_output_shapes
:00
u
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*&
_output_shapes
:00
t
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*&
_output_shapes
:00*
T0
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*&
_output_shapes
:00*
T0

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*&
_output_shapes
:00
Z
training/Adam/add_6/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
x
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*&
_output_shapes
:00
~
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*&
_output_shapes
:00*
T0
w
training/Adam/ReadVariableOp_14ReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*&
_output_shapes
:00
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_4*
dtype0
Ł
training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*&
_output_shapes
:00
q
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_19training/Adam/add_5*
dtype0
¤
training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_19!^training/Adam/AssignVariableOp_4*
dtype0*&
_output_shapes
:00
g
 training/Adam/AssignVariableOp_5AssignVariableOpconv2d_1/kerneltraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpconv2d_1/kernel!^training/Adam/AssignVariableOp_5*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*&
_output_shapes
:00

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*&
_output_shapes
:00*
T0
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
¤
training/Adam/mul_12Multraining/Adam/sub_8Atraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
w
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_20*
dtype0*&
_output_shapes
:00

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2SquareAtraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:00*
T0
y
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*&
_output_shapes
:00
w
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*&
_output_shapes
:00*
T0
t
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*&
_output_shapes
:00
Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*&
_output_shapes
:00

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*&
_output_shapes
:00
Z
training/Adam/add_9/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
x
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*&
_output_shapes
:00
~
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*&
_output_shapes
:00*
T0
w
training/Adam/ReadVariableOp_22ReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*&
_output_shapes
:00
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_7*
dtype0
Ł
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*&
_output_shapes
:00
q
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_20training/Adam/add_8*
dtype0
¤
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_20!^training/Adam/AssignVariableOp_7*
dtype0*&
_output_shapes
:00
h
 training/Adam/AssignVariableOp_8AssignVariableOpconv2d_2/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpconv2d_2/kernel!^training/Adam/AssignVariableOp_8*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*&
_output_shapes
:00

training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*&
_output_shapes
:00*
T0
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
Ľ
training/Adam/mul_17Multraining/Adam/sub_11Atraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
x
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_21*
dtype0*&
_output_shapes
:00

training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*&
_output_shapes
:00*
T0
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training/Adam/Square_3SquareAtraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
z
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*&
_output_shapes
:00
x
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*&
_output_shapes
:00*
T0
u
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*&
_output_shapes
:00
Z
training/Adam/Const_9Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*&
_output_shapes
:00

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*&
_output_shapes
:00
[
training/Adam/add_12/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
z
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*&
_output_shapes
:00*
T0

training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*&
_output_shapes
:00
w
training/Adam/ReadVariableOp_30ReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*&
_output_shapes
:00*
T0
q
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_10*
dtype0
Ł
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*&
_output_shapes
:00
s
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_21training/Adam/add_11*
dtype0
Ľ
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_21"^training/Adam/AssignVariableOp_10*
dtype0*&
_output_shapes
:00
i
!training/Adam/AssignVariableOp_11AssignVariableOpconv2d_3/kerneltraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpconv2d_3/kernel"^training/Adam/AssignVariableOp_11*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*&
_output_shapes
:00

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 
Ľ
training/Adam/mul_22Multraining/Adam/sub_14Atraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:00*
T0
x
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_22*
dtype0*&
_output_shapes
:00

training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4SquareAtraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
z
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*&
_output_shapes
:00
x
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*&
_output_shapes
:00
u
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*&
_output_shapes
:00
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*&
_output_shapes
:00

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*&
_output_shapes
:00*
T0
[
training/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĚ+2
z
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*&
_output_shapes
:00

training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*&
_output_shapes
:00
w
training/Adam/ReadVariableOp_38ReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0*&
_output_shapes
:00
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_13*
dtype0
¤
training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
dtype0*&
_output_shapes
:00
s
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_22training/Adam/add_14*
dtype0
Ľ
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_22"^training/Adam/AssignVariableOp_13*
dtype0*&
_output_shapes
:00
i
!training/Adam/AssignVariableOp_14AssignVariableOpconv2d_4/kerneltraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOpconv2d_4/kernel"^training/Adam/AssignVariableOp_14*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*&
_output_shapes
:00

training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 
Ľ
training/Adam/mul_27Multraining/Adam/sub_17Atraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
x
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/Variable_23*
dtype0*&
_output_shapes
:00

training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

training/Adam/Square_5SquareAtraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:00*
T0
z
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*&
_output_shapes
:00
x
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*&
_output_shapes
:00
u
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*&
_output_shapes
:00*
T0
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*&
_output_shapes
:00

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*&
_output_shapes
:00
[
training/Adam/add_18/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
z
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*&
_output_shapes
:00

training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*&
_output_shapes
:00
w
training/Adam/ReadVariableOp_46ReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*&
_output_shapes
:00
r
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_5training/Adam/add_16*
dtype0
¤
training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/Variable_5"^training/Adam/AssignVariableOp_15*
dtype0*&
_output_shapes
:00
s
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_23training/Adam/add_17*
dtype0
Ľ
training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/Variable_23"^training/Adam/AssignVariableOp_16*
dtype0*&
_output_shapes
:00
i
!training/Adam/AssignVariableOp_17AssignVariableOpconv2d_5/kerneltraining/Adam/sub_19*
dtype0

training/Adam/ReadVariableOp_49ReadVariableOpconv2d_5/kernel"^training/Adam/AssignVariableOp_17*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*&
_output_shapes
:00

training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*&
_output_shapes
:00*
T0
c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 
Ľ
training/Adam/mul_32Multraining/Adam/sub_20Atraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:00*
T0
x
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/Variable_24*
dtype0*&
_output_shapes
:00

training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training/Adam/Square_6SquareAtraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:00*
T0
z
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*&
_output_shapes
:00*
T0
x
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*&
_output_shapes
:00
u
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*&
_output_shapes
:00
[
training/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
T0*&
_output_shapes
:00

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*&
_output_shapes
:00
[
training/Adam/add_21/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
z
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*&
_output_shapes
:00

training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*&
_output_shapes
:00
w
training/Adam/ReadVariableOp_54ReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
T0*&
_output_shapes
:00
r
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_6training/Adam/add_19*
dtype0
¤
training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/Variable_6"^training/Adam/AssignVariableOp_18*
dtype0*&
_output_shapes
:00
s
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_24training/Adam/add_20*
dtype0
Ľ
training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/Variable_24"^training/Adam/AssignVariableOp_19*
dtype0*&
_output_shapes
:00
i
!training/Adam/AssignVariableOp_20AssignVariableOpconv2d_6/kerneltraining/Adam/sub_22*
dtype0

training/Adam/ReadVariableOp_57ReadVariableOpconv2d_6/kernel"^training/Adam/AssignVariableOp_20*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*&
_output_shapes
:``

training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
Ľ
training/Adam/mul_37Multraining/Adam/sub_23Atraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
x
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/Variable_25*
dtype0*&
_output_shapes
:``

training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*&
_output_shapes
:``*
T0
c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training/Adam/Square_7SquareAtraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
z
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*&
_output_shapes
:``
x
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*&
_output_shapes
:``
u
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*&
_output_shapes
:``
[
training/Adam/Const_17Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_18Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*&
_output_shapes
:``

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
T0*&
_output_shapes
:``
l
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*&
_output_shapes
:``
[
training/Adam/add_24/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
z
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*&
_output_shapes
:``*
T0

training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*&
_output_shapes
:``
w
training/Adam/ReadVariableOp_62ReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:``

training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
T0*&
_output_shapes
:``
r
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_7training/Adam/add_22*
dtype0
¤
training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_21*
dtype0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_25training/Adam/add_23*
dtype0
Ľ
training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/Variable_25"^training/Adam/AssignVariableOp_22*
dtype0*&
_output_shapes
:``
i
!training/Adam/AssignVariableOp_23AssignVariableOpconv2d_7/kerneltraining/Adam/sub_25*
dtype0

training/Adam/ReadVariableOp_65ReadVariableOpconv2d_7/kernel"^training/Adam/AssignVariableOp_23*
dtype0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_66ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_41/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*&
_output_shapes
:``

training/Adam/mul_41Multraining/Adam/ReadVariableOp_66#training/Adam/mul_41/ReadVariableOp*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_67ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_26Subtraining/Adam/sub_26/xtraining/Adam/ReadVariableOp_67*
T0*
_output_shapes
: 
Ľ
training/Adam/mul_42Multraining/Adam/sub_26Atraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
x
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_68ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_43/ReadVariableOpReadVariableOptraining/Adam/Variable_26*
dtype0*&
_output_shapes
:``

training/Adam/mul_43Multraining/Adam/ReadVariableOp_68#training/Adam/mul_43/ReadVariableOp*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_69ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_27/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_27Subtraining/Adam/sub_27/xtraining/Adam/ReadVariableOp_69*
_output_shapes
: *
T0

training/Adam/Square_8SquareAtraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
z
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*&
_output_shapes
:``
x
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
T0*&
_output_shapes
:``
u
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*&
_output_shapes
:``
[
training/Adam/Const_19Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_20Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_20*
T0*&
_output_shapes
:``

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_19*
T0*&
_output_shapes
:``
l
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*&
_output_shapes
:``
[
training/Adam/add_27/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
z
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*&
_output_shapes
:``

training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*&
_output_shapes
:``*
T0
w
training/Adam/ReadVariableOp_70ReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:``

training/Adam/sub_28Subtraining/Adam/ReadVariableOp_70training/Adam/truediv_9*
T0*&
_output_shapes
:``
r
!training/Adam/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_8training/Adam/add_25*
dtype0
¤
training/Adam/ReadVariableOp_71ReadVariableOptraining/Adam/Variable_8"^training/Adam/AssignVariableOp_24*
dtype0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_26training/Adam/add_26*
dtype0
Ľ
training/Adam/ReadVariableOp_72ReadVariableOptraining/Adam/Variable_26"^training/Adam/AssignVariableOp_25*
dtype0*&
_output_shapes
:``
i
!training/Adam/AssignVariableOp_26AssignVariableOpconv2d_8/kerneltraining/Adam/sub_28*
dtype0

training/Adam/ReadVariableOp_73ReadVariableOpconv2d_8/kernel"^training/Adam/AssignVariableOp_26*
dtype0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_74ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_46/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
dtype0*'
_output_shapes
:`

training/Adam/mul_46Multraining/Adam/ReadVariableOp_74#training/Adam/mul_46/ReadVariableOp*
T0*'
_output_shapes
:`
c
training/Adam/ReadVariableOp_75ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_29Subtraining/Adam/sub_29/xtraining/Adam/ReadVariableOp_75*
T0*
_output_shapes
: 
Ś
training/Adam/mul_47Multraining/Adam/sub_29Atraining/Adam/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:`*
T0
y
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*'
_output_shapes
:`*
T0
c
training/Adam/ReadVariableOp_76ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_48/ReadVariableOpReadVariableOptraining/Adam/Variable_27*
dtype0*'
_output_shapes
:`

training/Adam/mul_48Multraining/Adam/ReadVariableOp_76#training/Adam/mul_48/ReadVariableOp*'
_output_shapes
:`*
T0
c
training/Adam/ReadVariableOp_77ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_30/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_30Subtraining/Adam/sub_30/xtraining/Adam/ReadVariableOp_77*
_output_shapes
: *
T0

training/Adam/Square_9SquareAtraining/Adam/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
{
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*'
_output_shapes
:`
y
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
T0*'
_output_shapes
:`
v
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*'
_output_shapes
:`
[
training/Adam/Const_21Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_22Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_22*
T0*'
_output_shapes
:`

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_21*
T0*'
_output_shapes
:`
o
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*'
_output_shapes
:`*
T0
[
training/Adam/add_30/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĚ+2
|
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*'
_output_shapes
:`

training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*'
_output_shapes
:`*
T0
x
training/Adam/ReadVariableOp_78ReadVariableOpconv2d_9/kernel*
dtype0*'
_output_shapes
:`

training/Adam/sub_31Subtraining/Adam/ReadVariableOp_78training/Adam/truediv_10*
T0*'
_output_shapes
:`
r
!training/Adam/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_9training/Adam/add_28*
dtype0
Ľ
training/Adam/ReadVariableOp_79ReadVariableOptraining/Adam/Variable_9"^training/Adam/AssignVariableOp_27*
dtype0*'
_output_shapes
:`
s
!training/Adam/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_27training/Adam/add_29*
dtype0
Ś
training/Adam/ReadVariableOp_80ReadVariableOptraining/Adam/Variable_27"^training/Adam/AssignVariableOp_28*
dtype0*'
_output_shapes
:`
i
!training/Adam/AssignVariableOp_29AssignVariableOpconv2d_9/kerneltraining/Adam/sub_31*
dtype0

training/Adam/ReadVariableOp_81ReadVariableOpconv2d_9/kernel"^training/Adam/AssignVariableOp_29*
dtype0*'
_output_shapes
:`
c
training/Adam/ReadVariableOp_82ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_51/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
dtype0*&
_output_shapes
:``

training/Adam/mul_51Multraining/Adam/ReadVariableOp_82#training/Adam/mul_51/ReadVariableOp*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_83ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_32/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_32Subtraining/Adam/sub_32/xtraining/Adam/ReadVariableOp_83*
_output_shapes
: *
T0
Ś
training/Adam/mul_52Multraining/Adam/sub_32Btraining/Adam/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
x
training/Adam/add_31Addtraining/Adam/mul_51training/Adam/mul_52*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_84ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_53/ReadVariableOpReadVariableOptraining/Adam/Variable_28*
dtype0*&
_output_shapes
:``

training/Adam/mul_53Multraining/Adam/ReadVariableOp_84#training/Adam/mul_53/ReadVariableOp*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_85ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_33/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_33Subtraining/Adam/sub_33/xtraining/Adam/ReadVariableOp_85*
T0*
_output_shapes
: 

training/Adam/Square_10SquareBtraining/Adam/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
{
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
T0*&
_output_shapes
:``
x
training/Adam/add_32Addtraining/Adam/mul_53training/Adam/mul_54*
T0*&
_output_shapes
:``
u
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_31*&
_output_shapes
:``*
T0
[
training/Adam/Const_23Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_24Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_32training/Adam/Const_24*
T0*&
_output_shapes
:``

training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_23*&
_output_shapes
:``*
T0
n
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
T0*&
_output_shapes
:``
[
training/Adam/add_33/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
{
training/Adam/add_33Addtraining/Adam/Sqrt_11training/Adam/add_33/y*&
_output_shapes
:``*
T0

training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_33*
T0*&
_output_shapes
:``
x
training/Adam/ReadVariableOp_86ReadVariableOpconv2d_10/kernel*
dtype0*&
_output_shapes
:``

training/Adam/sub_34Subtraining/Adam/ReadVariableOp_86training/Adam/truediv_11*
T0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_30AssignVariableOptraining/Adam/Variable_10training/Adam/add_31*
dtype0
Ľ
training/Adam/ReadVariableOp_87ReadVariableOptraining/Adam/Variable_10"^training/Adam/AssignVariableOp_30*
dtype0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_31AssignVariableOptraining/Adam/Variable_28training/Adam/add_32*
dtype0
Ľ
training/Adam/ReadVariableOp_88ReadVariableOptraining/Adam/Variable_28"^training/Adam/AssignVariableOp_31*
dtype0*&
_output_shapes
:``
j
!training/Adam/AssignVariableOp_32AssignVariableOpconv2d_10/kerneltraining/Adam/sub_34*
dtype0

training/Adam/ReadVariableOp_89ReadVariableOpconv2d_10/kernel"^training/Adam/AssignVariableOp_32*
dtype0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_90ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_56/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
dtype0*'
_output_shapes
:`

training/Adam/mul_56Multraining/Adam/ReadVariableOp_90#training/Adam/mul_56/ReadVariableOp*
T0*'
_output_shapes
:`
c
training/Adam/ReadVariableOp_91ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_35/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_35Subtraining/Adam/sub_35/xtraining/Adam/ReadVariableOp_91*
T0*
_output_shapes
: 
§
training/Adam/mul_57Multraining/Adam/sub_35Btraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
y
training/Adam/add_34Addtraining/Adam/mul_56training/Adam/mul_57*'
_output_shapes
:`*
T0
c
training/Adam/ReadVariableOp_92ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_58/ReadVariableOpReadVariableOptraining/Adam/Variable_29*
dtype0*'
_output_shapes
:`

training/Adam/mul_58Multraining/Adam/ReadVariableOp_92#training/Adam/mul_58/ReadVariableOp*
T0*'
_output_shapes
:`
c
training/Adam/ReadVariableOp_93ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_36/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_36Subtraining/Adam/sub_36/xtraining/Adam/ReadVariableOp_93*
T0*
_output_shapes
: 

training/Adam/Square_11SquareBtraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
|
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
T0*'
_output_shapes
:`
y
training/Adam/add_35Addtraining/Adam/mul_58training/Adam/mul_59*
T0*'
_output_shapes
:`
v
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_34*
T0*'
_output_shapes
:`
[
training/Adam/Const_25Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_26Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_35training/Adam/Const_26*
T0*'
_output_shapes
:`

training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_25*
T0*'
_output_shapes
:`
o
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
T0*'
_output_shapes
:`
[
training/Adam/add_36/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
|
training/Adam/add_36Addtraining/Adam/Sqrt_12training/Adam/add_36/y*
T0*'
_output_shapes
:`

training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_36*'
_output_shapes
:`*
T0
y
training/Adam/ReadVariableOp_94ReadVariableOpconv2d_11/kernel*
dtype0*'
_output_shapes
:`

training/Adam/sub_37Subtraining/Adam/ReadVariableOp_94training/Adam/truediv_12*
T0*'
_output_shapes
:`
s
!training/Adam/AssignVariableOp_33AssignVariableOptraining/Adam/Variable_11training/Adam/add_34*
dtype0
Ś
training/Adam/ReadVariableOp_95ReadVariableOptraining/Adam/Variable_11"^training/Adam/AssignVariableOp_33*
dtype0*'
_output_shapes
:`
s
!training/Adam/AssignVariableOp_34AssignVariableOptraining/Adam/Variable_29training/Adam/add_35*
dtype0
Ś
training/Adam/ReadVariableOp_96ReadVariableOptraining/Adam/Variable_29"^training/Adam/AssignVariableOp_34*
dtype0*'
_output_shapes
:`
j
!training/Adam/AssignVariableOp_35AssignVariableOpconv2d_11/kerneltraining/Adam/sub_37*
dtype0

training/Adam/ReadVariableOp_97ReadVariableOpconv2d_11/kernel"^training/Adam/AssignVariableOp_35*
dtype0*'
_output_shapes
:`
c
training/Adam/ReadVariableOp_98ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_61/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
dtype0*&
_output_shapes
:``

training/Adam/mul_61Multraining/Adam/ReadVariableOp_98#training/Adam/mul_61/ReadVariableOp*
T0*&
_output_shapes
:``
c
training/Adam/ReadVariableOp_99ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_38/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_38Subtraining/Adam/sub_38/xtraining/Adam/ReadVariableOp_99*
T0*
_output_shapes
: 
Ś
training/Adam/mul_62Multraining/Adam/sub_38Btraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:``*
T0
x
training/Adam/add_37Addtraining/Adam/mul_61training/Adam/mul_62*
T0*&
_output_shapes
:``
d
 training/Adam/ReadVariableOp_100ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_63/ReadVariableOpReadVariableOptraining/Adam/Variable_30*
dtype0*&
_output_shapes
:``

training/Adam/mul_63Mul training/Adam/ReadVariableOp_100#training/Adam/mul_63/ReadVariableOp*
T0*&
_output_shapes
:``
d
 training/Adam/ReadVariableOp_101ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_39/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_39Subtraining/Adam/sub_39/x training/Adam/ReadVariableOp_101*
T0*
_output_shapes
: 

training/Adam/Square_12SquareBtraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
{
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
T0*&
_output_shapes
:``
x
training/Adam/add_38Addtraining/Adam/mul_63training/Adam/mul_64*
T0*&
_output_shapes
:``
u
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_37*
T0*&
_output_shapes
:``
[
training/Adam/Const_27Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_28Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_38training/Adam/Const_28*
T0*&
_output_shapes
:``

training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_27*
T0*&
_output_shapes
:``
n
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*
T0*&
_output_shapes
:``
[
training/Adam/add_39/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
{
training/Adam/add_39Addtraining/Adam/Sqrt_13training/Adam/add_39/y*&
_output_shapes
:``*
T0

training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_39*
T0*&
_output_shapes
:``
y
 training/Adam/ReadVariableOp_102ReadVariableOpconv2d_12/kernel*
dtype0*&
_output_shapes
:``

training/Adam/sub_40Sub training/Adam/ReadVariableOp_102training/Adam/truediv_13*
T0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_36AssignVariableOptraining/Adam/Variable_12training/Adam/add_37*
dtype0
Ś
 training/Adam/ReadVariableOp_103ReadVariableOptraining/Adam/Variable_12"^training/Adam/AssignVariableOp_36*
dtype0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_37AssignVariableOptraining/Adam/Variable_30training/Adam/add_38*
dtype0
Ś
 training/Adam/ReadVariableOp_104ReadVariableOptraining/Adam/Variable_30"^training/Adam/AssignVariableOp_37*
dtype0*&
_output_shapes
:``
j
!training/Adam/AssignVariableOp_38AssignVariableOpconv2d_12/kerneltraining/Adam/sub_40*
dtype0

 training/Adam/ReadVariableOp_105ReadVariableOpconv2d_12/kernel"^training/Adam/AssignVariableOp_38*
dtype0*&
_output_shapes
:``
d
 training/Adam/ReadVariableOp_106ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_66/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*'
_output_shapes
:`

training/Adam/mul_66Mul training/Adam/ReadVariableOp_106#training/Adam/mul_66/ReadVariableOp*'
_output_shapes
:`*
T0
d
 training/Adam/ReadVariableOp_107ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_41/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_41Subtraining/Adam/sub_41/x training/Adam/ReadVariableOp_107*
T0*
_output_shapes
: 
§
training/Adam/mul_67Multraining/Adam/sub_41Btraining/Adam/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
y
training/Adam/add_40Addtraining/Adam/mul_66training/Adam/mul_67*
T0*'
_output_shapes
:`
d
 training/Adam/ReadVariableOp_108ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_68/ReadVariableOpReadVariableOptraining/Adam/Variable_31*
dtype0*'
_output_shapes
:`

training/Adam/mul_68Mul training/Adam/ReadVariableOp_108#training/Adam/mul_68/ReadVariableOp*
T0*'
_output_shapes
:`
d
 training/Adam/ReadVariableOp_109ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_42/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_42Subtraining/Adam/sub_42/x training/Adam/ReadVariableOp_109*
T0*
_output_shapes
: 

training/Adam/Square_13SquareBtraining/Adam/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
|
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
T0*'
_output_shapes
:`
y
training/Adam/add_41Addtraining/Adam/mul_68training/Adam/mul_69*'
_output_shapes
:`*
T0
v
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_40*
T0*'
_output_shapes
:`
[
training/Adam/Const_29Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_30Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_41training/Adam/Const_30*
T0*'
_output_shapes
:`

training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_29*
T0*'
_output_shapes
:`
o
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
T0*'
_output_shapes
:`
[
training/Adam/add_42/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
|
training/Adam/add_42Addtraining/Adam/Sqrt_14training/Adam/add_42/y*'
_output_shapes
:`*
T0

training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_42*
T0*'
_output_shapes
:`
z
 training/Adam/ReadVariableOp_110ReadVariableOpconv2d_13/kernel*
dtype0*'
_output_shapes
:`

training/Adam/sub_43Sub training/Adam/ReadVariableOp_110training/Adam/truediv_14*
T0*'
_output_shapes
:`
s
!training/Adam/AssignVariableOp_39AssignVariableOptraining/Adam/Variable_13training/Adam/add_40*
dtype0
§
 training/Adam/ReadVariableOp_111ReadVariableOptraining/Adam/Variable_13"^training/Adam/AssignVariableOp_39*
dtype0*'
_output_shapes
:`
s
!training/Adam/AssignVariableOp_40AssignVariableOptraining/Adam/Variable_31training/Adam/add_41*
dtype0
§
 training/Adam/ReadVariableOp_112ReadVariableOptraining/Adam/Variable_31"^training/Adam/AssignVariableOp_40*
dtype0*'
_output_shapes
:`
j
!training/Adam/AssignVariableOp_41AssignVariableOpconv2d_13/kerneltraining/Adam/sub_43*
dtype0

 training/Adam/ReadVariableOp_113ReadVariableOpconv2d_13/kernel"^training/Adam/AssignVariableOp_41*
dtype0*'
_output_shapes
:`
d
 training/Adam/ReadVariableOp_114ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_71/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*&
_output_shapes
:``

training/Adam/mul_71Mul training/Adam/ReadVariableOp_114#training/Adam/mul_71/ReadVariableOp*&
_output_shapes
:``*
T0
d
 training/Adam/ReadVariableOp_115ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_44/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_44Subtraining/Adam/sub_44/x training/Adam/ReadVariableOp_115*
T0*
_output_shapes
: 
Ś
training/Adam/mul_72Multraining/Adam/sub_44Btraining/Adam/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
x
training/Adam/add_43Addtraining/Adam/mul_71training/Adam/mul_72*
T0*&
_output_shapes
:``
d
 training/Adam/ReadVariableOp_116ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_73/ReadVariableOpReadVariableOptraining/Adam/Variable_32*
dtype0*&
_output_shapes
:``

training/Adam/mul_73Mul training/Adam/ReadVariableOp_116#training/Adam/mul_73/ReadVariableOp*
T0*&
_output_shapes
:``
d
 training/Adam/ReadVariableOp_117ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_45/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_45Subtraining/Adam/sub_45/x training/Adam/ReadVariableOp_117*
T0*
_output_shapes
: 

training/Adam/Square_14SquareBtraining/Adam/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
{
training/Adam/mul_74Multraining/Adam/sub_45training/Adam/Square_14*
T0*&
_output_shapes
:``
x
training/Adam/add_44Addtraining/Adam/mul_73training/Adam/mul_74*
T0*&
_output_shapes
:``
u
training/Adam/mul_75Multraining/Adam/multraining/Adam/add_43*
T0*&
_output_shapes
:``
[
training/Adam/Const_31Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_32Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_15/MinimumMinimumtraining/Adam/add_44training/Adam/Const_32*
T0*&
_output_shapes
:``

training/Adam/clip_by_value_15Maximum&training/Adam/clip_by_value_15/Minimumtraining/Adam/Const_31*
T0*&
_output_shapes
:``
n
training/Adam/Sqrt_15Sqrttraining/Adam/clip_by_value_15*
T0*&
_output_shapes
:``
[
training/Adam/add_45/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
{
training/Adam/add_45Addtraining/Adam/Sqrt_15training/Adam/add_45/y*&
_output_shapes
:``*
T0

training/Adam/truediv_15RealDivtraining/Adam/mul_75training/Adam/add_45*&
_output_shapes
:``*
T0
y
 training/Adam/ReadVariableOp_118ReadVariableOpconv2d_14/kernel*
dtype0*&
_output_shapes
:``

training/Adam/sub_46Sub training/Adam/ReadVariableOp_118training/Adam/truediv_15*
T0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_42AssignVariableOptraining/Adam/Variable_14training/Adam/add_43*
dtype0
Ś
 training/Adam/ReadVariableOp_119ReadVariableOptraining/Adam/Variable_14"^training/Adam/AssignVariableOp_42*
dtype0*&
_output_shapes
:``
s
!training/Adam/AssignVariableOp_43AssignVariableOptraining/Adam/Variable_32training/Adam/add_44*
dtype0
Ś
 training/Adam/ReadVariableOp_120ReadVariableOptraining/Adam/Variable_32"^training/Adam/AssignVariableOp_43*
dtype0*&
_output_shapes
:``
j
!training/Adam/AssignVariableOp_44AssignVariableOpconv2d_14/kerneltraining/Adam/sub_46*
dtype0

 training/Adam/ReadVariableOp_121ReadVariableOpconv2d_14/kernel"^training/Adam/AssignVariableOp_44*
dtype0*&
_output_shapes
:``
d
 training/Adam/ReadVariableOp_122ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_76/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
dtype0*&
_output_shapes
:a@

training/Adam/mul_76Mul training/Adam/ReadVariableOp_122#training/Adam/mul_76/ReadVariableOp*
T0*&
_output_shapes
:a@
d
 training/Adam/ReadVariableOp_123ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_47/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_47Subtraining/Adam/sub_47/x training/Adam/ReadVariableOp_123*
_output_shapes
: *
T0
Ś
training/Adam/mul_77Multraining/Adam/sub_47Btraining/Adam/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:a@
x
training/Adam/add_46Addtraining/Adam/mul_76training/Adam/mul_77*
T0*&
_output_shapes
:a@
d
 training/Adam/ReadVariableOp_124ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_78/ReadVariableOpReadVariableOptraining/Adam/Variable_33*
dtype0*&
_output_shapes
:a@

training/Adam/mul_78Mul training/Adam/ReadVariableOp_124#training/Adam/mul_78/ReadVariableOp*
T0*&
_output_shapes
:a@
d
 training/Adam/ReadVariableOp_125ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_48/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_48Subtraining/Adam/sub_48/x training/Adam/ReadVariableOp_125*
T0*
_output_shapes
: 

training/Adam/Square_15SquareBtraining/Adam/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:a@
{
training/Adam/mul_79Multraining/Adam/sub_48training/Adam/Square_15*
T0*&
_output_shapes
:a@
x
training/Adam/add_47Addtraining/Adam/mul_78training/Adam/mul_79*&
_output_shapes
:a@*
T0
u
training/Adam/mul_80Multraining/Adam/multraining/Adam/add_46*
T0*&
_output_shapes
:a@
[
training/Adam/Const_33Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_34Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_16/MinimumMinimumtraining/Adam/add_47training/Adam/Const_34*
T0*&
_output_shapes
:a@

training/Adam/clip_by_value_16Maximum&training/Adam/clip_by_value_16/Minimumtraining/Adam/Const_33*
T0*&
_output_shapes
:a@
n
training/Adam/Sqrt_16Sqrttraining/Adam/clip_by_value_16*
T0*&
_output_shapes
:a@
[
training/Adam/add_48/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
{
training/Adam/add_48Addtraining/Adam/Sqrt_16training/Adam/add_48/y*
T0*&
_output_shapes
:a@

training/Adam/truediv_16RealDivtraining/Adam/mul_80training/Adam/add_48*&
_output_shapes
:a@*
T0
y
 training/Adam/ReadVariableOp_126ReadVariableOpconv2d_15/kernel*
dtype0*&
_output_shapes
:a@

training/Adam/sub_49Sub training/Adam/ReadVariableOp_126training/Adam/truediv_16*
T0*&
_output_shapes
:a@
s
!training/Adam/AssignVariableOp_45AssignVariableOptraining/Adam/Variable_15training/Adam/add_46*
dtype0
Ś
 training/Adam/ReadVariableOp_127ReadVariableOptraining/Adam/Variable_15"^training/Adam/AssignVariableOp_45*
dtype0*&
_output_shapes
:a@
s
!training/Adam/AssignVariableOp_46AssignVariableOptraining/Adam/Variable_33training/Adam/add_47*
dtype0
Ś
 training/Adam/ReadVariableOp_128ReadVariableOptraining/Adam/Variable_33"^training/Adam/AssignVariableOp_46*
dtype0*&
_output_shapes
:a@
j
!training/Adam/AssignVariableOp_47AssignVariableOpconv2d_15/kerneltraining/Adam/sub_49*
dtype0

 training/Adam/ReadVariableOp_129ReadVariableOpconv2d_15/kernel"^training/Adam/AssignVariableOp_47*
dtype0*&
_output_shapes
:a@
d
 training/Adam/ReadVariableOp_130ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_81/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
dtype0*&
_output_shapes
:@ 

training/Adam/mul_81Mul training/Adam/ReadVariableOp_130#training/Adam/mul_81/ReadVariableOp*&
_output_shapes
:@ *
T0
d
 training/Adam/ReadVariableOp_131ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_50/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_50Subtraining/Adam/sub_50/x training/Adam/ReadVariableOp_131*
T0*
_output_shapes
: 
Ś
training/Adam/mul_82Multraining/Adam/sub_50Btraining/Adam/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
x
training/Adam/add_49Addtraining/Adam/mul_81training/Adam/mul_82*&
_output_shapes
:@ *
T0
d
 training/Adam/ReadVariableOp_132ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_83/ReadVariableOpReadVariableOptraining/Adam/Variable_34*
dtype0*&
_output_shapes
:@ 

training/Adam/mul_83Mul training/Adam/ReadVariableOp_132#training/Adam/mul_83/ReadVariableOp*
T0*&
_output_shapes
:@ 
d
 training/Adam/ReadVariableOp_133ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_51/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_51Subtraining/Adam/sub_51/x training/Adam/ReadVariableOp_133*
T0*
_output_shapes
: 

training/Adam/Square_16SquareBtraining/Adam/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:@ *
T0
{
training/Adam/mul_84Multraining/Adam/sub_51training/Adam/Square_16*
T0*&
_output_shapes
:@ 
x
training/Adam/add_50Addtraining/Adam/mul_83training/Adam/mul_84*&
_output_shapes
:@ *
T0
u
training/Adam/mul_85Multraining/Adam/multraining/Adam/add_49*
T0*&
_output_shapes
:@ 
[
training/Adam/Const_35Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_36Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_17/MinimumMinimumtraining/Adam/add_50training/Adam/Const_36*
T0*&
_output_shapes
:@ 

training/Adam/clip_by_value_17Maximum&training/Adam/clip_by_value_17/Minimumtraining/Adam/Const_35*
T0*&
_output_shapes
:@ 
n
training/Adam/Sqrt_17Sqrttraining/Adam/clip_by_value_17*&
_output_shapes
:@ *
T0
[
training/Adam/add_51/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
{
training/Adam/add_51Addtraining/Adam/Sqrt_17training/Adam/add_51/y*
T0*&
_output_shapes
:@ 

training/Adam/truediv_17RealDivtraining/Adam/mul_85training/Adam/add_51*
T0*&
_output_shapes
:@ 
y
 training/Adam/ReadVariableOp_134ReadVariableOpconv2d_16/kernel*
dtype0*&
_output_shapes
:@ 

training/Adam/sub_52Sub training/Adam/ReadVariableOp_134training/Adam/truediv_17*&
_output_shapes
:@ *
T0
s
!training/Adam/AssignVariableOp_48AssignVariableOptraining/Adam/Variable_16training/Adam/add_49*
dtype0
Ś
 training/Adam/ReadVariableOp_135ReadVariableOptraining/Adam/Variable_16"^training/Adam/AssignVariableOp_48*
dtype0*&
_output_shapes
:@ 
s
!training/Adam/AssignVariableOp_49AssignVariableOptraining/Adam/Variable_34training/Adam/add_50*
dtype0
Ś
 training/Adam/ReadVariableOp_136ReadVariableOptraining/Adam/Variable_34"^training/Adam/AssignVariableOp_49*
dtype0*&
_output_shapes
:@ 
j
!training/Adam/AssignVariableOp_50AssignVariableOpconv2d_16/kerneltraining/Adam/sub_52*
dtype0

 training/Adam/ReadVariableOp_137ReadVariableOpconv2d_16/kernel"^training/Adam/AssignVariableOp_50*
dtype0*&
_output_shapes
:@ 
d
 training/Adam/ReadVariableOp_138ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_86/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
dtype0*&
_output_shapes
: 

training/Adam/mul_86Mul training/Adam/ReadVariableOp_138#training/Adam/mul_86/ReadVariableOp*
T0*&
_output_shapes
: 
d
 training/Adam/ReadVariableOp_139ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_53/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_53Subtraining/Adam/sub_53/x training/Adam/ReadVariableOp_139*
_output_shapes
: *
T0
Ś
training/Adam/mul_87Multraining/Adam/sub_53Btraining/Adam/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
x
training/Adam/add_52Addtraining/Adam/mul_86training/Adam/mul_87*
T0*&
_output_shapes
: 
d
 training/Adam/ReadVariableOp_140ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_88/ReadVariableOpReadVariableOptraining/Adam/Variable_35*
dtype0*&
_output_shapes
: 

training/Adam/mul_88Mul training/Adam/ReadVariableOp_140#training/Adam/mul_88/ReadVariableOp*&
_output_shapes
: *
T0
d
 training/Adam/ReadVariableOp_141ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_54/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_54Subtraining/Adam/sub_54/x training/Adam/ReadVariableOp_141*
T0*
_output_shapes
: 

training/Adam/Square_17SquareBtraining/Adam/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
{
training/Adam/mul_89Multraining/Adam/sub_54training/Adam/Square_17*&
_output_shapes
: *
T0
x
training/Adam/add_53Addtraining/Adam/mul_88training/Adam/mul_89*
T0*&
_output_shapes
: 
u
training/Adam/mul_90Multraining/Adam/multraining/Adam/add_52*
T0*&
_output_shapes
: 
[
training/Adam/Const_37Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_38Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_18/MinimumMinimumtraining/Adam/add_53training/Adam/Const_38*
T0*&
_output_shapes
: 

training/Adam/clip_by_value_18Maximum&training/Adam/clip_by_value_18/Minimumtraining/Adam/Const_37*&
_output_shapes
: *
T0
n
training/Adam/Sqrt_18Sqrttraining/Adam/clip_by_value_18*
T0*&
_output_shapes
: 
[
training/Adam/add_54/yConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
{
training/Adam/add_54Addtraining/Adam/Sqrt_18training/Adam/add_54/y*
T0*&
_output_shapes
: 

training/Adam/truediv_18RealDivtraining/Adam/mul_90training/Adam/add_54*&
_output_shapes
: *
T0
y
 training/Adam/ReadVariableOp_142ReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
: 

training/Adam/sub_55Sub training/Adam/ReadVariableOp_142training/Adam/truediv_18*
T0*&
_output_shapes
: 
s
!training/Adam/AssignVariableOp_51AssignVariableOptraining/Adam/Variable_17training/Adam/add_52*
dtype0
Ś
 training/Adam/ReadVariableOp_143ReadVariableOptraining/Adam/Variable_17"^training/Adam/AssignVariableOp_51*
dtype0*&
_output_shapes
: 
s
!training/Adam/AssignVariableOp_52AssignVariableOptraining/Adam/Variable_35training/Adam/add_53*
dtype0
Ś
 training/Adam/ReadVariableOp_144ReadVariableOptraining/Adam/Variable_35"^training/Adam/AssignVariableOp_52*
dtype0*&
_output_shapes
: 
j
!training/Adam/AssignVariableOp_53AssignVariableOpconv2d_17/kerneltraining/Adam/sub_55*
dtype0

 training/Adam/ReadVariableOp_145ReadVariableOpconv2d_17/kernel"^training/Adam/AssignVariableOp_53*
dtype0*&
_output_shapes
: 
¤
training/group_depsNoOp	^loss/mul"^metrics/mean_squared_error/Mean_1^training/Adam/ReadVariableOp!^training/Adam/ReadVariableOp_103!^training/Adam/ReadVariableOp_104!^training/Adam/ReadVariableOp_105!^training/Adam/ReadVariableOp_111!^training/Adam/ReadVariableOp_112!^training/Adam/ReadVariableOp_113!^training/Adam/ReadVariableOp_119!^training/Adam/ReadVariableOp_120!^training/Adam/ReadVariableOp_121!^training/Adam/ReadVariableOp_127!^training/Adam/ReadVariableOp_128!^training/Adam/ReadVariableOp_129!^training/Adam/ReadVariableOp_135!^training/Adam/ReadVariableOp_136!^training/Adam/ReadVariableOp_137!^training/Adam/ReadVariableOp_143!^training/Adam/ReadVariableOp_144!^training/Adam/ReadVariableOp_145 ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7 ^training/Adam/ReadVariableOp_71 ^training/Adam/ReadVariableOp_72 ^training/Adam/ReadVariableOp_73 ^training/Adam/ReadVariableOp_79^training/Adam/ReadVariableOp_8 ^training/Adam/ReadVariableOp_80 ^training/Adam/ReadVariableOp_81 ^training/Adam/ReadVariableOp_87 ^training/Adam/ReadVariableOp_88 ^training/Adam/ReadVariableOp_89^training/Adam/ReadVariableOp_9 ^training/Adam/ReadVariableOp_95 ^training/Adam/ReadVariableOp_96 ^training/Adam/ReadVariableOp_97
A

group_depsNoOp	^loss/mul"^metrics/mean_squared_error/Mean_1
Z
VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
]
VarIsInitializedOp_1VarIsInitializedOptraining/Adam/Variable_38*
_output_shapes
: 
]
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
]
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/Variable_41*
_output_shapes
: 
]
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
]
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/Variable_30*
_output_shapes
: 
T
VarIsInitializedOp_6VarIsInitializedOpconv2d_16/kernel*
_output_shapes
: 
]
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/Variable_50*
_output_shapes
: 
T
VarIsInitializedOp_8VarIsInitializedOpconv2d_14/kernel*
_output_shapes
: 
\
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
U
VarIsInitializedOp_10VarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
^
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
^
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable_49*
_output_shapes
: 
T
VarIsInitializedOp_13VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
^
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
^
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
^
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
[
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
^
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
^
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_46*
_output_shapes
: 
U
VarIsInitializedOp_20VarIsInitializedOpconv2d_17/kernel*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpAdam/iterations*
_output_shapes
: 
^
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
^
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/Variable_51*
_output_shapes
: 
L
VarIsInitializedOp_24VarIsInitializedOpAdam/lr*
_output_shapes
: 
^
VarIsInitializedOp_25VarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
^
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/Variable_37*
_output_shapes
: 
P
VarIsInitializedOp_27VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
^
VarIsInitializedOp_28VarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
P
VarIsInitializedOp_29VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
]
VarIsInitializedOp_30VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
O
VarIsInitializedOp_31VarIsInitializedOp
Adam/decay*
_output_shapes
: 
^
VarIsInitializedOp_32VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
T
VarIsInitializedOp_33VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
T
VarIsInitializedOp_34VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
^
VarIsInitializedOp_35VarIsInitializedOptraining/Adam/Variable_36*
_output_shapes
: 
^
VarIsInitializedOp_36VarIsInitializedOptraining/Adam/Variable_45*
_output_shapes
: 
^
VarIsInitializedOp_37VarIsInitializedOptraining/Adam/Variable_47*
_output_shapes
: 
^
VarIsInitializedOp_38VarIsInitializedOptraining/Adam/Variable_35*
_output_shapes
: 
]
VarIsInitializedOp_39VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
]
VarIsInitializedOp_40VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
^
VarIsInitializedOp_41VarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
^
VarIsInitializedOp_42VarIsInitializedOptraining/Adam/Variable_40*
_output_shapes
: 
^
VarIsInitializedOp_43VarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
^
VarIsInitializedOp_44VarIsInitializedOptraining/Adam/Variable_53*
_output_shapes
: 
U
VarIsInitializedOp_45VarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 
U
VarIsInitializedOp_46VarIsInitializedOpconv2d_15/kernel*
_output_shapes
: 
^
VarIsInitializedOp_47VarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
T
VarIsInitializedOp_48VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
]
VarIsInitializedOp_49VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
U
VarIsInitializedOp_50VarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 
^
VarIsInitializedOp_51VarIsInitializedOptraining/Adam/Variable_34*
_output_shapes
: 
T
VarIsInitializedOp_52VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
^
VarIsInitializedOp_53VarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
]
VarIsInitializedOp_54VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
^
VarIsInitializedOp_55VarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
^
VarIsInitializedOp_56VarIsInitializedOptraining/Adam/Variable_48*
_output_shapes
: 
R
VarIsInitializedOp_57VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
^
VarIsInitializedOp_58VarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
^
VarIsInitializedOp_59VarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
^
VarIsInitializedOp_60VarIsInitializedOptraining/Adam/Variable_32*
_output_shapes
: 
^
VarIsInitializedOp_61VarIsInitializedOptraining/Adam/Variable_39*
_output_shapes
: 
T
VarIsInitializedOp_62VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
^
VarIsInitializedOp_63VarIsInitializedOptraining/Adam/Variable_33*
_output_shapes
: 
]
VarIsInitializedOp_64VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
T
VarIsInitializedOp_65VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
T
VarIsInitializedOp_66VarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
]
VarIsInitializedOp_67VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
^
VarIsInitializedOp_68VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
T
VarIsInitializedOp_69VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
^
VarIsInitializedOp_70VarIsInitializedOptraining/Adam/Variable_42*
_output_shapes
: 
^
VarIsInitializedOp_71VarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
U
VarIsInitializedOp_72VarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
^
VarIsInitializedOp_73VarIsInitializedOptraining/Adam/Variable_43*
_output_shapes
: 
^
VarIsInitializedOp_74VarIsInitializedOptraining/Adam/Variable_31*
_output_shapes
: 
^
VarIsInitializedOp_75VarIsInitializedOptraining/Adam/Variable_44*
_output_shapes
: 
^
VarIsInitializedOp_76VarIsInitializedOptraining/Adam/Variable_52*
_output_shapes
: 

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^conv2d/kernel/Assign^conv2d_1/kernel/Assign^conv2d_10/kernel/Assign^conv2d_11/kernel/Assign^conv2d_12/kernel/Assign^conv2d_13/kernel/Assign^conv2d_14/kernel/Assign^conv2d_15/kernel/Assign^conv2d_16/kernel/Assign^conv2d_17/kernel/Assign^conv2d_2/kernel/Assign^conv2d_3/kernel/Assign^conv2d_4/kernel/Assign^conv2d_5/kernel/Assign^conv2d_6/kernel/Assign^conv2d_7/kernel/Assign^conv2d_8/kernel/Assign^conv2d_9/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign ^training/Adam/Variable_4/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign!^training/Adam/Variable_42/Assign!^training/Adam/Variable_43/Assign!^training/Adam/Variable_44/Assign!^training/Adam/Variable_45/Assign!^training/Adam/Variable_46/Assign!^training/Adam/Variable_47/Assign!^training/Adam/Variable_48/Assign!^training/Adam/Variable_49/Assign ^training/Adam/Variable_5/Assign!^training/Adam/Variable_50/Assign!^training/Adam/Variable_51/Assign!^training/Adam/Variable_52/Assign!^training/Adam/Variable_53/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
L
PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
G
AssignVariableOpAssignVariableOpAdam/lrPlaceholder*
dtype0
a
ReadVariableOpReadVariableOpAdam/lr^AssignVariableOp*
dtype0*
_output_shapes
: 
&
group_deps_1NoOp^activation/Tanh
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_fde37239870b40a8bf21bbb808971f93/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*ł
valueŠBŚMBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBconv2d/kernelBconv2d_1/kernelBconv2d_10/kernelBconv2d_11/kernelBconv2d_12/kernelBconv2d_13/kernelBconv2d_14/kernelBconv2d_15/kernelBconv2d_16/kernelBconv2d_17/kernelBconv2d_2/kernelBconv2d_3/kernelBconv2d_4/kernelBconv2d_5/kernelBconv2d_6/kernelBconv2d_7/kernelBconv2d_8/kernelBconv2d_9/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_36Btraining/Adam/Variable_37Btraining/Adam/Variable_38Btraining/Adam/Variable_39Btraining/Adam/Variable_4Btraining/Adam/Variable_40Btraining/Adam/Variable_41Btraining/Adam/Variable_42Btraining/Adam/Variable_43Btraining/Adam/Variable_44Btraining/Adam/Variable_45Btraining/Adam/Variable_46Btraining/Adam/Variable_47Btraining/Adam/Variable_48Btraining/Adam/Variable_49Btraining/Adam/Variable_5Btraining/Adam/Variable_50Btraining/Adam/Variable_51Btraining/Adam/Variable_52Btraining/Adam/Variable_53Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:M

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:M*Ż
valueĽB˘MB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ń
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp-training/Adam/Variable_12/Read/ReadVariableOp-training/Adam/Variable_13/Read/ReadVariableOp-training/Adam/Variable_14/Read/ReadVariableOp-training/Adam/Variable_15/Read/ReadVariableOp-training/Adam/Variable_16/Read/ReadVariableOp-training/Adam/Variable_17/Read/ReadVariableOp-training/Adam/Variable_18/Read/ReadVariableOp-training/Adam/Variable_19/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp-training/Adam/Variable_20/Read/ReadVariableOp-training/Adam/Variable_21/Read/ReadVariableOp-training/Adam/Variable_22/Read/ReadVariableOp-training/Adam/Variable_23/Read/ReadVariableOp-training/Adam/Variable_24/Read/ReadVariableOp-training/Adam/Variable_25/Read/ReadVariableOp-training/Adam/Variable_26/Read/ReadVariableOp-training/Adam/Variable_27/Read/ReadVariableOp-training/Adam/Variable_28/Read/ReadVariableOp-training/Adam/Variable_29/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp-training/Adam/Variable_30/Read/ReadVariableOp-training/Adam/Variable_31/Read/ReadVariableOp-training/Adam/Variable_32/Read/ReadVariableOp-training/Adam/Variable_33/Read/ReadVariableOp-training/Adam/Variable_34/Read/ReadVariableOp-training/Adam/Variable_35/Read/ReadVariableOp-training/Adam/Variable_36/Read/ReadVariableOp-training/Adam/Variable_37/Read/ReadVariableOp-training/Adam/Variable_38/Read/ReadVariableOp-training/Adam/Variable_39/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp-training/Adam/Variable_40/Read/ReadVariableOp-training/Adam/Variable_41/Read/ReadVariableOp-training/Adam/Variable_42/Read/ReadVariableOp-training/Adam/Variable_43/Read/ReadVariableOp-training/Adam/Variable_44/Read/ReadVariableOp-training/Adam/Variable_45/Read/ReadVariableOp-training/Adam/Variable_46/Read/ReadVariableOp-training/Adam/Variable_47/Read/ReadVariableOp-training/Adam/Variable_48/Read/ReadVariableOp-training/Adam/Variable_49/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp-training/Adam/Variable_50/Read/ReadVariableOp-training/Adam/Variable_51/Read/ReadVariableOp-training/Adam/Variable_52/Read/ReadVariableOp-training/Adam/Variable_53/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOp"/device:CPU:0*[
dtypesQ
O2M	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*ł
valueŠBŚMBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBconv2d/kernelBconv2d_1/kernelBconv2d_10/kernelBconv2d_11/kernelBconv2d_12/kernelBconv2d_13/kernelBconv2d_14/kernelBconv2d_15/kernelBconv2d_16/kernelBconv2d_17/kernelBconv2d_2/kernelBconv2d_3/kernelBconv2d_4/kernelBconv2d_5/kernelBconv2d_6/kernelBconv2d_7/kernelBconv2d_8/kernelBconv2d_9/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_36Btraining/Adam/Variable_37Btraining/Adam/Variable_38Btraining/Adam/Variable_39Btraining/Adam/Variable_4Btraining/Adam/Variable_40Btraining/Adam/Variable_41Btraining/Adam/Variable_42Btraining/Adam/Variable_43Btraining/Adam/Variable_44Btraining/Adam/Variable_45Btraining/Adam/Variable_46Btraining/Adam/Variable_47Btraining/Adam/Variable_48Btraining/Adam/Variable_49Btraining/Adam/Variable_5Btraining/Adam/Variable_50Btraining/Adam/Variable_51Btraining/Adam/Variable_52Btraining/Adam/Variable_53Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:M

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ż
valueĽB˘MB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:M

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Ę
_output_shapesˇ
´:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*[
dtypesQ
O2M	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
X
save/AssignVariableOp_5AssignVariableOpconv2d/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
Z
save/AssignVariableOp_6AssignVariableOpconv2d_1/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
[
save/AssignVariableOp_7AssignVariableOpconv2d_10/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
_output_shapes
:*
T0
[
save/AssignVariableOp_8AssignVariableOpconv2d_11/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
\
save/AssignVariableOp_9AssignVariableOpconv2d_12/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
]
save/AssignVariableOp_10AssignVariableOpconv2d_13/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
]
save/AssignVariableOp_11AssignVariableOpconv2d_14/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0
]
save/AssignVariableOp_12AssignVariableOpconv2d_15/kernelsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
]
save/AssignVariableOp_13AssignVariableOpconv2d_16/kernelsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
]
save/AssignVariableOp_14AssignVariableOpconv2d_17/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
\
save/AssignVariableOp_15AssignVariableOpconv2d_2/kernelsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
\
save/AssignVariableOp_16AssignVariableOpconv2d_3/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
\
save/AssignVariableOp_17AssignVariableOpconv2d_4/kernelsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
_output_shapes
:*
T0
\
save/AssignVariableOp_18AssignVariableOpconv2d_5/kernelsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_19AssignVariableOpconv2d_6/kernelsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
\
save/AssignVariableOp_20AssignVariableOpconv2d_7/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
\
save/AssignVariableOp_21AssignVariableOpconv2d_8/kernelsave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
\
save/AssignVariableOp_22AssignVariableOpconv2d_9/kernelsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
c
save/AssignVariableOp_23AssignVariableOptraining/Adam/Variablesave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
e
save/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_1save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
f
save/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_10save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
f
save/AssignVariableOp_26AssignVariableOptraining/Adam/Variable_11save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
f
save/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_12save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
f
save/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_13save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
f
save/AssignVariableOp_29AssignVariableOptraining/Adam/Variable_14save/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
f
save/AssignVariableOp_30AssignVariableOptraining/Adam/Variable_15save/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
f
save/AssignVariableOp_31AssignVariableOptraining/Adam/Variable_16save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
f
save/AssignVariableOp_32AssignVariableOptraining/Adam/Variable_17save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
f
save/AssignVariableOp_33AssignVariableOptraining/Adam/Variable_18save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
f
save/AssignVariableOp_34AssignVariableOptraining/Adam/Variable_19save/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
e
save/AssignVariableOp_35AssignVariableOptraining/Adam/Variable_2save/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
_output_shapes
:*
T0
f
save/AssignVariableOp_36AssignVariableOptraining/Adam/Variable_20save/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
_output_shapes
:*
T0
f
save/AssignVariableOp_37AssignVariableOptraining/Adam/Variable_21save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
f
save/AssignVariableOp_38AssignVariableOptraining/Adam/Variable_22save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
f
save/AssignVariableOp_39AssignVariableOptraining/Adam/Variable_23save/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
f
save/AssignVariableOp_40AssignVariableOptraining/Adam/Variable_24save/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
f
save/AssignVariableOp_41AssignVariableOptraining/Adam/Variable_25save/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
_output_shapes
:*
T0
f
save/AssignVariableOp_42AssignVariableOptraining/Adam/Variable_26save/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
_output_shapes
:*
T0
f
save/AssignVariableOp_43AssignVariableOptraining/Adam/Variable_27save/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
f
save/AssignVariableOp_44AssignVariableOptraining/Adam/Variable_28save/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
f
save/AssignVariableOp_45AssignVariableOptraining/Adam/Variable_29save/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
e
save/AssignVariableOp_46AssignVariableOptraining/Adam/Variable_3save/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
f
save/AssignVariableOp_47AssignVariableOptraining/Adam/Variable_30save/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
f
save/AssignVariableOp_48AssignVariableOptraining/Adam/Variable_31save/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
_output_shapes
:*
T0
f
save/AssignVariableOp_49AssignVariableOptraining/Adam/Variable_32save/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
_output_shapes
:*
T0
f
save/AssignVariableOp_50AssignVariableOptraining/Adam/Variable_33save/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:
f
save/AssignVariableOp_51AssignVariableOptraining/Adam/Variable_34save/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
T0*
_output_shapes
:
f
save/AssignVariableOp_52AssignVariableOptraining/Adam/Variable_35save/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
_output_shapes
:*
T0
f
save/AssignVariableOp_53AssignVariableOptraining/Adam/Variable_36save/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
_output_shapes
:*
T0
f
save/AssignVariableOp_54AssignVariableOptraining/Adam/Variable_37save/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
_output_shapes
:*
T0
f
save/AssignVariableOp_55AssignVariableOptraining/Adam/Variable_38save/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:
f
save/AssignVariableOp_56AssignVariableOptraining/Adam/Variable_39save/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:
e
save/AssignVariableOp_57AssignVariableOptraining/Adam/Variable_4save/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:58*
T0*
_output_shapes
:
f
save/AssignVariableOp_58AssignVariableOptraining/Adam/Variable_40save/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:59*
T0*
_output_shapes
:
f
save/AssignVariableOp_59AssignVariableOptraining/Adam/Variable_41save/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:60*
T0*
_output_shapes
:
f
save/AssignVariableOp_60AssignVariableOptraining/Adam/Variable_42save/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:61*
_output_shapes
:*
T0
f
save/AssignVariableOp_61AssignVariableOptraining/Adam/Variable_43save/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
T0*
_output_shapes
:
f
save/AssignVariableOp_62AssignVariableOptraining/Adam/Variable_44save/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
T0*
_output_shapes
:
f
save/AssignVariableOp_63AssignVariableOptraining/Adam/Variable_45save/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
f
save/AssignVariableOp_64AssignVariableOptraining/Adam/Variable_46save/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
f
save/AssignVariableOp_65AssignVariableOptraining/Adam/Variable_47save/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
f
save/AssignVariableOp_66AssignVariableOptraining/Adam/Variable_48save/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
f
save/AssignVariableOp_67AssignVariableOptraining/Adam/Variable_49save/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
e
save/AssignVariableOp_68AssignVariableOptraining/Adam/Variable_5save/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:69*
_output_shapes
:*
T0
f
save/AssignVariableOp_69AssignVariableOptraining/Adam/Variable_50save/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:70*
T0*
_output_shapes
:
f
save/AssignVariableOp_70AssignVariableOptraining/Adam/Variable_51save/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:71*
_output_shapes
:*
T0
f
save/AssignVariableOp_71AssignVariableOptraining/Adam/Variable_52save/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:
f
save/AssignVariableOp_72AssignVariableOptraining/Adam/Variable_53save/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
T0*
_output_shapes
:
e
save/AssignVariableOp_73AssignVariableOptraining/Adam/Variable_6save/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:74*
T0*
_output_shapes
:
e
save/AssignVariableOp_74AssignVariableOptraining/Adam/Variable_7save/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
e
save/AssignVariableOp_75AssignVariableOptraining/Adam/Variable_8save/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:
e
save/AssignVariableOp_76AssignVariableOptraining/Adam/Variable_9save/Identity_77*
dtype0
­
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"S
	variablesSS
s
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2!conv2d/kernel/Initializer/mul_1:08
{
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2#conv2d_1/kernel/Initializer/mul_1:08
{
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2#conv2d_2/kernel/Initializer/mul_1:08
{
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2#conv2d_3/kernel/Initializer/mul_1:08
{
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2#conv2d_4/kernel/Initializer/mul_1:08
{
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2#conv2d_5/kernel/Initializer/mul_1:08
{
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2#conv2d_6/kernel/Initializer/mul_1:08
{
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2#conv2d_7/kernel/Initializer/mul_1:08
{
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2#conv2d_8/kernel/Initializer/mul_1:08
{
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2#conv2d_9/kernel/Initializer/mul_1:08

conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2$conv2d_10/kernel/Initializer/mul_1:08

conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2$conv2d_11/kernel/Initializer/mul_1:08

conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2$conv2d_12/kernel/Initializer/mul_1:08

conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2$conv2d_13/kernel/Initializer/mul_1:08

conv2d_14/kernel:0conv2d_14/kernel/Assign&conv2d_14/kernel/Read/ReadVariableOp:0(2$conv2d_14/kernel/Initializer/mul_1:08

conv2d_15/kernel:0conv2d_15/kernel/Assign&conv2d_15/kernel/Read/ReadVariableOp:0(2$conv2d_15/kernel/Initializer/mul_1:08

conv2d_16/kernel:0conv2d_16/kernel/Assign&conv2d_16/kernel/Read/ReadVariableOp:0(2$conv2d_16/kernel/Initializer/mul_1:08

conv2d_17/kernel:0conv2d_17/kernel/Assign&conv2d_17/kernel/Read/ReadVariableOp:0(2$conv2d_17/kernel/Initializer/mul_1:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08

training/Adam/Variable_27:0 training/Adam/Variable_27/Assign/training/Adam/Variable_27/Read/ReadVariableOp:0(2training/Adam/zeros_27:08

training/Adam/Variable_28:0 training/Adam/Variable_28/Assign/training/Adam/Variable_28/Read/ReadVariableOp:0(2training/Adam/zeros_28:08

training/Adam/Variable_29:0 training/Adam/Variable_29/Assign/training/Adam/Variable_29/Read/ReadVariableOp:0(2training/Adam/zeros_29:08

training/Adam/Variable_30:0 training/Adam/Variable_30/Assign/training/Adam/Variable_30/Read/ReadVariableOp:0(2training/Adam/zeros_30:08

training/Adam/Variable_31:0 training/Adam/Variable_31/Assign/training/Adam/Variable_31/Read/ReadVariableOp:0(2training/Adam/zeros_31:08

training/Adam/Variable_32:0 training/Adam/Variable_32/Assign/training/Adam/Variable_32/Read/ReadVariableOp:0(2training/Adam/zeros_32:08

training/Adam/Variable_33:0 training/Adam/Variable_33/Assign/training/Adam/Variable_33/Read/ReadVariableOp:0(2training/Adam/zeros_33:08

training/Adam/Variable_34:0 training/Adam/Variable_34/Assign/training/Adam/Variable_34/Read/ReadVariableOp:0(2training/Adam/zeros_34:08

training/Adam/Variable_35:0 training/Adam/Variable_35/Assign/training/Adam/Variable_35/Read/ReadVariableOp:0(2training/Adam/zeros_35:08

training/Adam/Variable_36:0 training/Adam/Variable_36/Assign/training/Adam/Variable_36/Read/ReadVariableOp:0(2training/Adam/zeros_36:08

training/Adam/Variable_37:0 training/Adam/Variable_37/Assign/training/Adam/Variable_37/Read/ReadVariableOp:0(2training/Adam/zeros_37:08

training/Adam/Variable_38:0 training/Adam/Variable_38/Assign/training/Adam/Variable_38/Read/ReadVariableOp:0(2training/Adam/zeros_38:08

training/Adam/Variable_39:0 training/Adam/Variable_39/Assign/training/Adam/Variable_39/Read/ReadVariableOp:0(2training/Adam/zeros_39:08

training/Adam/Variable_40:0 training/Adam/Variable_40/Assign/training/Adam/Variable_40/Read/ReadVariableOp:0(2training/Adam/zeros_40:08

training/Adam/Variable_41:0 training/Adam/Variable_41/Assign/training/Adam/Variable_41/Read/ReadVariableOp:0(2training/Adam/zeros_41:08

training/Adam/Variable_42:0 training/Adam/Variable_42/Assign/training/Adam/Variable_42/Read/ReadVariableOp:0(2training/Adam/zeros_42:08

training/Adam/Variable_43:0 training/Adam/Variable_43/Assign/training/Adam/Variable_43/Read/ReadVariableOp:0(2training/Adam/zeros_43:08

training/Adam/Variable_44:0 training/Adam/Variable_44/Assign/training/Adam/Variable_44/Read/ReadVariableOp:0(2training/Adam/zeros_44:08

training/Adam/Variable_45:0 training/Adam/Variable_45/Assign/training/Adam/Variable_45/Read/ReadVariableOp:0(2training/Adam/zeros_45:08

training/Adam/Variable_46:0 training/Adam/Variable_46/Assign/training/Adam/Variable_46/Read/ReadVariableOp:0(2training/Adam/zeros_46:08

training/Adam/Variable_47:0 training/Adam/Variable_47/Assign/training/Adam/Variable_47/Read/ReadVariableOp:0(2training/Adam/zeros_47:08

training/Adam/Variable_48:0 training/Adam/Variable_48/Assign/training/Adam/Variable_48/Read/ReadVariableOp:0(2training/Adam/zeros_48:08

training/Adam/Variable_49:0 training/Adam/Variable_49/Assign/training/Adam/Variable_49/Read/ReadVariableOp:0(2training/Adam/zeros_49:08

training/Adam/Variable_50:0 training/Adam/Variable_50/Assign/training/Adam/Variable_50/Read/ReadVariableOp:0(2training/Adam/zeros_50:08

training/Adam/Variable_51:0 training/Adam/Variable_51/Assign/training/Adam/Variable_51/Read/ReadVariableOp:0(2training/Adam/zeros_51:08

training/Adam/Variable_52:0 training/Adam/Variable_52/Assign/training/Adam/Variable_52/Read/ReadVariableOp:0(2training/Adam/zeros_52:08

training/Adam/Variable_53:0 training/Adam/Variable_53/Assign/training/Adam/Variable_53/Read/ReadVariableOp:0(2training/Adam/zeros_53:08"ŠS
trainable_variablesSS
s
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2!conv2d/kernel/Initializer/mul_1:08
{
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2#conv2d_1/kernel/Initializer/mul_1:08
{
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2#conv2d_2/kernel/Initializer/mul_1:08
{
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2#conv2d_3/kernel/Initializer/mul_1:08
{
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2#conv2d_4/kernel/Initializer/mul_1:08
{
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2#conv2d_5/kernel/Initializer/mul_1:08
{
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2#conv2d_6/kernel/Initializer/mul_1:08
{
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2#conv2d_7/kernel/Initializer/mul_1:08
{
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2#conv2d_8/kernel/Initializer/mul_1:08
{
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2#conv2d_9/kernel/Initializer/mul_1:08

conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2$conv2d_10/kernel/Initializer/mul_1:08

conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2$conv2d_11/kernel/Initializer/mul_1:08

conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2$conv2d_12/kernel/Initializer/mul_1:08

conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2$conv2d_13/kernel/Initializer/mul_1:08

conv2d_14/kernel:0conv2d_14/kernel/Assign&conv2d_14/kernel/Read/ReadVariableOp:0(2$conv2d_14/kernel/Initializer/mul_1:08

conv2d_15/kernel:0conv2d_15/kernel/Assign&conv2d_15/kernel/Read/ReadVariableOp:0(2$conv2d_15/kernel/Initializer/mul_1:08

conv2d_16/kernel:0conv2d_16/kernel/Assign&conv2d_16/kernel/Read/ReadVariableOp:0(2$conv2d_16/kernel/Initializer/mul_1:08

conv2d_17/kernel:0conv2d_17/kernel/Assign&conv2d_17/kernel/Read/ReadVariableOp:0(2$conv2d_17/kernel/Initializer/mul_1:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08

training/Adam/Variable_27:0 training/Adam/Variable_27/Assign/training/Adam/Variable_27/Read/ReadVariableOp:0(2training/Adam/zeros_27:08

training/Adam/Variable_28:0 training/Adam/Variable_28/Assign/training/Adam/Variable_28/Read/ReadVariableOp:0(2training/Adam/zeros_28:08

training/Adam/Variable_29:0 training/Adam/Variable_29/Assign/training/Adam/Variable_29/Read/ReadVariableOp:0(2training/Adam/zeros_29:08

training/Adam/Variable_30:0 training/Adam/Variable_30/Assign/training/Adam/Variable_30/Read/ReadVariableOp:0(2training/Adam/zeros_30:08

training/Adam/Variable_31:0 training/Adam/Variable_31/Assign/training/Adam/Variable_31/Read/ReadVariableOp:0(2training/Adam/zeros_31:08

training/Adam/Variable_32:0 training/Adam/Variable_32/Assign/training/Adam/Variable_32/Read/ReadVariableOp:0(2training/Adam/zeros_32:08

training/Adam/Variable_33:0 training/Adam/Variable_33/Assign/training/Adam/Variable_33/Read/ReadVariableOp:0(2training/Adam/zeros_33:08

training/Adam/Variable_34:0 training/Adam/Variable_34/Assign/training/Adam/Variable_34/Read/ReadVariableOp:0(2training/Adam/zeros_34:08

training/Adam/Variable_35:0 training/Adam/Variable_35/Assign/training/Adam/Variable_35/Read/ReadVariableOp:0(2training/Adam/zeros_35:08

training/Adam/Variable_36:0 training/Adam/Variable_36/Assign/training/Adam/Variable_36/Read/ReadVariableOp:0(2training/Adam/zeros_36:08

training/Adam/Variable_37:0 training/Adam/Variable_37/Assign/training/Adam/Variable_37/Read/ReadVariableOp:0(2training/Adam/zeros_37:08

training/Adam/Variable_38:0 training/Adam/Variable_38/Assign/training/Adam/Variable_38/Read/ReadVariableOp:0(2training/Adam/zeros_38:08

training/Adam/Variable_39:0 training/Adam/Variable_39/Assign/training/Adam/Variable_39/Read/ReadVariableOp:0(2training/Adam/zeros_39:08

training/Adam/Variable_40:0 training/Adam/Variable_40/Assign/training/Adam/Variable_40/Read/ReadVariableOp:0(2training/Adam/zeros_40:08

training/Adam/Variable_41:0 training/Adam/Variable_41/Assign/training/Adam/Variable_41/Read/ReadVariableOp:0(2training/Adam/zeros_41:08

training/Adam/Variable_42:0 training/Adam/Variable_42/Assign/training/Adam/Variable_42/Read/ReadVariableOp:0(2training/Adam/zeros_42:08

training/Adam/Variable_43:0 training/Adam/Variable_43/Assign/training/Adam/Variable_43/Read/ReadVariableOp:0(2training/Adam/zeros_43:08

training/Adam/Variable_44:0 training/Adam/Variable_44/Assign/training/Adam/Variable_44/Read/ReadVariableOp:0(2training/Adam/zeros_44:08

training/Adam/Variable_45:0 training/Adam/Variable_45/Assign/training/Adam/Variable_45/Read/ReadVariableOp:0(2training/Adam/zeros_45:08

training/Adam/Variable_46:0 training/Adam/Variable_46/Assign/training/Adam/Variable_46/Read/ReadVariableOp:0(2training/Adam/zeros_46:08

training/Adam/Variable_47:0 training/Adam/Variable_47/Assign/training/Adam/Variable_47/Read/ReadVariableOp:0(2training/Adam/zeros_47:08

training/Adam/Variable_48:0 training/Adam/Variable_48/Assign/training/Adam/Variable_48/Read/ReadVariableOp:0(2training/Adam/zeros_48:08

training/Adam/Variable_49:0 training/Adam/Variable_49/Assign/training/Adam/Variable_49/Read/ReadVariableOp:0(2training/Adam/zeros_49:08

training/Adam/Variable_50:0 training/Adam/Variable_50/Assign/training/Adam/Variable_50/Read/ReadVariableOp:0(2training/Adam/zeros_50:08

training/Adam/Variable_51:0 training/Adam/Variable_51/Assign/training/Adam/Variable_51/Read/ReadVariableOp:0(2training/Adam/zeros_51:08

training/Adam/Variable_52:0 training/Adam/Variable_52/Assign/training/Adam/Variable_52/Read/ReadVariableOp:0(2training/Adam/zeros_52:08

training/Adam/Variable_53:0 training/Adam/Variable_53/Assign/training/Adam/Variable_53/Read/ReadVariableOp:0(2training/Adam/zeros_53:08*¤
serving_default
3
	input_img&
img:0˙˙˙˙˙˙˙˙˙=
outputs2
activation/Tanh:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict