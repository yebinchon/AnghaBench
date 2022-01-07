
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* picoVec4_t ;



void _pico_zero_vec4( picoVec4_t vec ){
 vec[ 0 ] = vec[ 1 ] = vec[ 2 ] = vec[ 3 ] = 0;
}
