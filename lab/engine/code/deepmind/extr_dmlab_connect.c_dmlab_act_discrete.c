
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* custom_action_discrete_apply ) (int ,int const*) ;int (* set_actions ) (int ,float,float,int,int,int,int) ;} ;
struct TYPE_6__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_5__ {int is_connecting; TYPE_3__* dm_ctx; scalar_t__ is_server; } ;
typedef TYPE_2__ GameContext ;
typedef TYPE_3__ DeepmindContext ;


 int ARRAY_LEN (int ) ;
 int kActionNames ;
 size_t kActions_Crouch ;
 size_t kActions_Fire ;
 size_t kActions_Jump ;
 size_t kActions_LookDownUp ;
 size_t kActions_LookLeftRight ;
 size_t kActions_MoveBackForward ;
 size_t kActions_StrafeLeftRight ;
 int const kPixelsPerFrameToDegreesPerMilliseconds ;
 int stub1 (int ,float,float,int,int,int,int) ;
 int stub2 (int ,int const*) ;

__attribute__((used)) static void dmlab_act_discrete(void* context, const int act_d[]) {
  GameContext* gc = context;
  gc->is_connecting = 0;
  if (gc->is_server) return;
  DeepmindContext* ctx = gc->dm_ctx;
  int rightmove = act_d[kActions_StrafeLeftRight] * 127;
  int forwardmove = act_d[kActions_MoveBackForward] * 127;
  float yaw =
      -act_d[kActions_LookLeftRight] * kPixelsPerFrameToDegreesPerMilliseconds;
  float pitch =
      act_d[kActions_LookDownUp] * kPixelsPerFrameToDegreesPerMilliseconds;
  int upmove = (act_d[kActions_Jump] - act_d[kActions_Crouch]) * 127;
  int buttons = act_d[kActions_Fire];

  ctx->hooks.set_actions(ctx->userdata, pitch, yaw, forwardmove, rightmove,
                         upmove, buttons);
  ctx->hooks.custom_action_discrete_apply(ctx->userdata,
                                          act_d + ARRAY_LEN(kActionNames));
}
