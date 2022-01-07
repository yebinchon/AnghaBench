
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* picoVec3_t ;



void _pico_zero_vec( picoVec3_t vec ){
 vec[ 0 ] = vec[ 1 ] = vec[ 2 ] = 0;
}
