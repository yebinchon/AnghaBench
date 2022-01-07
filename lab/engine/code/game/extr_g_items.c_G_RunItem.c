
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int vec3_t ;
struct TYPE_20__ {int fraction; scalar_t__ startsolid; int endpos; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_18__ {int currentOrigin; int ownerNum; int maxs; int mins; } ;
struct TYPE_16__ {scalar_t__ trType; int trTime; } ;
struct TYPE_17__ {scalar_t__ groundEntityNum; TYPE_15__ pos; } ;
struct TYPE_21__ {int clipmask; TYPE_3__* item; TYPE_2__ r; TYPE_1__ s; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_22__ {int time; } ;
struct TYPE_19__ {scalar_t__ giType; } ;


 int BG_EvaluateTrajectory (TYPE_15__*,int ,int ) ;
 int CONTENTS_BODY ;
 int CONTENTS_NODROP ;
 scalar_t__ ENTITYNUM_NONE ;
 int G_BounceItem (TYPE_5__*,TYPE_4__*) ;
 int G_FreeEntity (TYPE_5__*) ;
 int G_RunThink (TYPE_5__*) ;
 scalar_t__ IT_TEAM ;
 int MASK_PLAYERSOLID ;
 scalar_t__ TR_GRAVITY ;
 scalar_t__ TR_STATIONARY ;
 int Team_FreeEntity (TYPE_5__*) ;
 int VectorCopy (int ,int ) ;
 TYPE_8__ level ;
 int trap_LinkEntity (TYPE_5__*) ;
 int trap_PointContents (int ,int) ;
 int trap_Trace (TYPE_4__*,int ,int ,int ,int ,int ,int) ;

void G_RunItem( gentity_t *ent ) {
 vec3_t origin;
 trace_t tr;
 int contents;
 int mask;


 if ( ent->s.groundEntityNum == ENTITYNUM_NONE ) {
  if ( ent->s.pos.trType != TR_GRAVITY ) {
   ent->s.pos.trType = TR_GRAVITY;
   ent->s.pos.trTime = level.time;
  }
 }

 if ( ent->s.pos.trType == TR_STATIONARY ) {

  G_RunThink( ent );
  return;
 }


 BG_EvaluateTrajectory( &ent->s.pos, level.time, origin );


 if ( ent->clipmask ) {
  mask = ent->clipmask;
 } else {
  mask = MASK_PLAYERSOLID & ~CONTENTS_BODY;
 }
 trap_Trace( &tr, ent->r.currentOrigin, ent->r.mins, ent->r.maxs, origin,
  ent->r.ownerNum, mask );

 VectorCopy( tr.endpos, ent->r.currentOrigin );

 if ( tr.startsolid ) {
  tr.fraction = 0;
 }

 trap_LinkEntity( ent );


 G_RunThink( ent );

 if ( tr.fraction == 1 ) {
  return;
 }


 contents = trap_PointContents( ent->r.currentOrigin, -1 );
 if ( contents & CONTENTS_NODROP ) {
  if (ent->item && ent->item->giType == IT_TEAM) {
   Team_FreeEntity(ent);
  } else {
   G_FreeEntity( ent );
  }
  return;
 }

 G_BounceItem( ent, &tr );
}
