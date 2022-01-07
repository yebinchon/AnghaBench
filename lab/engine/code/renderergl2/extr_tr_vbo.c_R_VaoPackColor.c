
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec4_t ;
typedef float uint16_t ;



void R_VaoPackColor(uint16_t *out, vec4_t c)
{
 out[0] = c[0] * 65535.0f + 0.5f;
 out[1] = c[1] * 65535.0f + 0.5f;
 out[2] = c[2] * 65535.0f + 0.5f;
 out[3] = c[3] * 65535.0f + 0.5f;
}
