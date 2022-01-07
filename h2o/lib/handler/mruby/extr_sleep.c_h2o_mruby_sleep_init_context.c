
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int * mrb; } ;
typedef TYPE_1__ h2o_mruby_shared_context_t ;


 int h2o_mruby_define_callback (int *,char*,int ) ;
 int sleep_callback ;

void h2o_mruby_sleep_init_context(h2o_mruby_shared_context_t *ctx)
{
    mrb_state *mrb = ctx->mrb;

    h2o_mruby_define_callback(mrb, "_h2o__sleep", sleep_callback);
}
