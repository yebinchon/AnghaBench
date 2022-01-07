
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* add_score ) (int ,int,double) ;} ;
struct TYPE_5__ {int userdata; TYPE_1__ hooks; } ;
typedef TYPE_2__ DeepmindContext ;


 TYPE_2__* dmlab_context () ;
 int stub1 (int ,int,double) ;

__attribute__((used)) static void call_add_score(int player_id, double score) {
  DeepmindContext* ctx = dmlab_context();
  ctx->hooks.add_score(ctx->userdata, player_id, score);
}
