
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef float* mat4_t ;


 float DotProduct (float*,float*) ;
 int VectorCopy (float* const,float*) ;
 int VectorScale (float*,float,float*) ;

void Mat4SimpleInverse( const mat4_t in, mat4_t out)
{
 vec3_t v;
 float invSqrLen;

 VectorCopy(in + 0, v);
 invSqrLen = 1.0f / DotProduct(v, v); VectorScale(v, invSqrLen, v);
 out[ 0] = v[0]; out[ 4] = v[1]; out[ 8] = v[2]; out[12] = -DotProduct(v, &in[12]);

 VectorCopy(in + 4, v);
 invSqrLen = 1.0f / DotProduct(v, v); VectorScale(v, invSqrLen, v);
 out[ 1] = v[0]; out[ 5] = v[1]; out[ 9] = v[2]; out[13] = -DotProduct(v, &in[12]);

 VectorCopy(in + 8, v);
 invSqrLen = 1.0f / DotProduct(v, v); VectorScale(v, invSqrLen, v);
 out[ 2] = v[0]; out[ 6] = v[1]; out[10] = v[2]; out[14] = -DotProduct(v, &in[12]);

 out[ 3] = 0.0f; out[ 7] = 0.0f; out[11] = 0.0f; out[15] = 1.0f;
}
