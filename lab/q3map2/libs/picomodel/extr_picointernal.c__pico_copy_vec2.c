
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * picoVec2_t ;



void _pico_copy_vec2( picoVec2_t src, picoVec2_t dest ){
 dest[ 0 ] = src[ 0 ];
 dest[ 1 ] = src[ 1 ];
}
