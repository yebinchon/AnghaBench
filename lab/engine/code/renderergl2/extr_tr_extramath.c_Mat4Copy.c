
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mat4_t ;



void Mat4Copy( const mat4_t in, mat4_t out )
{
 out[ 0] = in[ 0]; out[ 4] = in[ 4]; out[ 8] = in[ 8]; out[12] = in[12];
 out[ 1] = in[ 1]; out[ 5] = in[ 5]; out[ 9] = in[ 9]; out[13] = in[13];
 out[ 2] = in[ 2]; out[ 6] = in[ 6]; out[10] = in[10]; out[14] = in[14];
 out[ 3] = in[ 3]; out[ 7] = in[ 7]; out[11] = in[11]; out[15] = in[15];
}
