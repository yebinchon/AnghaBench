
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float Floor (float) ;

float AngleNormalize180 ( float angle ) {
 return angle - 360.0f * Floor( (angle + 180.0f) * (1.0f / 360.0f) );
}
