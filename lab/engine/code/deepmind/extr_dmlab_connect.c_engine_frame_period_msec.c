
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* context; } ;
struct TYPE_4__ {int engine_frame_period_msec; } ;
typedef TYPE_1__ GameContext ;
typedef TYPE_2__ DeepmindContext ;


 TYPE_2__* dmlab_context () ;

__attribute__((used)) static int engine_frame_period_msec() {
  DeepmindContext* ctx = dmlab_context();
  GameContext* gc = ctx->context;
  return gc->engine_frame_period_msec;
}
