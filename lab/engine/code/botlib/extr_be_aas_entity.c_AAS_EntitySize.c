
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int maxs; int mins; } ;
struct TYPE_6__ {TYPE_1__ i; } ;
typedef TYPE_2__ aas_entity_t ;
struct TYPE_8__ {int maxentities; TYPE_2__* entities; int initialized; } ;
struct TYPE_7__ {int (* Print ) (int ,char*,int) ;} ;


 int PRT_FATAL ;
 int VectorCopy (int ,int ) ;
 TYPE_4__ aasworld ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*,int) ;

void AAS_EntitySize(int entnum, vec3_t mins, vec3_t maxs)
{
 aas_entity_t *ent;

 if (!aasworld.initialized) return;

 if (entnum < 0 || entnum >= aasworld.maxentities)
 {
  botimport.Print(PRT_FATAL, "AAS_EntitySize: entnum %d out of range\n", entnum);
  return;
 }

 ent = &aasworld.entities[entnum];
 VectorCopy(ent->i.mins, mins);
 VectorCopy(ent->i.maxs, maxs);
}
