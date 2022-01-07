
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_12__ {int upmove; float forwardmove; float rightmove; } ;
struct TYPE_11__ {int watertype; TYPE_3__* ps; TYPE_6__ cmd; } ;
struct TYPE_7__ {int normal; } ;
struct TYPE_8__ {TYPE_1__ plane; } ;
struct TYPE_10__ {float* forward; float* right; TYPE_2__ groundTrace; scalar_t__ groundPlane; } ;
struct TYPE_9__ {int* velocity; float speed; } ;


 int CONTENTS_SLIME ;
 int CONTENTS_WATER ;
 scalar_t__ DotProduct (int*,int ) ;
 int OVERCLIP ;
 int PM_Accelerate (float*,float,int ) ;
 scalar_t__ PM_CheckWaterJump () ;
 int PM_ClipVelocity (int*,int ,int*,int ) ;
 float PM_CmdScale (TYPE_6__*) ;
 int PM_Friction () ;
 int PM_SlideMove (int ) ;
 int PM_WaterJumpMove () ;
 int VectorCopy (float*,float*) ;
 float VectorLength (int*) ;
 float VectorNormalize (float*) ;
 int VectorScale (float*,float,float*) ;
 TYPE_5__* pm ;
 float pm_swimScale ;
 int pm_wateraccelerate ;
 TYPE_4__ pml ;
 int qfalse ;

__attribute__((used)) static void PM_WaterMove( void ) {
 int i;
 vec3_t wishvel;
 float wishspeed;
 vec3_t wishdir;
 float scale;
 float vel;

 if ( PM_CheckWaterJump() ) {
  PM_WaterJumpMove();
  return;
 }
 PM_Friction ();

 scale = PM_CmdScale( &pm->cmd );



 if ( !scale ) {
  wishvel[0] = 0;
  wishvel[1] = 0;
  wishvel[2] = -60;
 } else {
  for (i=0 ; i<3 ; i++)
   wishvel[i] = scale * pml.forward[i]*pm->cmd.forwardmove + scale * pml.right[i]*pm->cmd.rightmove;

  wishvel[2] += scale * pm->cmd.upmove;
 }

 VectorCopy (wishvel, wishdir);
 wishspeed = VectorNormalize(wishdir);

 if ( wishspeed > pm->ps->speed * pm_swimScale ) {
  wishspeed = pm->ps->speed * pm_swimScale;
 }

 PM_Accelerate (wishdir, wishspeed, pm_wateraccelerate);


 if ( pml.groundPlane && DotProduct( pm->ps->velocity, pml.groundTrace.plane.normal ) < 0 ) {
  vel = VectorLength(pm->ps->velocity);

  PM_ClipVelocity (pm->ps->velocity, pml.groundTrace.plane.normal,
   pm->ps->velocity, OVERCLIP );

  VectorNormalize(pm->ps->velocity);
  VectorScale(pm->ps->velocity, vel, pm->ps->velocity);
 }

 PM_SlideMove( qfalse );
}
