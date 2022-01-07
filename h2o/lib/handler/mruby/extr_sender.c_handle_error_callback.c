
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ inflight; } ;
struct TYPE_11__ {int final_sent; } ;
struct st_h2o_mruby_callback_sender_t {int has_error; TYPE_2__ sending; TYPE_1__ super; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_14__ {scalar_t__ sender; } ;
typedef TYPE_4__ h2o_mruby_generator_t ;
struct TYPE_15__ {TYPE_3__* shared; } ;
typedef TYPE_5__ h2o_mruby_context_t ;
struct TYPE_13__ {int * mrb; } ;


 int H2O_SEND_STATE_ERROR ;
 int check_precond (int *,TYPE_4__*) ;
 TYPE_4__* h2o_mruby_get_generator (int *,int ) ;
 int h2o_mruby_sender_close_body (TYPE_4__*) ;
 int h2o_mruby_sender_do_send (TYPE_4__*,int *,int ,int ) ;
 int mrb_ary_entry (int ,int) ;
 int mrb_nil_p (int ) ;

__attribute__((used)) static mrb_value handle_error_callback(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                       int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    mrb_value err = mrb_ary_entry(args, 0);
    mrb_value gen = mrb_ary_entry(args, 1);
    h2o_mruby_generator_t *generator = h2o_mruby_get_generator(mrb, gen);

    *run_again = 1;

    mrb_value exc = check_precond(mrb, generator);
    if (!mrb_nil_p(exc))
        return exc;

    struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
    if (!sender->super.final_sent) {
        if (sender->sending.inflight) {
            sender->has_error = 1;
        } else {
            h2o_mruby_sender_do_send(generator, ((void*)0), 0, H2O_SEND_STATE_ERROR);
        }
    }
    h2o_mruby_sender_close_body(generator);

    return err;
}
