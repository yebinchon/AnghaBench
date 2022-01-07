
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int endpos; } ;
typedef TYPE_1__ trace_t ;
typedef scalar_t__ qboolean ;
struct TYPE_5__ {scalar_t__ value; } ;


 int CG_Bleed (int ,int) ;
 int CG_BubbleTrail (int ,int ,int) ;
 scalar_t__ CG_CalcMuzzlePoint (int,int ) ;
 int CG_MissileHitWall (int ,int ,int ,int ,int ) ;
 int CG_PointContents (int ,int ) ;
 int CG_Tracer (int ,int ) ;
 int CONTENTS_WATER ;
 int IMPACTSOUND_DEFAULT ;
 int WP_MACHINEGUN ;
 TYPE_3__ cg_tracerChance ;
 scalar_t__ random () ;
 int trap_CM_BoxTrace (TYPE_1__*,int ,int ,int *,int *,int ,int) ;

void CG_Bullet( vec3_t end, int sourceEntityNum, vec3_t normal, qboolean flesh, int fleshEntityNum ) {
 trace_t trace;
 int sourceContentType, destContentType;
 vec3_t start;



 if ( sourceEntityNum >= 0 && cg_tracerChance.value > 0 ) {
  if ( CG_CalcMuzzlePoint( sourceEntityNum, start ) ) {
   sourceContentType = CG_PointContents( start, 0 );
   destContentType = CG_PointContents( end, 0 );


   if ( ( sourceContentType == destContentType ) && ( sourceContentType & CONTENTS_WATER ) ) {
    CG_BubbleTrail( start, end, 32 );
   }

   else if ( ( sourceContentType & CONTENTS_WATER ) ) {
    trap_CM_BoxTrace( &trace, end, start, ((void*)0), ((void*)0), 0, CONTENTS_WATER );
    CG_BubbleTrail( start, trace.endpos, 32 );
   }

   else if ( ( destContentType & CONTENTS_WATER ) ) {
    trap_CM_BoxTrace( &trace, start, end, ((void*)0), ((void*)0), 0, CONTENTS_WATER );
    CG_BubbleTrail( trace.endpos, end, 32 );
   }


   if ( random() < cg_tracerChance.value ) {
    CG_Tracer( start, end );
   }
  }
 }


 if ( flesh ) {
  CG_Bleed( end, fleshEntityNum );
 } else {
  CG_MissileHitWall( WP_MACHINEGUN, 0, end, normal, IMPACTSOUND_DEFAULT );
 }

}
