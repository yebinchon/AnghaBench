
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec4_t ;
typedef float int16_t ;



void R_VaoUnpackTangent(vec4_t v, int16_t *pack)
{
 v[0] = pack[0] / 32767.0f;
 v[1] = pack[1] / 32767.0f;
 v[2] = pack[2] / 32767.0f;
 v[3] = pack[3] / 32767.0f;
}
