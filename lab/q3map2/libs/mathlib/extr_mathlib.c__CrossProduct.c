
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;



void _CrossProduct( vec3_t v1, vec3_t v2, vec3_t cross ){
 cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
 cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
 cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
}
