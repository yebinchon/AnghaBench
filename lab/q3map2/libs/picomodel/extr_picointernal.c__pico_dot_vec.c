
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoVec_t ;
typedef int* picoVec3_t ;



picoVec_t _pico_dot_vec( picoVec3_t a, picoVec3_t b ){
 return a[ 0 ] * b[ 0 ] + a[ 1 ] * b[ 1 ] + a[ 2 ] * b[ 2 ];
}
