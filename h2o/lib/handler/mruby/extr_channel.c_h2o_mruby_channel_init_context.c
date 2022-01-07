
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_state ;
struct TYPE_3__ {int constants; int * mrb; } ;
typedef TYPE_1__ h2o_mruby_shared_context_t ;


 int H2O_MRUBY_CHANNEL_CLASS ;
 int H2O_MRUBY_CODE_CHANNEL ;
 int MRB_ARGS_NONE () ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int channel_initialize_method ;
 int channel_notify_method ;
 int h2o_mruby_assert (int *) ;
 int h2o_mruby_define_callback (int *,char*,int ) ;
 int h2o_mruby_eval_expr_location (int *,int ,char*,int) ;
 int mrb_ary_set (int *,int ,int ,int ) ;
 struct RClass* mrb_class_get_under (int *,struct RClass*,char*) ;
 int mrb_define_method (int *,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (int *,char*) ;
 int mrb_obj_value (struct RClass*) ;
 int wait_callback ;

void h2o_mruby_channel_init_context(h2o_mruby_shared_context_t *shared_ctx)
{
    mrb_state *mrb = shared_ctx->mrb;

    h2o_mruby_eval_expr_location(mrb, H2O_MRUBY_CODE_CHANNEL, "(h2o)lib/handler/mruby/embedded/channel.rb", 1);
    h2o_mruby_assert(mrb);

    struct RClass *module, *klass;
    module = mrb_define_module(mrb, "H2O");

    klass = mrb_class_get_under(mrb, module, "Channel");
    MRB_SET_INSTANCE_TT(klass, MRB_TT_DATA);
    mrb_ary_set(mrb, shared_ctx->constants, H2O_MRUBY_CHANNEL_CLASS, mrb_obj_value(klass));
    mrb_define_method(mrb, klass, "initialize", channel_initialize_method, MRB_ARGS_NONE());
    mrb_define_method(mrb, klass, "_notify", channel_notify_method, MRB_ARGS_NONE());
    h2o_mruby_define_callback(mrb, "_h2o__channel_wait", wait_callback);
}
