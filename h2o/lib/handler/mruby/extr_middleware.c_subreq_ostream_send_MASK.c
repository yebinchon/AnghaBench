#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * response; TYPE_4__* body; } ;
struct st_mruby_subreq_t {int chain_proceed; scalar_t__ state; TYPE_5__* ctx; TYPE_6__* buf; int /*<<< orphan*/  receiver; TYPE_3__ shortcut; int /*<<< orphan*/  super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  h2o_sendvec_t ;
typedef  int /*<<< orphan*/  h2o_send_state_t ;
typedef  int /*<<< orphan*/  h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_ostream_t ;
struct TYPE_12__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;
struct TYPE_11__ {TYPE_1__* shared; } ;
struct TYPE_10__ {TYPE_2__* sender; } ;
struct TYPE_8__ {scalar_t__ final_sent; } ;
struct TYPE_7__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 scalar_t__ FINAL_RECEIVED ; 
 scalar_t__ INITIAL ; 
 scalar_t__ RECEIVED ; 
 int /*<<< orphan*/  FUNC0 (struct st_mruby_subreq_t*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct st_mruby_subreq_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct st_mruby_subreq_t*) ; 

__attribute__((used)) static void FUNC13(h2o_ostream_t *_self, h2o_req_t *_subreq, h2o_sendvec_t *inbufs, size_t inbufcnt,
                                h2o_send_state_t state)
{
    struct st_mruby_subreq_t *subreq = (void *)_subreq;
    mrb_state *mrb = subreq->ctx->shared->mrb;

    /* body shortcut */
    if (subreq->shortcut.body != NULL) {
        if (subreq->shortcut.body->sender->final_sent)
            return; /* TODO: close subreq ASAP */

        subreq->chain_proceed = 1;
        if (subreq->buf == NULL) {
            /* flushing chunks has been finished, so send directly */
            FUNC5(subreq->shortcut.body, inbufs, inbufcnt, state);
        } else {
            /* flushing, buffer chunks again */
            FUNC0(subreq, inbufs, inbufcnt);
        }

        return;
    }

    int is_first = subreq->state == INITIAL;
    if (FUNC7(state)) {
        FUNC6(&subreq->super);
        subreq->state = RECEIVED;
    } else {
        subreq->state = FINAL_RECEIVED;
    }

    FUNC0(subreq, inbufs, inbufcnt);

    /* response shortcut */
    if (subreq->shortcut.response != NULL) {
        FUNC12(subreq);
        return;
    }

    if (FUNC10(subreq->receiver))
        return;

    int gc_arena = FUNC9(mrb);

    if (is_first) {
        /* the fiber is waiting due to calling req.join */
        FUNC4(subreq->ctx, FUNC1(subreq), FUNC11(), NULL);
    } else if (subreq->buf->size != 0) {
        /* resume callback sender fiber */
        mrb_value chunk = FUNC3(mrb, subreq->buf->bytes, subreq->buf->size);
        FUNC2(&subreq->buf, subreq->buf->size);
        FUNC4(subreq->ctx, FUNC1(subreq), chunk, NULL);
    } else if (subreq->state == FINAL_RECEIVED) {
        FUNC4(subreq->ctx, FUNC1(subreq), FUNC11(), NULL);
    }

    FUNC8(mrb, gc_arena);
}