
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* value; struct TYPE_5__* key; struct TYPE_5__* next; } ;
typedef TYPE_1__ bsp_epair_t ;
struct TYPE_6__ {TYPE_1__* epairs; } ;
typedef TYPE_2__ bsp_entity_t ;
struct TYPE_7__ {int numentities; TYPE_2__* entities; } ;


 int FreeMemory (TYPE_1__*) ;
 TYPE_3__ bspworld ;

void AAS_FreeBSPEntities(void)
{
 int i;
 bsp_entity_t *ent;
 bsp_epair_t *epair, *nextepair;

 for (i = 1; i < bspworld.numentities; i++)
 {
  ent = &bspworld.entities[i];
  for (epair = ent->epairs; epair; epair = nextepair)
  {
   nextepair = epair->next;

   if (epair->key) FreeMemory(epair->key);
   if (epair->value) FreeMemory(epair->value);
   FreeMemory(epair);
  }
 }
 bspworld.numentities = 0;
}
