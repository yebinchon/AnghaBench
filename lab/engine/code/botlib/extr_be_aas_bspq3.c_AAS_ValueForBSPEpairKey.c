
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int value; int key; struct TYPE_5__* next; } ;
typedef TYPE_2__ bsp_epair_t ;
struct TYPE_6__ {TYPE_1__* entities; } ;
struct TYPE_4__ {TYPE_2__* epairs; } ;


 int AAS_BSPEntityInRange (int) ;
 TYPE_3__ bspworld ;
 int qfalse ;
 int qtrue ;
 int strcmp (int ,char*) ;
 int strncpy (char*,int ,int) ;

int AAS_ValueForBSPEpairKey(int ent, char *key, char *value, int size)
{
 bsp_epair_t *epair;

 value[0] = '\0';
 if (!AAS_BSPEntityInRange(ent)) return qfalse;
 for (epair = bspworld.entities[ent].epairs; epair; epair = epair->next)
 {
  if (!strcmp(epair->key, key))
  {
   strncpy(value, epair->value, size-1);
   value[size-1] = '\0';
   return qtrue;
  }
 }
 return qfalse;
}
