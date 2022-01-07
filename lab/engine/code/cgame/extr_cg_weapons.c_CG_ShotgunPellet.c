
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int normal; } ;
struct TYPE_9__ {int surfaceFlags; size_t entityNum; TYPE_2__ plane; int endpos; } ;
typedef TYPE_3__ trace_t ;
struct TYPE_7__ {scalar_t__ eType; } ;
struct TYPE_10__ {TYPE_1__ currentState; } ;


 int CG_BubbleTrail (int ,int ,int) ;
 int CG_MissileHitPlayer (int ,int ,int ,size_t) ;
 int CG_MissileHitWall (int ,int ,int ,int ,int ) ;
 int CG_PointContents (int ,int ) ;
 int CG_Trace (TYPE_3__*,int ,int *,int *,int ,int,int ) ;
 int CONTENTS_WATER ;
 scalar_t__ ET_PLAYER ;
 int IMPACTSOUND_DEFAULT ;
 int IMPACTSOUND_METAL ;
 int MASK_SHOT ;
 int SURF_METALSTEPS ;
 int SURF_NOIMPACT ;
 int WP_SHOTGUN ;
 TYPE_5__* cg_entities ;
 int trap_CM_BoxTrace (TYPE_3__*,int ,int ,int *,int *,int ,int) ;

__attribute__((used)) static void CG_ShotgunPellet( vec3_t start, vec3_t end, int skipNum ) {
 trace_t tr;
 int sourceContentType, destContentType;

 CG_Trace( &tr, start, ((void*)0), ((void*)0), end, skipNum, MASK_SHOT );

 sourceContentType = CG_PointContents( start, 0 );
 destContentType = CG_PointContents( tr.endpos, 0 );


 if ( sourceContentType == destContentType ) {
  if ( sourceContentType & CONTENTS_WATER ) {
   CG_BubbleTrail( start, tr.endpos, 32 );
  }
 } else if ( sourceContentType & CONTENTS_WATER ) {
  trace_t trace;

  trap_CM_BoxTrace( &trace, end, start, ((void*)0), ((void*)0), 0, CONTENTS_WATER );
  CG_BubbleTrail( start, trace.endpos, 32 );
 } else if ( destContentType & CONTENTS_WATER ) {
  trace_t trace;

  trap_CM_BoxTrace( &trace, start, end, ((void*)0), ((void*)0), 0, CONTENTS_WATER );
  CG_BubbleTrail( tr.endpos, trace.endpos, 32 );
 }

 if ( tr.surfaceFlags & SURF_NOIMPACT ) {
  return;
 }

 if ( cg_entities[tr.entityNum].currentState.eType == ET_PLAYER ) {
  CG_MissileHitPlayer( WP_SHOTGUN, tr.endpos, tr.plane.normal, tr.entityNum );
 } else {
  if ( tr.surfaceFlags & SURF_NOIMPACT ) {

   return;
  }
  if ( tr.surfaceFlags & SURF_METALSTEPS ) {
   CG_MissileHitWall( WP_SHOTGUN, 0, tr.endpos, tr.plane.normal, IMPACTSOUND_METAL );
  } else {
   CG_MissileHitWall( WP_SHOTGUN, 0, tr.endpos, tr.plane.normal, IMPACTSOUND_DEFAULT );
  }
 }
}
