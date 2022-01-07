
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int areas; } ;
typedef TYPE_1__ aas_entity_t ;
struct TYPE_4__ {TYPE_1__* entities; } ;


 int AAS_BestReachableLinkArea (int ) ;
 TYPE_2__ aasworld ;

int AAS_BestReachableEntityArea(int entnum)
{
 aas_entity_t *ent;

 ent = &aasworld.entities[entnum];
 return AAS_BestReachableLinkArea(ent->areas);
}
