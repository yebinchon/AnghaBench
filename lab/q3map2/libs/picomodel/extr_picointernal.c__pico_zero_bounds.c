
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* picoVec3_t ;



void _pico_zero_bounds( picoVec3_t mins, picoVec3_t maxs ){
 int i;
 for ( i = 0; i < 3; i++ )
 {
  mins[i] = +999999;
  maxs[i] = -999999;
 }
}
