
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;



void _VectorMA( const vec3_t veca, float scale, const vec3_t vecb, vec3_t vecc) {
 vecc[0] = veca[0] + scale*vecb[0];
 vecc[1] = veca[1] + scale*vecb[1];
 vecc[2] = veca[2] + scale*vecb[2];
}
