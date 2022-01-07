
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pm_type; int bobCycle; int* velocity; int viewangles; int origin; } ;
typedef TYPE_1__ playerState_t ;
struct TYPE_9__ {int rdflags; int viewaxis; int vieworg; } ;
struct TYPE_14__ {int bobcycle; scalar_t__ time; scalar_t__ nextOrbitTime; int predictedErrorTime; TYPE_2__ refdef; scalar_t__ hyperspace; int refdefViewAngles; scalar_t__ renderingThirdPerson; int predictedError; int xyspeed; int bobfracsin; TYPE_1__ predictedPlayerState; } ;
struct TYPE_13__ {scalar_t__ value; scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int value; } ;


 int AnglesToAxis (int ,int ) ;
 int CG_CalcFov () ;
 int CG_CalcVrect () ;
 int CG_OffsetFirstPersonView () ;
 int CG_OffsetThirdPersonView () ;
 int M_PI ;
 scalar_t__ PM_INTERMISSION ;
 int RDF_HYPERSPACE ;
 int RDF_NOWORLDMODEL ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 TYPE_7__ cg ;
 TYPE_6__ cg_cameraOrbit ;
 TYPE_5__ cg_cameraOrbitDelay ;
 TYPE_4__ cg_errorDecay ;
 TYPE_3__ cg_thirdPersonAngle ;
 int fabs (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int sin (int) ;
 int sqrt (int) ;

__attribute__((used)) static int CG_CalcViewValues( void ) {
 playerState_t *ps;

 memset( &cg.refdef, 0, sizeof( cg.refdef ) );






 CG_CalcVrect();

 ps = &cg.predictedPlayerState;
 if ( ps->pm_type == PM_INTERMISSION ) {
  VectorCopy( ps->origin, cg.refdef.vieworg );
  VectorCopy( ps->viewangles, cg.refdefViewAngles );
  AnglesToAxis( cg.refdefViewAngles, cg.refdef.viewaxis );
  return CG_CalcFov();
 }

 cg.bobcycle = ( ps->bobCycle & 128 ) >> 7;
 cg.bobfracsin = fabs( sin( ( ps->bobCycle & 127 ) / 127.0 * M_PI ) );
 cg.xyspeed = sqrt( ps->velocity[0] * ps->velocity[0] +
  ps->velocity[1] * ps->velocity[1] );


 VectorCopy( ps->origin, cg.refdef.vieworg );
 VectorCopy( ps->viewangles, cg.refdefViewAngles );

 if (cg_cameraOrbit.integer) {
  if (cg.time > cg.nextOrbitTime) {
   cg.nextOrbitTime = cg.time + cg_cameraOrbitDelay.integer;
   cg_thirdPersonAngle.value += cg_cameraOrbit.value;
  }
 }

 if ( cg_errorDecay.value > 0 ) {
  int t;
  float f;

  t = cg.time - cg.predictedErrorTime;
  f = ( cg_errorDecay.value - t ) / cg_errorDecay.value;
  if ( f > 0 && f < 1 ) {
   VectorMA( cg.refdef.vieworg, f, cg.predictedError, cg.refdef.vieworg );
  } else {
   cg.predictedErrorTime = 0;
  }
 }

 if ( cg.renderingThirdPerson ) {

  CG_OffsetThirdPersonView();
 } else {

  CG_OffsetFirstPersonView();
 }


 AnglesToAxis( cg.refdefViewAngles, cg.refdef.viewaxis );

 if ( cg.hyperspace ) {
  cg.refdef.rdflags |= RDF_NOWORLDMODEL | RDF_HYPERSPACE;
 }


 return CG_CalcFov();
}
