
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ entitynum; } ;
typedef TYPE_1__ mapbrush_t ;
struct TYPE_13__ {int numbrushes; int firstbrush; } ;
typedef TYPE_2__ entity_t ;
struct TYPE_14__ {int numbrushes; int firstbrush; } ;


 int FreeMemory (TYPE_1__*) ;
 TYPE_1__* GetMemory (int) ;
 TYPE_8__* entities ;
 TYPE_1__* mapbrushes ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 int num_entities ;
 int nummapbrushes ;

void Q2_MoveBrushesToWorld (entity_t *mapent)
{
 int newbrushes;
 int worldbrushes;
 mapbrush_t *temp;
 int i;




 newbrushes = mapent->numbrushes;
 worldbrushes = entities[0].numbrushes;

 temp = GetMemory(newbrushes*sizeof(mapbrush_t));
 memcpy (temp, mapbrushes + mapent->firstbrush, newbrushes*sizeof(mapbrush_t));







 memmove (mapbrushes + worldbrushes + newbrushes,
  mapbrushes + worldbrushes,
  sizeof(mapbrush_t) * (nummapbrushes - worldbrushes - newbrushes) );


 memcpy (mapbrushes + worldbrushes, temp, sizeof(mapbrush_t) * newbrushes);


 entities[0].numbrushes += newbrushes;
 for (i=1 ; i<num_entities ; i++)
  entities[i].firstbrush += newbrushes;
 FreeMemory(temp);

 mapent->numbrushes = 0;
}
