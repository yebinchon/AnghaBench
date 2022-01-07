
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int modelnum; scalar_t__ areaportalnum; int origin; scalar_t__ numbrushes; int firstbrush; } ;
typedef TYPE_1__ entity_t ;


 int GetVectorForKey (TYPE_1__*,char*,int ) ;
 int Sin_ParseBSPBrushes (TYPE_1__*) ;
 char* ValueForKey (TYPE_1__*,char*) ;
 int atoi (char*) ;
 scalar_t__ c_areaportals ;
 TYPE_1__* entities ;
 int nummapbrushes ;
 int strcmp (char*,char*) ;

qboolean Sin_ParseBSPEntity(int entnum)
{
 entity_t *mapent;
 char *model;

 mapent = &entities[entnum];
 mapent->firstbrush = nummapbrushes;
 mapent->numbrushes = 0;
 mapent->modelnum = -1;

 model = ValueForKey(mapent, "model");
 if (model && *model == '*')
 {
  mapent->modelnum = atoi(&model[1]);


 }

 GetVectorForKey(mapent, "origin", mapent->origin);



 if (!strcmp("worldspawn", ValueForKey(mapent, "classname")))
 {
  mapent->modelnum = 0;
 }


 if (mapent->modelnum >= 0)
 {

  Sin_ParseBSPBrushes(mapent);
 }






 if (!strcmp ("func_areaportal", ValueForKey (mapent, "classname")))
 {
  c_areaportals++;
  mapent->areaportalnum = c_areaportals;
  return 1;
 }
 return 1;
}
