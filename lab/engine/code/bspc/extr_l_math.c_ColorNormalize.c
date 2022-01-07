
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;


 int VectorScale (float*,float,float*) ;

vec_t ColorNormalize (vec3_t in, vec3_t out)
{
 float max, scale;

 max = in[0];
 if (in[1] > max)
  max = in[1];
 if (in[2] > max)
  max = in[2];

 if (max == 0)
  return 0;

 scale = 1.0 / max;

 VectorScale (in, scale, out);

 return max;
}
