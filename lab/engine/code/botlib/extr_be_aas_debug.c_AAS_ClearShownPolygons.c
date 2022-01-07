
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* DebugPolygonDelete ) (scalar_t__) ;} ;


 int MAX_DEBUGPOLYGONS ;
 TYPE_1__ botimport ;
 scalar_t__* debugpolygons ;
 int stub1 (scalar_t__) ;

void AAS_ClearShownPolygons(void)
{
 int i;

 for (i = 0; i < MAX_DEBUGPOLYGONS; i++)
 {
  if (debugpolygons[i]) botimport.DebugPolygonDelete(debugpolygons[i]);
  debugpolygons[i] = 0;
 }
}
