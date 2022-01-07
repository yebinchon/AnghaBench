
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vec3_t ;
struct TYPE_7__ {int contents; int maxs; int currentOrigin; int mins; } ;
struct TYPE_6__ {int eType; int modelindex; } ;
struct TYPE_8__ {TYPE_2__ r; TYPE_1__ s; int inuse; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_9__ {int num_entities; } ;


 int VectorAdd (int ,int ,scalar_t__) ;
 int VectorClear (scalar_t__) ;
 TYPE_3__* g_entities ;
 TYPE_4__ level ;

int BotModelMinsMaxs(int modelindex, int eType, int contents, vec3_t mins, vec3_t maxs) {
 gentity_t *ent;
 int i;

 ent = &g_entities[0];
 for (i = 0; i < level.num_entities; i++, ent++) {
  if ( !ent->inuse ) {
   continue;
  }
  if ( eType && ent->s.eType != eType) {
   continue;
  }
  if ( contents && ent->r.contents != contents) {
   continue;
  }
  if (ent->s.modelindex == modelindex) {
   if (mins)
    VectorAdd(ent->r.currentOrigin, ent->r.mins, mins);
   if (maxs)
    VectorAdd(ent->r.currentOrigin, ent->r.maxs, maxs);
   return i;
  }
 }
 if (mins)
  VectorClear(mins);
 if (maxs)
  VectorClear(maxs);
 return 0;
}
