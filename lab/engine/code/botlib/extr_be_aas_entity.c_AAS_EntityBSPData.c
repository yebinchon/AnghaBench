
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ modelnum; int solid; int absmaxs; int absmins; int angles; int origin; } ;
typedef TYPE_2__ bsp_entdata_t ;
struct TYPE_6__ {scalar_t__ modelindex; int solid; int maxs; int origin; int mins; int angles; } ;
struct TYPE_8__ {TYPE_1__ i; } ;
typedef TYPE_3__ aas_entity_t ;
struct TYPE_9__ {TYPE_3__* entities; } ;


 int VectorAdd (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_4__ aasworld ;

void AAS_EntityBSPData(int entnum, bsp_entdata_t *entdata)
{
 aas_entity_t *ent;

 ent = &aasworld.entities[entnum];
 VectorCopy(ent->i.origin, entdata->origin);
 VectorCopy(ent->i.angles, entdata->angles);
 VectorAdd(ent->i.origin, ent->i.mins, entdata->absmins);
 VectorAdd(ent->i.origin, ent->i.maxs, entdata->absmaxs);
 entdata->solid = ent->i.solid;
 entdata->modelnum = ent->i.modelindex - 1;
}
