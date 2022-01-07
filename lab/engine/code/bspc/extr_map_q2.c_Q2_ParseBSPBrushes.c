
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ modelnum; } ;
typedef TYPE_1__ entity_t ;


 int Q2_BSPBrushToMapBrush (int *,TYPE_1__*) ;
 int Q2_SetBrushModelNumbers (TYPE_1__*) ;
 scalar_t__* brushmodelnumbers ;
 int * dbrushes ;
 int numbrushes ;

void Q2_ParseBSPBrushes(entity_t *mapent)
{
 int i;



 Q2_SetBrushModelNumbers(mapent);

 for (i = 0; i < numbrushes; i++)
 {
  if (brushmodelnumbers[i] == mapent->modelnum)
  {
   Q2_BSPBrushToMapBrush(&dbrushes[i], mapent);
  }
 }
}
