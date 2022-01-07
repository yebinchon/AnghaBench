
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;



void _VectorMA (vec3_t va, double scale, vec3_t vb, vec3_t vc)
{
 vc[0] = va[0] + scale*vb[0];
 vc[1] = va[1] + scale*vb[1];
 vc[2] = va[2] + scale*vb[2];
}
