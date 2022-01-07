
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int* vec3_t ;



vec_t _DotProduct( const vec3_t v1, const vec3_t v2 ) {
 return v1[0]*v2[0] + v1[1]*v2[1] + v1[2]*v2[2];
}
