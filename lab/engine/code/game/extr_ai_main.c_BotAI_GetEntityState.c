
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int svFlags; int linked; } ;
struct TYPE_5__ {int s; TYPE_1__ r; int inuse; } ;
typedef TYPE_2__ gentity_t ;
typedef int entityState_t ;


 int SVF_NOCLIENT ;
 TYPE_2__* g_entities ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int qfalse ;
 int qtrue ;

int BotAI_GetEntityState( int entityNum, entityState_t *state ) {
 gentity_t *ent;

 ent = &g_entities[entityNum];
 memset( state, 0, sizeof(entityState_t) );
 if (!ent->inuse) return qfalse;
 if (!ent->r.linked) return qfalse;
 if (ent->r.svFlags & SVF_NOCLIENT) return qfalse;
 memcpy( state, &ent->s, sizeof(entityState_t) );
 return qtrue;
}
