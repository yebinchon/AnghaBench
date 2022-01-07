
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;



void ClearBounds( vec3_t mins, vec3_t maxs ){
 mins[0] = mins[1] = mins[2] = 99999;
 maxs[0] = maxs[1] = maxs[2] = -99999;
}
