
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float LerpAngle (float from, float to, float frac) {
 float a;

 if ( to - from > 180 ) {
  to -= 360;
 }
 if ( to - from < -180 ) {
  to += 360;
 }
 a = from + frac * (to - from);

 return a;
}
