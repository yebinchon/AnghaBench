
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_state ;
struct TYPE_3__ {int * mrb; } ;
typedef TYPE_1__ h2o_mruby_shared_context_t ;


 int H2O_MRUBY_CODE_REDIS ;
 int MRB_ARGS_ARG (int,int ) ;
 int MRB_ARGS_NONE () ;
 int call_method ;
 int connect_method ;
 int disconnect_method ;
 int disconnected_method ;
 int h2o_mruby_assert (int *) ;
 int h2o_mruby_define_callback (int *,char*,int ) ;
 int h2o_mruby_eval_expr_location (int *,int ,char*,int) ;
 struct RClass* mrb_class_get_under (int *,struct RClass*,char*) ;
 int mrb_define_method (int *,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (int *,char*) ;
 int redis_join_reply_callback ;
 int setup_method ;

void h2o_mruby_redis_init_context(h2o_mruby_shared_context_t *ctx)
{
    mrb_state *mrb = ctx->mrb;

    h2o_mruby_eval_expr_location(mrb, H2O_MRUBY_CODE_REDIS, "(h2o)lib/handler/mruby/embedded/redis.rb", 1);
    h2o_mruby_assert(mrb);

    struct RClass *module = mrb_define_module(mrb, "H2O");

    h2o_mruby_define_callback(mrb, "_h2o__redis_join_reply", redis_join_reply_callback);

    struct RClass *redis_klass = mrb_class_get_under(mrb, module, "Redis");
    mrb_define_method(mrb, redis_klass, "__setup", setup_method, MRB_ARGS_NONE());
    mrb_define_method(mrb, redis_klass, "__connect", connect_method, MRB_ARGS_NONE());
    mrb_define_method(mrb, redis_klass, "disconnected?", disconnected_method, MRB_ARGS_NONE());
    mrb_define_method(mrb, redis_klass, "disconnect", disconnect_method, MRB_ARGS_NONE());
    mrb_define_method(mrb, redis_klass, "__call", call_method, MRB_ARGS_ARG(1, 0));
}
