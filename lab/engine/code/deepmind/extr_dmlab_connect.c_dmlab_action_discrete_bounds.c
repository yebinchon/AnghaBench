
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* custom_action_discrete_bounds ) (int ,int,int*,int*) ;} ;
struct TYPE_6__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_5__ {TYPE_3__* dm_ctx; } ;
typedef TYPE_2__ GameContext ;
typedef TYPE_3__ DeepmindContext ;


 int ARRAY_LEN (int ) ;
 int kActionNames ;
 int kActions_Fire ;
 int kActions_StrafeLeftRight ;
 int kMaxLookAngularVelocity ;
 int stub1 (int ,int,int*,int*) ;

__attribute__((used)) static void dmlab_action_discrete_bounds(
    void* context,
    int discrete_idx, int* min_value_out, int* max_value_out) {
  if (discrete_idx < kActions_StrafeLeftRight) {
    *min_value_out = -kMaxLookAngularVelocity;
    *max_value_out = kMaxLookAngularVelocity;
  } else if (discrete_idx < kActions_Fire) {
    *min_value_out = -1;
    *max_value_out = 1;
  } else if (discrete_idx < ARRAY_LEN(kActionNames)) {
    *min_value_out = 0;
    *max_value_out = 1;
  } else {
    GameContext* gc = context;
    DeepmindContext* ctx = gc->dm_ctx;
    ctx->hooks.custom_action_discrete_bounds(
        ctx->userdata, discrete_idx - ARRAY_LEN(kActionNames), min_value_out,
        max_value_out);
  }
}
