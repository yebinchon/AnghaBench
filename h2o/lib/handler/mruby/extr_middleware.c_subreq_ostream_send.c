
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * response; TYPE_4__* body; } ;
struct st_mruby_subreq_t {int chain_proceed; scalar_t__ state; TYPE_5__* ctx; TYPE_6__* buf; int receiver; TYPE_3__ shortcut; int super; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int h2o_sendvec_t ;
typedef int h2o_send_state_t ;
typedef int h2o_req_t ;
typedef int h2o_ostream_t ;
struct TYPE_12__ {scalar_t__ size; int bytes; } ;
struct TYPE_11__ {TYPE_1__* shared; } ;
struct TYPE_10__ {TYPE_2__* sender; } ;
struct TYPE_8__ {scalar_t__ final_sent; } ;
struct TYPE_7__ {int * mrb; } ;


 scalar_t__ FINAL_RECEIVED ;
 scalar_t__ INITIAL ;
 scalar_t__ RECEIVED ;
 int append_bufs (struct st_mruby_subreq_t*,int *,size_t) ;
 int detach_receiver (struct st_mruby_subreq_t*) ;
 int h2o_buffer_consume (TYPE_6__**,scalar_t__) ;
 int h2o_mruby_new_str (int *,int ,scalar_t__) ;
 int h2o_mruby_run_fiber (TYPE_5__*,int ,int ,int *) ;
 int h2o_mruby_sender_do_send (TYPE_4__*,int *,size_t,int ) ;
 int h2o_proceed_response_deferred (int *) ;
 scalar_t__ h2o_send_state_is_in_progress (int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int send_response_shortcutted (struct st_mruby_subreq_t*) ;

__attribute__((used)) static void subreq_ostream_send(h2o_ostream_t *_self, h2o_req_t *_subreq, h2o_sendvec_t *inbufs, size_t inbufcnt,
                                h2o_send_state_t state)
{
    struct st_mruby_subreq_t *subreq = (void *)_subreq;
    mrb_state *mrb = subreq->ctx->shared->mrb;


    if (subreq->shortcut.body != ((void*)0)) {
        if (subreq->shortcut.body->sender->final_sent)
            return;

        subreq->chain_proceed = 1;
        if (subreq->buf == ((void*)0)) {

            h2o_mruby_sender_do_send(subreq->shortcut.body, inbufs, inbufcnt, state);
        } else {

            append_bufs(subreq, inbufs, inbufcnt);
        }

        return;
    }

    int is_first = subreq->state == INITIAL;
    if (h2o_send_state_is_in_progress(state)) {
        h2o_proceed_response_deferred(&subreq->super);
        subreq->state = RECEIVED;
    } else {
        subreq->state = FINAL_RECEIVED;
    }

    append_bufs(subreq, inbufs, inbufcnt);


    if (subreq->shortcut.response != ((void*)0)) {
        send_response_shortcutted(subreq);
        return;
    }

    if (mrb_nil_p(subreq->receiver))
        return;

    int gc_arena = mrb_gc_arena_save(mrb);

    if (is_first) {

        h2o_mruby_run_fiber(subreq->ctx, detach_receiver(subreq), mrb_nil_value(), ((void*)0));
    } else if (subreq->buf->size != 0) {

        mrb_value chunk = h2o_mruby_new_str(mrb, subreq->buf->bytes, subreq->buf->size);
        h2o_buffer_consume(&subreq->buf, subreq->buf->size);
        h2o_mruby_run_fiber(subreq->ctx, detach_receiver(subreq), chunk, ((void*)0));
    } else if (subreq->state == FINAL_RECEIVED) {
        h2o_mruby_run_fiber(subreq->ctx, detach_receiver(subreq), mrb_nil_value(), ((void*)0));
    }

    mrb_gc_arena_restore(mrb, gc_arena);
}
