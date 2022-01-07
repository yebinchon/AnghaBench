
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct st_mruby_subreq_t {scalar_t__ state; int super; scalar_t__ chain_proceed; TYPE_4__* buf; } ;
struct st_h2o_mruby_middleware_sender_t {struct st_mruby_subreq_t* subreq; int sending; } ;
typedef int h2o_req_t ;
struct TYPE_7__ {TYPE_1__* sender; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;
typedef int h2o_generator_t ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_6__ {scalar_t__ final_sent; } ;


 scalar_t__ FINAL_RECEIVED ;
 int H2O_SEND_STATE_FINAL ;
 int H2O_SEND_STATE_IN_PROGRESS ;
 int h2o_buffer_dispose (TYPE_4__**) ;
 int h2o_doublebuffer_consume (int *) ;
 int h2o_mruby_sender_do_send_buffer (TYPE_2__*,int *,TYPE_4__**,int ) ;
 int h2o_proceed_response (int *) ;

void do_sender_proceed(h2o_generator_t *_generator, h2o_req_t *req)
{
    h2o_mruby_generator_t *generator = (void *)_generator;
    struct st_h2o_mruby_middleware_sender_t *sender = (void *)generator->sender;
    struct st_mruby_subreq_t *subreq = sender->subreq;

    if (generator->sender->final_sent)
        return;

    if (subreq->buf != ((void*)0)) {
        h2o_doublebuffer_consume(&sender->sending);

        if (subreq->buf->size != 0) {
            h2o_mruby_sender_do_send_buffer(generator, &sender->sending, &subreq->buf,
                                            subreq->state == FINAL_RECEIVED ? H2O_SEND_STATE_FINAL : H2O_SEND_STATE_IN_PROGRESS);
            return;
        } else {

            h2o_buffer_dispose(&subreq->buf);
            subreq->buf = ((void*)0);
        }
    }

    if (sender->subreq->chain_proceed)
        h2o_proceed_response(&sender->subreq->super);
}
