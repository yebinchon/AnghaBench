#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_mruby_subreq_t {scalar_t__ state; int /*<<< orphan*/  receiver; TYPE_4__* buf; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_6__ {TYPE_1__* shared; } ;
typedef  TYPE_2__ h2o_mruby_context_t ;
struct TYPE_7__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;
struct TYPE_5__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 scalar_t__ FINAL_RECEIVED ; 
 int /*<<< orphan*/  app_input_stream_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct st_mruby_subreq_t* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static mrb_value FUNC10(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                                int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    struct st_mruby_subreq_t *subreq;

    mrb_value obj = FUNC4(args, 0);
    if (FUNC0(obj) == NULL) {
        return FUNC6(mrb, E_ARGUMENT_ERROR, "downstream HTTP closed");
    } else if ((subreq = FUNC5(mrb, obj, &app_input_stream_type)) == NULL) {
        return FUNC6(mrb, E_ARGUMENT_ERROR, "AppInputStream#each wrong self");
    }

    if (subreq->buf->size != 0) {
        *run_again = 1;
        mrb_value chunk = FUNC3(mrb, subreq->buf->bytes, subreq->buf->size);
        FUNC2(&subreq->buf, subreq->buf->size);
        return chunk;
    } else if (subreq->state == FINAL_RECEIVED) {
        *run_again = 1;
        return FUNC9();
    } else {
        FUNC1(FUNC8(subreq->receiver));
        subreq->receiver = *receiver;
        FUNC7(mrb, *receiver);
        return FUNC9();
    }
}