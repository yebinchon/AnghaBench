
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float AngleNormalize180 (float) ;

float AngleDelta ( float angle1, float angle2 ) {
 return AngleNormalize180( angle1 - angle2 );
}
