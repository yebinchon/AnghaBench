
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* context; } ;
struct TYPE_4__ {int is_map_loading; } ;
typedef TYPE_1__ GameContext ;
typedef TYPE_2__ DeepmindContext ;


 TYPE_2__* dmlab_context () ;

__attribute__((used)) static bool dmlab_is_map_loading(void* context) {
  DeepmindContext* ctx = dmlab_context();
  GameContext* gc = ctx->context;
  return gc->is_map_loading;
}
