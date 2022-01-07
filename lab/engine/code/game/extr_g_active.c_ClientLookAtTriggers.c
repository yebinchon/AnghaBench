
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_22__ {size_t entityNum; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_20__ {int contents; } ;
struct TYPE_23__ {int (* look ) (TYPE_5__*,TYPE_5__*,TYPE_4__*) ;TYPE_3__* client; TYPE_2__ r; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_19__ {scalar_t__* stats; int clientNum; int viewangles; } ;
struct TYPE_21__ {int lastLookAt; TYPE_1__ ps; } ;


 int AngleVectors (int ,int ,int ,int ) ;
 int CONTENTS_LOOKAT ;
 int CONTENTS_SOLID ;
 int CalcMuzzlePoint (TYPE_5__*,int ,int ,int ,int ) ;
 size_t STAT_HEALTH ;
 int VectorMA (int ,int,int ,int ) ;
 TYPE_5__* g_entities ;
 int stub1 (TYPE_5__*,TYPE_5__*,TYPE_4__*) ;
 int stub2 (TYPE_5__*,TYPE_5__*,TYPE_4__*) ;
 int stub3 (TYPE_5__*,TYPE_5__*,TYPE_4__*) ;
 int trap_Trace (TYPE_4__*,int ,int ,int ,int ,int ,int) ;
 int vec3_origin ;

void ClientLookAtTriggers( gentity_t *ent ) {
 trace_t trace;
 vec3_t start, end;
 vec3_t forward, right, up;
 gentity_t* trigger;
 gentity_t* last_trigger;


 if ( !ent->client ) {
  return;
 }


 if ( ent->client->ps.stats[STAT_HEALTH] <= 0 ) {

  if ( ent->client->lastLookAt ) {
   last_trigger = &g_entities[ ent->client->lastLookAt ];
   if( last_trigger->look )
    last_trigger->look( last_trigger, ent, ((void*)0) );
   ent->client->lastLookAt = 0;
  }
  return;
 }


 AngleVectors( ent->client->ps.viewangles, forward, right, up );
 CalcMuzzlePoint( ent, forward, right, up, start );
 VectorMA( start, 131072, forward, end );

 trap_Trace( &trace, start, vec3_origin, vec3_origin, end,
  ent->client->ps.clientNum, CONTENTS_SOLID|CONTENTS_LOOKAT );




 if ( ent->client->lastLookAt && ent->client->lastLookAt != trace.entityNum ) {
  last_trigger = &g_entities[ ent->client->lastLookAt ];
  if( last_trigger->look )
   last_trigger->look( last_trigger, ent, ((void*)0) );
  ent->client->lastLookAt = 0;
 }

 trigger = &g_entities[ trace.entityNum ];


 if ( !trace.entityNum || (trigger->r.contents & CONTENTS_LOOKAT) == 0 )
  return;



 ent->client->lastLookAt = trace.entityNum;
 if (trigger->look) {
  trigger->look(trigger, ent, &trace);
 }
}
