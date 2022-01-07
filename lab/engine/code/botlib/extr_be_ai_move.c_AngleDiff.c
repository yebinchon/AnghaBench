
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float AngleDiff(float ang1, float ang2)
{
 float diff;

 diff = ang1 - ang2;
 if (ang1 > ang2)
 {
  if (diff > 180.0) diff -= 360.0;
 }
 else
 {
  if (diff < -180.0) diff += 360.0;
 }
 return diff;
}
