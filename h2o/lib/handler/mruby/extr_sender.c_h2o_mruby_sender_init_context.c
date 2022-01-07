
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int kernel_module; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_12__ {int constants; TYPE_1__* mrb; } ;
typedef TYPE_2__ h2o_mruby_shared_context_t ;


 int H2O_MRUBY_CODE_SENDER ;
 int H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER ;
 int MRB_ARGS_ARG (int,int ) ;
 int h2o_mruby_assert (TYPE_1__*) ;
 int h2o_mruby_define_callback (TYPE_1__*,char*,int ) ;
 int h2o_mruby_eval_expr_location (TYPE_1__*,int ,char*,int) ;
 int handle_error_callback ;
 int mrb_ary_set (TYPE_1__*,int ,int ,int ) ;
 int mrb_define_method (TYPE_1__*,int ,char*,int ,int ) ;
 int mrb_funcall (TYPE_1__*,int ,char*,int ) ;
 int mrb_top_self (TYPE_1__*) ;
 int send_chunk_eos_callback ;
 int send_chunk_method ;

void h2o_mruby_sender_init_context(h2o_mruby_shared_context_t *shared_ctx)
{
    mrb_state *mrb = shared_ctx->mrb;

    h2o_mruby_eval_expr_location(mrb, H2O_MRUBY_CODE_SENDER, "(h2o)lib/handler/mruby/embedded/sender.rb", 1);
    h2o_mruby_assert(mrb);

    mrb_define_method(mrb, mrb->kernel_module, "_h2o_sender_send_chunk", send_chunk_method, MRB_ARGS_ARG(1, 0));
    h2o_mruby_define_callback(mrb, "_h2o_sender_send_chunk_eos", send_chunk_eos_callback);
    h2o_mruby_define_callback(mrb, "_h2o_sender_handle_error", handle_error_callback);

    mrb_ary_set(mrb, shared_ctx->constants, H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER,
                mrb_funcall(mrb, mrb_top_self(mrb), "_h2o_sender_proc_each_to_fiber", 0));
    h2o_mruby_assert(mrb);
}
