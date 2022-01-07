
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_19__ {int normal; } ;
struct TYPE_20__ {int entityNum; int surfaceFlags; TYPE_3__ plane; int endpos; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_18__ {int number; int otherEntityNum; void* eventParm; int weapon; int origin2; } ;
struct TYPE_21__ {TYPE_2__ s; TYPE_1__* client; scalar_t__ takedamage; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_22__ {scalar_t__ time; } ;
struct TYPE_17__ {scalar_t__ invulnerabilityTime; int accuracy_hits; } ;


 void* DirToByte (int ) ;
 int ENTITYNUM_NONE ;
 int EV_LIGHTNINGBOLT ;
 int EV_MISSILE_HIT ;
 int EV_MISSILE_MISS ;
 int G_BounceProjectile (int ,int ,int ,int ) ;
 int G_Damage (TYPE_5__*,TYPE_5__*,TYPE_5__*,int ,int ,int,int ,int ) ;
 scalar_t__ G_InvulnerabilityEffect (TYPE_5__*,int ,int ,int ,int ) ;
 TYPE_5__* G_TempEntity (int ,int ) ;
 int LIGHTNING_RANGE ;
 scalar_t__ LogAccuracyHit (TYPE_5__*,TYPE_5__*) ;
 int MASK_SHOT ;
 int MOD_LIGHTNING ;
 int SURF_NOIMPACT ;
 int SnapVector (int ) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int ,int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int forward ;
 TYPE_5__* g_entities ;
 TYPE_7__ level ;
 int muzzle ;
 int s_quadFactor ;
 int trap_Trace (TYPE_4__*,int ,int *,int *,int ,int,int ) ;

void Weapon_LightningFire( gentity_t *ent ) {
 trace_t tr;
 vec3_t end;



 gentity_t *traceEnt, *tent;
 int damage, i, passent;

 damage = 8 * s_quadFactor;

 passent = ent->s.number;
 for (i = 0; i < 10; i++) {
  VectorMA( muzzle, LIGHTNING_RANGE, forward, end );

  trap_Trace( &tr, muzzle, ((void*)0), ((void*)0), end, passent, MASK_SHOT );
  if ( tr.entityNum == ENTITYNUM_NONE ) {
   return;
  }

  traceEnt = &g_entities[ tr.entityNum ];

  if ( traceEnt->takedamage) {
   if( LogAccuracyHit( traceEnt, ent ) ) {
    ent->client->accuracy_hits++;
   }
   G_Damage( traceEnt, ent, ent, forward, tr.endpos, damage, 0, MOD_LIGHTNING);
  }

  if ( traceEnt->takedamage && traceEnt->client ) {
   tent = G_TempEntity( tr.endpos, EV_MISSILE_HIT );
   tent->s.otherEntityNum = traceEnt->s.number;
   tent->s.eventParm = DirToByte( tr.plane.normal );
   tent->s.weapon = ent->s.weapon;
  } else if ( !( tr.surfaceFlags & SURF_NOIMPACT ) ) {
   tent = G_TempEntity( tr.endpos, EV_MISSILE_MISS );
   tent->s.eventParm = DirToByte( tr.plane.normal );
  }

  break;
 }
}
