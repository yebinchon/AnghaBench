
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec4_t ;



void _pico_set_vec4( picoVec4_t v, float a, float b, float c, float d ){
 v[ 0 ] = a;
 v[ 1 ] = b;
 v[ 2 ] = c;
 v[ 3 ] = d;
}
