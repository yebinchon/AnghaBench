
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fatLightmapCols; int fatLightmapRows; scalar_t__ worldDeluxeMapping; } ;


 TYPE_1__ tr ;

__attribute__((used)) static int FatLightmap(int lightmapnum)
{
 if (lightmapnum < 0)
  return lightmapnum;

 if (tr.worldDeluxeMapping)
  lightmapnum >>= 1;

 if (tr.fatLightmapCols > 0)
  return lightmapnum / (tr.fatLightmapCols * tr.fatLightmapRows);

 return lightmapnum;
}
