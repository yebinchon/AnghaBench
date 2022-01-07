
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* custom_action_discrete_count ) (int ) ;} ;
struct TYPE_6__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_5__ {scalar_t__ is_server; TYPE_3__* dm_ctx; } ;
typedef TYPE_2__ GameContext ;
typedef TYPE_3__ DeepmindContext ;


 int ARRAY_LEN (int ) ;
 int kActionNames ;
 int stub1 (int ) ;

__attribute__((used)) static int dmlab_action_discrete_count(void* context) {
  GameContext* gc = context;
  DeepmindContext* ctx = gc->dm_ctx;
  return gc->is_server
             ? 0
             : ARRAY_LEN(kActionNames) +
                   ctx->hooks.custom_action_discrete_count(ctx->userdata);
}
