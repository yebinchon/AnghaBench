
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ entitynum; int contents; } ;
typedef TYPE_1__ mapbrush_t ;
struct TYPE_7__ {int areaportalnum; } ;
typedef TYPE_2__ entity_t ;


 int CONTENTS_AREAPORTAL ;
 int Log_Print (char*,int) ;
 TYPE_1__* mapbrushes ;
 int nummapbrushes ;

mapbrush_t *GetAreaPortalBrush(entity_t *mapent)
{
 int portalnum, bn;
 mapbrush_t *brush = ((void*)0);


 portalnum = mapent->areaportalnum;

 for (bn = 0; bn < nummapbrushes && portalnum; bn++)
 {
  brush = &mapbrushes[bn];

  if (brush->entitynum == 0)
  {
   if (brush->contents & CONTENTS_AREAPORTAL)
   {
    portalnum--;
   }
  }
 }
 if (bn < nummapbrushes)
 {
  return brush;
 }
 else
 {
  Log_Print("area portal %d brush not found\n", mapent->areaportalnum);
  return ((void*)0);
 }
}
