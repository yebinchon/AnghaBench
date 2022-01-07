
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec4_t ;



void _pico_scale_vec4( picoVec4_t v, float scale, picoVec4_t dest ){
 dest[ 0 ] = v[ 0 ] * scale;
 dest[ 1 ] = v[ 1 ] * scale;
 dest[ 2 ] = v[ 2 ] * scale;
 dest[ 3 ] = v[ 3 ] * scale;
}
