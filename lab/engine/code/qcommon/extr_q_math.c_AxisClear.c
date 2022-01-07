
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;



void AxisClear( vec3_t axis[3] ) {
 axis[0][0] = 1;
 axis[0][1] = 0;
 axis[0][2] = 0;
 axis[1][0] = 0;
 axis[1][1] = 1;
 axis[1][2] = 0;
 axis[2][0] = 0;
 axis[2][1] = 0;
 axis[2][2] = 1;
}
