
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_17__ {size_t entityNum; int surfaceFlags; int endpos; } ;
typedef TYPE_3__ trace_t ;
typedef int qboolean ;
struct TYPE_16__ {int number; } ;
struct TYPE_18__ {TYPE_2__ s; TYPE_1__* client; scalar_t__ takedamage; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_19__ {scalar_t__ time; } ;
struct TYPE_15__ {scalar_t__ invulnerabilityTime; } ;


 int DEFAULT_SHOTGUN_DAMAGE ;
 int ENTITYNUM_NONE ;
 int G_BounceProjectile (int ,int ,int ,int ) ;
 int G_Damage (TYPE_4__*,TYPE_4__*,TYPE_4__*,int ,int ,int,int ,int ) ;
 scalar_t__ G_InvulnerabilityEffect (TYPE_4__*,int ,int ,int ,int ) ;
 scalar_t__ LogAccuracyHit (TYPE_4__*,TYPE_4__*) ;
 int MASK_SHOT ;
 int MOD_SHOTGUN ;
 int SURF_NOIMPACT ;
 int VectorCopy (int ,int ) ;
 int forward ;
 TYPE_4__* g_entities ;
 TYPE_6__ level ;
 int qfalse ;
 int qtrue ;
 int s_quadFactor ;
 int trap_Trace (TYPE_3__*,int ,int *,int *,int ,int,int ) ;

qboolean ShotgunPellet( vec3_t start, vec3_t end, gentity_t *ent ) {
 trace_t tr;
 int damage, i, passent;
 gentity_t *traceEnt;



 vec3_t tr_start, tr_end;
 qboolean hitClient = qfalse;

 passent = ent->s.number;
 VectorCopy( start, tr_start );
 VectorCopy( end, tr_end );
 for (i = 0; i < 10; i++) {
  trap_Trace (&tr, tr_start, ((void*)0), ((void*)0), tr_end, passent, MASK_SHOT);
  traceEnt = &g_entities[ tr.entityNum ];


  if ( tr.surfaceFlags & SURF_NOIMPACT ) {
   return qfalse;
  }

  if ( traceEnt->takedamage) {
   damage = DEFAULT_SHOTGUN_DAMAGE * s_quadFactor;
   if( LogAccuracyHit( traceEnt, ent ) ) {
    hitClient = qtrue;
   }
   G_Damage( traceEnt, ent, ent, forward, tr.endpos, damage, 0, MOD_SHOTGUN);
   return hitClient;
  }
  return qfalse;
 }
 return qfalse;
}
