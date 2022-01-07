
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int inflight; } ;
struct TYPE_11__ {int final_sent; } ;
struct st_h2o_mruby_callback_sender_t {int receiving; TYPE_7__ sending; TYPE_1__ super; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_13__ {scalar_t__ sender; } ;
typedef TYPE_3__ h2o_mruby_generator_t ;
struct TYPE_14__ {TYPE_2__* shared; } ;
typedef TYPE_4__ h2o_mruby_context_t ;
struct TYPE_12__ {int * mrb; } ;


 int check_precond (int *,TYPE_3__*) ;
 TYPE_3__* h2o_mruby_get_generator (int *,int ) ;
 int h2o_mruby_sender_close_body (TYPE_3__*) ;
 int h2o_mruby_sender_do_send_buffer (TYPE_3__*,TYPE_7__*,int *,int) ;
 int mrb_ary_entry (int ,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value send_chunk_eos_callback(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                         int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    h2o_mruby_generator_t *generator = h2o_mruby_get_generator(mrb, mrb_ary_entry(args, 0));

    {
        mrb_value exc = check_precond(mrb, generator);
        if (!mrb_nil_p(exc)) {
            *run_again = 1;
            return exc;
        }
    }

    struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
    if (!sender->super.final_sent && !sender->sending.inflight)
        h2o_mruby_sender_do_send_buffer(generator, &sender->sending, &sender->receiving, 1);
    h2o_mruby_sender_close_body(generator);

    return mrb_nil_value();
}
