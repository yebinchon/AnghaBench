
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fatLightmapCols; int fatLightmapRows; scalar_t__ worldDeluxeMapping; } ;


 TYPE_1__ tr ;

__attribute__((used)) static float FatPackU(float input, int lightmapnum)
{
 if (lightmapnum < 0)
  return input;

 if (tr.worldDeluxeMapping)
  lightmapnum >>= 1;

 if (tr.fatLightmapCols > 0)
 {
  lightmapnum %= (tr.fatLightmapCols * tr.fatLightmapRows);
  return (input + (lightmapnum % tr.fatLightmapCols)) / (float)(tr.fatLightmapCols);
 }

 return input;
}
