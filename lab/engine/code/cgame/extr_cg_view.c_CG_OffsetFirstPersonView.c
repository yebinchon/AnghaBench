
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int vec3_t ;
struct TYPE_20__ {float value; } ;
struct TYPE_19__ {float value; } ;
struct TYPE_18__ {float value; } ;
struct TYPE_17__ {float value; } ;
struct TYPE_16__ {float value; } ;
struct TYPE_15__ {int pm_flags; scalar_t__ viewheight; int velocity; } ;
struct TYPE_14__ {float* vieworg; int * viewaxis; } ;
struct TYPE_12__ {scalar_t__ pm_type; float* stats; } ;
struct TYPE_13__ {TYPE_1__ ps; } ;
struct TYPE_11__ {float* refdefViewAngles; float damageTime; float time; float v_dmg_pitch; float v_dmg_roll; float landTime; float fall_value; int xyspeed; float bobfracsin; int bobcycle; int duckTime; int duckChange; float landChange; TYPE_4__ predictedPlayerState; TYPE_3__ refdef; TYPE_2__* snap; } ;


 int AngleVectors (float*,int ,int *,int ) ;
 int CG_StepOffset () ;
 float DAMAGE_DEFLECT_TIME ;
 float DAMAGE_RETURN_TIME ;
 int DUCK_TIME ;
 float DotProduct (int ,int ) ;
 float FALL_TIME ;
 float LAND_DEFLECT_TIME ;
 float LAND_RETURN_TIME ;
 float NECK_LENGTH ;
 size_t PITCH ;
 int PMF_DUCKED ;
 scalar_t__ PM_INTERMISSION ;
 size_t ROLL ;
 size_t STAT_DEAD_YAW ;
 size_t STAT_HEALTH ;
 int VectorCopy (int ,int ) ;
 int VectorMA (float*,float,int ,float*) ;
 size_t YAW ;
 TYPE_10__ cg ;
 TYPE_9__ cg_bobpitch ;
 TYPE_8__ cg_bobroll ;
 TYPE_7__ cg_bobup ;
 TYPE_6__ cg_runpitch ;
 TYPE_5__ cg_runroll ;

__attribute__((used)) static void CG_OffsetFirstPersonView( void ) {
 float *origin;
 float *angles;
 float bob;
 float ratio;
 float delta;
 float speed;
 float f;
 vec3_t predictedVelocity;
 int timeDelta;

 if ( cg.snap->ps.pm_type == PM_INTERMISSION ) {
  return;
 }

 origin = cg.refdef.vieworg;
 angles = cg.refdefViewAngles;


 if ( cg.snap->ps.stats[STAT_HEALTH] <= 0 ) {
  angles[ROLL] = 40;
  angles[PITCH] = -15;
  angles[YAW] = cg.snap->ps.stats[STAT_DEAD_YAW];
  origin[2] += cg.predictedPlayerState.viewheight;
  return;
 }


 if ( cg.damageTime ) {
  ratio = cg.time - cg.damageTime;
  if ( ratio < DAMAGE_DEFLECT_TIME ) {
   ratio /= DAMAGE_DEFLECT_TIME;
   angles[PITCH] += ratio * cg.v_dmg_pitch;
   angles[ROLL] += ratio * cg.v_dmg_roll;
  } else {
   ratio = 1.0 - ( ratio - DAMAGE_DEFLECT_TIME ) / DAMAGE_RETURN_TIME;
   if ( ratio > 0 ) {
    angles[PITCH] += ratio * cg.v_dmg_pitch;
    angles[ROLL] += ratio * cg.v_dmg_roll;
   }
  }
 }
 VectorCopy( cg.predictedPlayerState.velocity, predictedVelocity );

 delta = DotProduct ( predictedVelocity, cg.refdef.viewaxis[0]);
 angles[PITCH] += delta * cg_runpitch.value;

 delta = DotProduct ( predictedVelocity, cg.refdef.viewaxis[1]);
 angles[ROLL] -= delta * cg_runroll.value;




 speed = cg.xyspeed > 200 ? cg.xyspeed : 200;

 delta = cg.bobfracsin * cg_bobpitch.value * speed;
 if (cg.predictedPlayerState.pm_flags & PMF_DUCKED)
  delta *= 3;
 angles[PITCH] += delta;
 delta = cg.bobfracsin * cg_bobroll.value * speed;
 if (cg.predictedPlayerState.pm_flags & PMF_DUCKED)
  delta *= 3;
 if (cg.bobcycle & 1)
  delta = -delta;
 angles[ROLL] += delta;




 origin[2] += cg.predictedPlayerState.viewheight;


 timeDelta = cg.time - cg.duckTime;
 if ( timeDelta < DUCK_TIME) {
  origin[2] -= cg.duckChange
   * (DUCK_TIME - timeDelta) / DUCK_TIME;
 }


 bob = cg.bobfracsin * cg.xyspeed * cg_bobup.value;
 if (bob > 6) {
  bob = 6;
 }

 origin[2] += bob;



 delta = cg.time - cg.landTime;
 if ( delta < LAND_DEFLECT_TIME ) {
  f = delta / LAND_DEFLECT_TIME;
  origin[2] += cg.landChange * f;
 } else if ( delta < LAND_DEFLECT_TIME + LAND_RETURN_TIME ) {
  delta -= LAND_DEFLECT_TIME;
  f = 1.0 - ( delta / LAND_RETURN_TIME );
  origin[2] += cg.landChange * f;
 }


 CG_StepOffset();
}
