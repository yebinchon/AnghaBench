
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {int * angles; int buttons; int upmove; int rightmove; int forwardmove; int serverTime; int weapon; } ;
typedef TYPE_3__ usercmd_t ;
struct TYPE_12__ {void** viewangles; int serverTime; int cgameUserCmdValue; } ;
struct TYPE_9__ {scalar_t__ (* get_native_app ) (int ) ;int (* get_actions ) (int ,double*,double*,int *,int *,int *,int *) ;int (* set_actions ) (int ,int,int,int ,int ,int ,int ) ;} ;
struct TYPE_8__ {int (* engine_frame_period_msec ) () ;int (* is_map_loading ) () ;} ;
struct TYPE_11__ {int userdata; TYPE_2__ hooks; TYPE_1__ calls; } ;
typedef TYPE_4__ DeepmindContext ;


 int ANGLE2SHORT (void*) ;
 int AngleDelta (void*,scalar_t__) ;
 void* AngleNormalize360 (scalar_t__) ;
 size_t PITCH ;
 size_t ROLL ;
 size_t YAW ;
 TYPE_6__ cl ;
 TYPE_4__* dmlab_context () ;
 int frame_msec ;
 int stub1 () ;
 scalar_t__ stub2 (int ) ;
 int stub3 (int ,int,int,int ,int ,int ,int ) ;
 int stub4 () ;
 int stub5 (int ,double*,double*,int *,int *,int *,int *) ;

void CL_FinishMove( vec3_t old_angles, usercmd_t *cmd ) {
 DeepmindContext* ctx = dmlab_context();
 int i;
 int eng_frame_msec = ctx->calls.engine_frame_period_msec();
 if ( eng_frame_msec == 0 ) {
  eng_frame_msec = frame_msec;
 }

 cmd->weapon = cl.cgameUserCmdValue;



 cmd->serverTime = cl.serverTime;

 if (ctx->hooks.get_native_app( ctx->userdata ) != 0) {
  ctx->hooks.set_actions(
    ctx->userdata,
    AngleDelta( cl.viewangles[PITCH], old_angles[PITCH] ) / eng_frame_msec,
    AngleDelta( cl.viewangles[YAW], old_angles[YAW] ) / eng_frame_msec,
    cmd->forwardmove, cmd->rightmove, cmd->upmove, cmd->buttons );
 }

 double pitch = 0;
 double yaw = 0;
  if (!ctx->calls.is_map_loading()) {
  ctx->hooks.get_actions(
    ctx->userdata,
    &pitch, &yaw,
    &cmd->forwardmove, &cmd->rightmove, &cmd->upmove,
    &cmd->buttons);
 } else {
  cmd->forwardmove = 0;
  cmd->rightmove = 0;
  cmd->upmove = 0;
  cmd->buttons = 0;
 }

 cl.viewangles[ROLL] = 0;
 cl.viewangles[PITCH] = AngleNormalize360( old_angles[PITCH] + pitch * eng_frame_msec );
 cl.viewangles[YAW] = AngleNormalize360( old_angles[YAW] + yaw * eng_frame_msec );

 for (i=0 ; i<3 ; i++) {
  cmd->angles[i] = ANGLE2SHORT(cl.viewangles[i]);
 }
}
