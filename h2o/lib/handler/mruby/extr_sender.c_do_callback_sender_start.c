
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int inflight; } ;
struct TYPE_11__ {int final_sent; int body_obj; } ;
struct st_h2o_mruby_callback_sender_t {TYPE_7__ sending; TYPE_3__ super; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_10__ {int generator; } ;
struct TYPE_12__ {TYPE_6__* ctx; TYPE_2__ refs; scalar_t__ sender; } ;
typedef TYPE_4__ h2o_mruby_generator_t ;
struct TYPE_13__ {TYPE_1__* shared; } ;
struct TYPE_9__ {int constants; int * mrb; } ;


 int H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER ;
 int H2O_SEND_STATE_IN_PROGRESS ;
 int h2o_doublebuffer_prepare_empty (TYPE_7__*) ;
 int h2o_mruby_run_fiber (TYPE_6__*,int ,int ,int ) ;
 int h2o_mruby_sender_do_send (TYPE_4__*,int *,int ,int ) ;
 int mrb_ary_entry (int ,int ) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_set (int *,int ,int,int ) ;

__attribute__((used)) static void do_callback_sender_start(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
    mrb_state *mrb = generator->ctx->shared->mrb;
    mrb_value proc = mrb_ary_entry(generator->ctx->shared->constants, H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER);
    mrb_value input = mrb_ary_new_capa(mrb, 2);
    mrb_ary_set(mrb, input, 0, sender->super.body_obj);
    mrb_ary_set(mrb, input, 1, generator->refs.generator);
    h2o_mruby_run_fiber(generator->ctx, proc, input, 0);

    if (!sender->super.final_sent && !sender->sending.inflight) {
        h2o_doublebuffer_prepare_empty(&sender->sending);
        h2o_mruby_sender_do_send(generator, ((void*)0), 0, H2O_SEND_STATE_IN_PROGRESS);
    }
}
