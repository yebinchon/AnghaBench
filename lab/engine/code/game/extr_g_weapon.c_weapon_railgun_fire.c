
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;


typedef int vec3_t ;
struct TYPE_21__ {int normal; } ;
struct TYPE_25__ {size_t entityNum; int contents; int surfaceFlags; TYPE_1__ plane; int endpos; } ;
typedef TYPE_5__ trace_t ;
struct TYPE_22__ {int number; int eventParm; int clientNum; int origin2; } ;
struct TYPE_26__ {TYPE_4__* client; TYPE_2__ s; scalar_t__ takedamage; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_23__ {int eFlags; int * persistant; } ;
struct TYPE_24__ {scalar_t__ invulnerabilityTime; int accurateCount; scalar_t__ rewardTime; int accuracy_hits; TYPE_3__ ps; } ;
struct TYPE_20__ {scalar_t__ time; } ;


 int CONTENTS_SOLID ;
 int DirToByte (int ) ;
 int EF_AWARD_ASSIST ;
 int EF_AWARD_CAP ;
 int EF_AWARD_DEFEND ;
 int EF_AWARD_EXCELLENT ;
 int EF_AWARD_GAUNTLET ;
 int EF_AWARD_IMPRESSIVE ;
 size_t ENTITYNUM_MAX_NORMAL ;
 int ENTITYNUM_NONE ;
 int EV_RAILTRAIL ;
 int G_BounceProjectile (int ,int ,int ,int ) ;
 int G_Damage (TYPE_6__*,TYPE_6__*,TYPE_6__*,int ,int ,int,int ,int ) ;
 scalar_t__ G_InvulnerabilityEffect (TYPE_6__*,int ,int ,int ,int ) ;
 TYPE_6__* G_TempEntity (int ,int ) ;
 scalar_t__ LogAccuracyHit (TYPE_6__*,TYPE_6__*) ;
 int MASK_SHOT ;
 int MAX_RAIL_HITS ;
 int MOD_RAILGUN ;
 size_t PERS_IMPRESSIVE_COUNT ;
 scalar_t__ REWARD_SPRITE_TIME ;
 int SURF_NOIMPACT ;
 int SnapVectorTowards (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int,int ,int ) ;
 int forward ;
 TYPE_6__* g_entities ;
 TYPE_11__ level ;
 int muzzle ;
 int right ;
 int s_quadFactor ;
 int trap_LinkEntity (TYPE_6__*) ;
 int trap_Trace (TYPE_5__*,int ,int *,int *,int ,int,int ) ;
 int trap_UnlinkEntity (TYPE_6__*) ;
 int up ;

void weapon_railgun_fire (gentity_t *ent) {
 vec3_t end;



 trace_t trace;
 gentity_t *tent;
 gentity_t *traceEnt;
 int damage;
 int i;
 int hits;
 int unlinked;
 int passent;
 gentity_t *unlinkedEntities[MAX_RAIL_HITS];

 damage = 100 * s_quadFactor;

 VectorMA (muzzle, 8192, forward, end);


 unlinked = 0;
 hits = 0;
 passent = ent->s.number;
 do {
  trap_Trace (&trace, muzzle, ((void*)0), ((void*)0), end, passent, MASK_SHOT );
  if ( trace.entityNum >= ENTITYNUM_MAX_NORMAL ) {
   break;
  }
  traceEnt = &g_entities[ trace.entityNum ];
  if ( traceEnt->takedamage ) {
    if( LogAccuracyHit( traceEnt, ent ) ) {
     hits++;
    }
    G_Damage (traceEnt, ent, ent, forward, trace.endpos, damage, 0, MOD_RAILGUN);

  }
  if ( trace.contents & CONTENTS_SOLID ) {
   break;
  }

  trap_UnlinkEntity( traceEnt );
  unlinkedEntities[unlinked] = traceEnt;
  unlinked++;
 } while ( unlinked < MAX_RAIL_HITS );


 for ( i = 0 ; i < unlinked ; i++ ) {
  trap_LinkEntity( unlinkedEntities[i] );
 }




 SnapVectorTowards( trace.endpos, muzzle );


 tent = G_TempEntity( trace.endpos, EV_RAILTRAIL );


 tent->s.clientNum = ent->s.clientNum;

 VectorCopy( muzzle, tent->s.origin2 );

 VectorMA( tent->s.origin2, 4, right, tent->s.origin2 );
 VectorMA( tent->s.origin2, -1, up, tent->s.origin2 );


 if ( trace.surfaceFlags & SURF_NOIMPACT ) {
  tent->s.eventParm = 255;
 } else {
  tent->s.eventParm = DirToByte( trace.plane.normal );
 }
 tent->s.clientNum = ent->s.clientNum;


 if ( hits == 0 ) {

  ent->client->accurateCount = 0;
 } else {

  ent->client->accurateCount += hits;
  if ( ent->client->accurateCount >= 2 ) {
   ent->client->accurateCount -= 2;
   ent->client->ps.persistant[PERS_IMPRESSIVE_COUNT]++;

   ent->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
   ent->client->ps.eFlags |= EF_AWARD_IMPRESSIVE;
   ent->client->rewardTime = level.time + REWARD_SPRITE_TIME;
  }
  ent->client->accuracy_hits++;
 }

}
