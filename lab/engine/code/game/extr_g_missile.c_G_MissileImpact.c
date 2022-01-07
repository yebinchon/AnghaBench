
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_29__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_18__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef int* vec3_t ;
struct TYPE_35__ {int* normal; } ;
struct TYPE_39__ {size_t entityNum; int* endpos; int surfaceFlags; TYPE_3__ plane; } ;
typedef TYPE_7__ trace_t ;
typedef void* qboolean ;
struct TYPE_38__ {size_t ownerNum; double* mins; double* maxs; int* currentOrigin; } ;
struct TYPE_33__ {int* trDelta; scalar_t__ trType; int trBase; } ;
struct TYPE_36__ {int eFlags; scalar_t__ weapon; scalar_t__ eType; int* angles; TYPE_29__ pos; int number; int otherEntityNum; int origin; } ;
struct TYPE_40__ {scalar_t__ health; scalar_t__ nextthink; int* movedir; TYPE_5__* client; TYPE_6__ r; int splashMethodOfDeath; int splashRadius; scalar_t__ splashDamage; TYPE_18__* parent; TYPE_4__ s; void* freeAfterEvent; scalar_t__ takedamage; int think; struct TYPE_40__* enemy; int classname; int die; int methodOfDeath; scalar_t__ damage; struct TYPE_40__* target_ent; } ;
typedef TYPE_8__ gentity_t ;
struct TYPE_37__ {scalar_t__ invulnerabilityTime; int accuracy_hits; } ;
struct TYPE_32__ {int* grapplePoint; int pm_flags; } ;
struct TYPE_34__ {TYPE_1__ ps; } ;
struct TYPE_31__ {TYPE_2__* client; } ;
struct TYPE_30__ {scalar_t__ time; } ;


 int BG_EvaluateTrajectoryDelta (TYPE_29__*,scalar_t__,int*) ;
 int DirToByte (int*) ;
 int EF_BOUNCE ;
 int EF_BOUNCE_HALF ;
 void* ET_GENERAL ;
 scalar_t__ ET_GRAPPLE ;
 scalar_t__ ET_PLAYER ;
 int EV_GRENADE_BOUNCE ;
 int EV_MISSILE_HIT ;
 int EV_MISSILE_MISS ;
 int EV_MISSILE_MISS_METAL ;
 int EV_PROXIMITY_MINE_STICK ;
 scalar_t__ FRAMETIME ;
 int G_AddEvent (TYPE_8__*,int ,int) ;
 int G_BounceMissile (TYPE_8__*,TYPE_7__*) ;
 int G_Damage (TYPE_8__*,TYPE_8__*,TYPE_8__*,int*,int ,scalar_t__,int ,int ) ;
 scalar_t__ G_InvulnerabilityEffect (TYPE_8__*,int*,int ,int*,int*) ;
 scalar_t__ G_RadiusDamage (int*,TYPE_18__*,scalar_t__,int ,TYPE_8__*,int ) ;
 int G_SetOrigin (TYPE_8__*,int*) ;
 TYPE_8__* G_Spawn () ;
 scalar_t__ LogAccuracyHit (TYPE_8__*,TYPE_8__*) ;
 int PMF_GRAPPLE_PULL ;
 int ProximityMine_Activate ;
 int ProximityMine_Die ;
 int ProximityMine_Player (TYPE_8__*,TYPE_8__*) ;
 int SURF_METALSTEPS ;
 int SnapVectorTowards (int*,int ) ;
 scalar_t__ TR_GRAVITY ;
 scalar_t__ TR_STATIONARY ;
 int VectorClear (int*) ;
 int VectorCopy (int*,int*) ;
 scalar_t__ VectorLength (int*) ;
 int VectorNormalize (int*) ;
 int VectorSet (double*,int,int,int) ;
 scalar_t__ WP_PROX_LAUNCHER ;
 int Weapon_HookThink ;
 TYPE_8__* g_entities ;
 TYPE_10__ level ;
 void* qfalse ;
 void* qtrue ;
 int strcmp (int ,char*) ;
 int trap_LinkEntity (TYPE_8__*) ;
 int vectoangles (int*,int*) ;

void G_MissileImpact( gentity_t *ent, trace_t *trace ) {
 gentity_t *other;
 qboolean hitClient = qfalse;




 other = &g_entities[trace->entityNum];


 if ( !other->takedamage &&
  ( ent->s.eFlags & ( EF_BOUNCE | EF_BOUNCE_HALF ) ) ) {
  G_BounceMissile( ent, trace );
  G_AddEvent( ent, EV_GRENADE_BOUNCE, 0 );
  return;
 }
 if (other->takedamage) {

  if ( ent->damage ) {
   vec3_t velocity;

   if( LogAccuracyHit( other, &g_entities[ent->r.ownerNum] ) ) {
    g_entities[ent->r.ownerNum].client->accuracy_hits++;
    hitClient = qtrue;
   }
   BG_EvaluateTrajectoryDelta( &ent->s.pos, level.time, velocity );
   if ( VectorLength( velocity ) == 0 ) {
    velocity[2] = 1;
   }
   G_Damage (other, ent, &g_entities[ent->r.ownerNum], velocity,
    ent->s.origin, ent->damage,
    0, ent->methodOfDeath);
  }
 }
 if (!strcmp(ent->classname, "hook")) {
  gentity_t *nent;
  vec3_t v;

  nent = G_Spawn();
  if ( other->takedamage && other->client ) {

   G_AddEvent( nent, EV_MISSILE_HIT, DirToByte( trace->plane.normal ) );
   nent->s.otherEntityNum = other->s.number;

   ent->enemy = other;

   v[0] = other->r.currentOrigin[0] + (other->r.mins[0] + other->r.maxs[0]) * 0.5;
   v[1] = other->r.currentOrigin[1] + (other->r.mins[1] + other->r.maxs[1]) * 0.5;
   v[2] = other->r.currentOrigin[2] + (other->r.mins[2] + other->r.maxs[2]) * 0.5;

   SnapVectorTowards( v, ent->s.pos.trBase );
  } else {
   VectorCopy(trace->endpos, v);
   G_AddEvent( nent, EV_MISSILE_MISS, DirToByte( trace->plane.normal ) );
   ent->enemy = ((void*)0);
  }

  SnapVectorTowards( v, ent->s.pos.trBase );

  nent->freeAfterEvent = qtrue;

  nent->s.eType = ET_GENERAL;
  ent->s.eType = ET_GRAPPLE;

  G_SetOrigin( ent, v );
  G_SetOrigin( nent, v );

  ent->think = Weapon_HookThink;
  ent->nextthink = level.time + FRAMETIME;

  ent->parent->client->ps.pm_flags |= PMF_GRAPPLE_PULL;
  VectorCopy( ent->r.currentOrigin, ent->parent->client->ps.grapplePoint);

  trap_LinkEntity( ent );
  trap_LinkEntity( nent );

  return;
 }




 if ( other->takedamage && other->client ) {
  G_AddEvent( ent, EV_MISSILE_HIT, DirToByte( trace->plane.normal ) );
  ent->s.otherEntityNum = other->s.number;
 } else if( trace->surfaceFlags & SURF_METALSTEPS ) {
  G_AddEvent( ent, EV_MISSILE_MISS_METAL, DirToByte( trace->plane.normal ) );
 } else {
  G_AddEvent( ent, EV_MISSILE_MISS, DirToByte( trace->plane.normal ) );
 }

 ent->freeAfterEvent = qtrue;


 ent->s.eType = ET_GENERAL;

 SnapVectorTowards( trace->endpos, ent->s.pos.trBase );

 G_SetOrigin( ent, trace->endpos );


 if ( ent->splashDamage ) {
  if( G_RadiusDamage( trace->endpos, ent->parent, ent->splashDamage, ent->splashRadius,
   other, ent->splashMethodOfDeath ) ) {
   if( !hitClient ) {
    g_entities[ent->r.ownerNum].client->accuracy_hits++;
   }
  }
 }

 trap_LinkEntity( ent );
}
