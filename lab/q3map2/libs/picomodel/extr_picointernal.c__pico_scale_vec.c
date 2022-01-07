
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec3_t ;



void _pico_scale_vec( picoVec3_t v, float scale, picoVec3_t dest ){
 dest[ 0 ] = v[ 0 ] * scale;
 dest[ 1 ] = v[ 1 ] * scale;
 dest[ 2 ] = v[ 2 ] * scale;
}
