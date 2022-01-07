
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float Floor (float) ;

float AngleMod(float angle) {
 return angle - 360.0f * Floor( angle * (1.0f / 360.0f) );
}
