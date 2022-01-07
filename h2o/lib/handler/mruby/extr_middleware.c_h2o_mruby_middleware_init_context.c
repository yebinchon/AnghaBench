
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_state ;
struct TYPE_3__ {int constants; int * mrb; } ;
typedef TYPE_1__ h2o_mruby_shared_context_t ;


 int H2O_MRUBY_APP_INPUT_STREAM_CLASS ;
 int H2O_MRUBY_APP_REQUEST_CLASS ;
 int H2O_MRUBY_CODE_MIDDLEWARE ;
 int MRB_ARGS_ARG (int,int ) ;
 int MRB_ARGS_NONE () ;
 int build_response_method ;
 int can_build_response_method ;
 int h2o_mruby_assert (int *) ;
 int h2o_mruby_define_callback (int *,char*,int ) ;
 int h2o_mruby_eval_expr (int *,int ) ;
 int middleware_request_method ;
 int middleware_wait_chunk_callback ;
 int middleware_wait_response_callback ;
 int mrb_ary_set (int *,int ,int ,int ) ;
 struct RClass* mrb_class_get_under (int *,struct RClass*,char*) ;
 int mrb_define_method (int *,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (int *,char*) ;
 int mrb_obj_value (struct RClass*) ;

void h2o_mruby_middleware_init_context(h2o_mruby_shared_context_t *shared_ctx)
{
    mrb_state *mrb = shared_ctx->mrb;

    h2o_mruby_eval_expr(mrb, H2O_MRUBY_CODE_MIDDLEWARE);
    h2o_mruby_assert(mrb);

    struct RClass *module = mrb_define_module(mrb, "H2O");

    struct RClass *app_klass = mrb_class_get_under(shared_ctx->mrb, module, "App");
    mrb_define_method(mrb, app_klass, "request", middleware_request_method, MRB_ARGS_ARG(1, 0));

    struct RClass *app_request_klass = mrb_class_get_under(shared_ctx->mrb, module, "AppRequest");
    mrb_ary_set(shared_ctx->mrb, shared_ctx->constants, H2O_MRUBY_APP_REQUEST_CLASS, mrb_obj_value(app_request_klass));
    h2o_mruby_define_callback(mrb, "_h2o_middleware_wait_response", middleware_wait_response_callback);
    mrb_define_method(mrb, app_request_klass, "_can_build_response?", can_build_response_method, MRB_ARGS_NONE());
    mrb_define_method(mrb, app_request_klass, "_build_response", build_response_method, MRB_ARGS_NONE());

    struct RClass *app_input_stream_klass = mrb_class_get_under(shared_ctx->mrb, module, "AppInputStream");
    mrb_ary_set(shared_ctx->mrb, shared_ctx->constants, H2O_MRUBY_APP_INPUT_STREAM_CLASS, mrb_obj_value(app_input_stream_klass));
    h2o_mruby_define_callback(mrb, "_h2o_middleware_wait_chunk", middleware_wait_chunk_callback);

    h2o_mruby_assert(mrb);
}
