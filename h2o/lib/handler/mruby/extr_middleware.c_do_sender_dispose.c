
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct st_h2o_mruby_middleware_sender_t {TYPE_8__* subreq; int sending; } ;
struct TYPE_13__ {TYPE_2__* ctx; scalar_t__ sender; } ;
typedef TYPE_5__ h2o_mruby_generator_t ;
struct TYPE_12__ {TYPE_5__* body; int * response; } ;
struct TYPE_11__ {int request; } ;
struct TYPE_14__ {TYPE_4__ shortcut; TYPE_3__ refs; } ;
struct TYPE_10__ {TYPE_1__* shared; } ;
struct TYPE_9__ {int mrb; } ;


 int assert (int) ;
 int dispose_subreq (TYPE_8__*) ;
 int h2o_doublebuffer_dispose (int *) ;
 int h2o_mruby_sender_close_body (TYPE_5__*) ;
 int mrb_gc_unregister (int ,int ) ;
 int mrb_nil_p (int ) ;

void do_sender_dispose(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_middleware_sender_t *sender = (void *)generator->sender;

    h2o_doublebuffer_dispose(&sender->sending);

    if (sender->subreq->shortcut.response != ((void*)0)) {
        assert(!mrb_nil_p(sender->subreq->refs.request));
        mrb_gc_unregister(generator->ctx->shared->mrb, sender->subreq->refs.request);
        sender->subreq->shortcut.response = ((void*)0);
    }

    assert(sender->subreq->shortcut.body == generator);
    sender->subreq->shortcut.body = ((void*)0);

    dispose_subreq(sender->subreq);
    sender->subreq = ((void*)0);

    h2o_mruby_sender_close_body(generator);
}
