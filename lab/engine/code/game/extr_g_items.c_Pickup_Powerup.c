
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef int vec3_t ;
struct TYPE_23__ {double fraction; } ;
typedef TYPE_7__ trace_t ;
struct TYPE_20__ {int trBase; } ;
struct TYPE_21__ {TYPE_4__ pos; } ;
struct TYPE_24__ {int count; TYPE_5__ s; TYPE_9__* client; TYPE_1__* item; } ;
typedef TYPE_8__ gentity_t ;
struct TYPE_22__ {int* powerups; scalar_t__* stats; int * persistant; int origin; int viewangles; } ;
struct TYPE_19__ {scalar_t__ sessionTeam; } ;
struct TYPE_18__ {scalar_t__ connected; } ;
struct TYPE_25__ {TYPE_6__ ps; TYPE_3__ sess; TYPE_2__ pers; } ;
typedef TYPE_9__ gclient_t ;
struct TYPE_17__ {size_t giTag; int quantity; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {int time; int maxclients; TYPE_9__* clients; } ;


 int AngleVectors (int ,int ,int *,int *) ;
 int CONTENTS_SOLID ;
 scalar_t__ CON_DISCONNECTED ;
 double DotProduct (int ,int ) ;
 int ENTITYNUM_NONE ;
 scalar_t__ GT_TEAM ;
 size_t PERS_PLAYEREVENTS ;
 int PLAYEREVENT_DENIEDREWARD ;
 int RESPAWN_POWERUP ;
 size_t STAT_HEALTH ;
 float VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_12__ g_gametype ;
 TYPE_11__ level ;
 int trap_Trace (TYPE_7__*,int ,int *,int *,int ,int ,int ) ;

int Pickup_Powerup( gentity_t *ent, gentity_t *other ) {
 int quantity;
 int i;
 gclient_t *client;

 if ( !other->client->ps.powerups[ent->item->giTag] ) {


  other->client->ps.powerups[ent->item->giTag] =
   level.time - ( level.time % 1000 );
 }

 if ( ent->count ) {
  quantity = ent->count;
 } else {
  quantity = ent->item->quantity;
 }

 other->client->ps.powerups[ent->item->giTag] += quantity * 1000;


 for ( i = 0 ; i < level.maxclients ; i++ ) {
  vec3_t delta;
  float len;
  vec3_t forward;
  trace_t tr;

  client = &level.clients[i];
  if ( client == other->client ) {
   continue;
  }
  if ( client->pers.connected == CON_DISCONNECTED ) {
   continue;
  }
  if ( client->ps.stats[STAT_HEALTH] <= 0 ) {
   continue;
  }



   if ( g_gametype.integer >= GT_TEAM && other->client->sess.sessionTeam == client->sess.sessionTeam ) {
      continue;
    }


  VectorSubtract( ent->s.pos.trBase, client->ps.origin, delta );
  len = VectorNormalize( delta );
  if ( len > 192 ) {
   continue;
  }


  AngleVectors( client->ps.viewangles, forward, ((void*)0), ((void*)0) );
  if ( DotProduct( delta, forward ) < 0.4 ) {
   continue;
  }


  trap_Trace( &tr, client->ps.origin, ((void*)0), ((void*)0), ent->s.pos.trBase, ENTITYNUM_NONE, CONTENTS_SOLID );
  if ( tr.fraction != 1.0 ) {
   continue;
  }


  client->ps.persistant[PERS_PLAYEREVENTS] ^= PLAYEREVENT_DENIEDREWARD;
 }
 return RESPAWN_POWERUP;
}
