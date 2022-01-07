
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef float int16_t ;



void R_VaoPackNormal(int16_t *out, vec3_t v)
{
 out[0] = v[0] * 32767.0f + (v[0] > 0.0f ? 0.5f : -0.5f);
 out[1] = v[1] * 32767.0f + (v[1] > 0.0f ? 0.5f : -0.5f);
 out[2] = v[2] * 32767.0f + (v[2] > 0.0f ? 0.5f : -0.5f);
 out[3] = 0;
}
