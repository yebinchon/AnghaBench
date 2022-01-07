
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float AngleNormalize180 (float) ;

float AngleSubtract( float a1, float a2 ) {
 return AngleNormalize180(a1 - a2);
}
