
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* areasettings; } ;
struct TYPE_3__ {int contents; int areaflags; } ;


 int AREACONTENTS_DONOTENTER ;
 int AREACONTENTS_LAVA ;
 int AREACONTENTS_NOTTEAM1 ;
 int AREACONTENTS_NOTTEAM2 ;
 int AREACONTENTS_SLIME ;
 int AREACONTENTS_WATER ;
 int AREA_BRIDGE ;
 int TFL_AIR ;
 int TFL_BRIDGE ;
 int TFL_DONOTENTER ;
 int TFL_LAVA ;
 int TFL_NOTTEAM1 ;
 int TFL_NOTTEAM2 ;
 int TFL_SLIME ;
 int TFL_WATER ;
 TYPE_2__ aasworld ;

int AAS_GetAreaContentsTravelFlags(int areanum)
{
 int contents, tfl;

 contents = aasworld.areasettings[areanum].contents;
 tfl = 0;
 if (contents & AREACONTENTS_WATER)
  tfl |= TFL_WATER;
 else if (contents & AREACONTENTS_SLIME)
  tfl |= TFL_SLIME;
 else if (contents & AREACONTENTS_LAVA)
  tfl |= TFL_LAVA;
 else
  tfl |= TFL_AIR;
 if (contents & AREACONTENTS_DONOTENTER)
  tfl |= TFL_DONOTENTER;
 if (contents & AREACONTENTS_NOTTEAM1)
  tfl |= TFL_NOTTEAM1;
 if (contents & AREACONTENTS_NOTTEAM2)
  tfl |= TFL_NOTTEAM2;
 if (aasworld.areasettings[areanum].areaflags & AREA_BRIDGE)
  tfl |= TFL_BRIDGE;
 return tfl;
}
