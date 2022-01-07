
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


typedef int vec3_t ;
struct TYPE_24__ {int fraction; int surfaceFlags; int entityNum; scalar_t__ startsolid; int endpos; scalar_t__ allsolid; } ;
typedef TYPE_7__ trace_t ;
struct TYPE_23__ {int ownerNum; int currentOrigin; int maxs; int mins; } ;
struct TYPE_22__ {scalar_t__ weapon; scalar_t__ eType; int pos; } ;
struct TYPE_25__ {int count; TYPE_6__ r; int clipmask; TYPE_5__ s; TYPE_4__* parent; TYPE_2__* target_ent; } ;
typedef TYPE_8__ gentity_t ;
struct TYPE_21__ {TYPE_3__* client; } ;
struct TYPE_20__ {TYPE_8__* hook; } ;
struct TYPE_18__ {int number; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
struct TYPE_17__ {int time; } ;


 int BG_EvaluateTrajectory (int *,int ,int ) ;
 int ENTITYNUM_NONE ;
 scalar_t__ ET_MISSILE ;
 int G_FreeEntity (TYPE_8__*) ;
 int G_MissileImpact (TYPE_8__*,TYPE_7__*) ;
 int G_RunThink (TYPE_8__*) ;
 int SURF_NOIMPACT ;
 int VectorCopy (int ,int ) ;
 scalar_t__ WP_PROX_LAUNCHER ;
 TYPE_11__ level ;
 int trap_LinkEntity (TYPE_8__*) ;
 int trap_Trace (TYPE_7__*,int ,int ,int ,int ,int,int ) ;

void G_RunMissile( gentity_t *ent ) {
 vec3_t origin;
 trace_t tr;
 int passent;


 BG_EvaluateTrajectory( &ent->s.pos, level.time, origin );


 if ( ent->target_ent ) {
  passent = ent->target_ent->s.number;
 }






 else {

  passent = ent->r.ownerNum;
 }

 trap_Trace( &tr, ent->r.currentOrigin, ent->r.mins, ent->r.maxs, origin, passent, ent->clipmask );

 if ( tr.startsolid || tr.allsolid ) {

  trap_Trace( &tr, ent->r.currentOrigin, ent->r.mins, ent->r.maxs, ent->r.currentOrigin, passent, ent->clipmask );
  tr.fraction = 0;
 }
 else {
  VectorCopy( tr.endpos, ent->r.currentOrigin );
 }

 trap_LinkEntity( ent );

 if ( tr.fraction != 1 ) {

  if ( tr.surfaceFlags & SURF_NOIMPACT ) {

   if (ent->parent && ent->parent->client && ent->parent->client->hook == ent) {
    ent->parent->client->hook = ((void*)0);
   }
   G_FreeEntity( ent );
   return;
  }
  G_MissileImpact( ent, &tr );
  if ( ent->s.eType != ET_MISSILE ) {
   return;
  }
 }
 G_RunThink( ent );
}
