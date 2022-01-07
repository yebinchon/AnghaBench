
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {scalar_t__ active; } ;


 int FEEDER_MAPS ;
 int Menu_SetFeederSelection (int *,int ,int,char*) ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static qboolean UI_SetNextMap(int actual, int index) {
 int i;
 for (i = actual + 1; i < uiInfo.mapCount; i++) {
  if (uiInfo.mapList[i].active) {
   Menu_SetFeederSelection(((void*)0), FEEDER_MAPS, index + 1, "skirmish");
   return qtrue;
  }
 }
 return qfalse;
}
