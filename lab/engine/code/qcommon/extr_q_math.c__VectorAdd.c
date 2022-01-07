
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;



void _VectorAdd( const vec3_t veca, const vec3_t vecb, vec3_t out ) {
 out[0] = veca[0]+vecb[0];
 out[1] = veca[1]+vecb[1];
 out[2] = veca[2]+vecb[2];
}
