
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* picoVec3_t ;



void _pico_add_vec( picoVec3_t a, picoVec3_t b, picoVec3_t dest ){
 dest[ 0 ] = a[ 0 ] + b[ 0 ];
 dest[ 1 ] = a[ 1 ] + b[ 1 ];
 dest[ 2 ] = a[ 2 ] + b[ 2 ];
}
