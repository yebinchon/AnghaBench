
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * exc; } ;
typedef TYPE_2__ mrb_state ;
struct TYPE_12__ {TYPE_8__* req; } ;
typedef TYPE_3__ h2o_mruby_generator_t ;
struct TYPE_13__ {TYPE_1__* shared; } ;
typedef TYPE_4__ h2o_mruby_context_t ;
struct TYPE_14__ {int * _generator; } ;
struct TYPE_10__ {TYPE_2__* mrb; } ;


 int H2O_MRUBY_MODULE_NAME ;
 int RSTRING_PTR (int ) ;
 int assert (int ) ;
 int h2o_error_printf (char*,int ) ;
 int h2o_req_log_error (TYPE_8__*,int ,char*,int ) ;
 int h2o_send_error_500 (TYPE_8__*,char*,char*,int ) ;
 int mrb_inspect (TYPE_2__*,int ) ;
 int mrb_obj_value (int *) ;

__attribute__((used)) static void handle_exception(h2o_mruby_context_t *ctx, h2o_mruby_generator_t *generator)
{
    mrb_state *mrb = ctx->shared->mrb;
    assert(mrb->exc != ((void*)0));

    if (generator == ((void*)0) || generator->req->_generator != ((void*)0)) {
        h2o_error_printf("mruby raised: %s\n", RSTRING_PTR(mrb_inspect(mrb, mrb_obj_value(mrb->exc))));
    } else {
        h2o_req_log_error(generator->req, H2O_MRUBY_MODULE_NAME, "mruby raised: %s\n",
                          RSTRING_PTR(mrb_inspect(mrb, mrb_obj_value(mrb->exc))));
        h2o_send_error_500(generator->req, "Internal Server Error", "Internal Server Error", 0);
    }
    mrb->exc = ((void*)0);
}
