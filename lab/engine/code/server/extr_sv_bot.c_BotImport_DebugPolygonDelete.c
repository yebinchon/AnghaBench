
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inuse; } ;


 TYPE_1__* debugpolygons ;
 int qfalse ;

void BotImport_DebugPolygonDelete(int id)
{
 if (!debugpolygons) return;
 debugpolygons[id].inuse = qfalse;
}
