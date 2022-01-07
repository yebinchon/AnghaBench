
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float DotProduct (float*,float*) ;
 int VectorScale (float*,float,float*) ;

__attribute__((used)) static void Matrix34Invert( float *inMat, float *outMat )
{
 vec3_t trans;
 float invSqrLen, *v;

 outMat[ 0] = inMat[ 0]; outMat[ 1] = inMat[ 4]; outMat[ 2] = inMat[ 8];
 outMat[ 4] = inMat[ 1]; outMat[ 5] = inMat[ 5]; outMat[ 6] = inMat[ 9];
 outMat[ 8] = inMat[ 2]; outMat[ 9] = inMat[ 6]; outMat[10] = inMat[10];

 v = outMat + 0; invSqrLen = 1.0f / DotProduct(v, v); VectorScale(v, invSqrLen, v);
 v = outMat + 4; invSqrLen = 1.0f / DotProduct(v, v); VectorScale(v, invSqrLen, v);
 v = outMat + 8; invSqrLen = 1.0f / DotProduct(v, v); VectorScale(v, invSqrLen, v);

 trans[0] = inMat[ 3];
 trans[1] = inMat[ 7];
 trans[2] = inMat[11];

 outMat[ 3] = -DotProduct(outMat + 0, trans);
 outMat[ 7] = -DotProduct(outMat + 4, trans);
 outMat[11] = -DotProduct(outMat + 8, trans);
}
