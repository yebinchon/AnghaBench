#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  inflight; } ;
struct TYPE_11__ {int /*<<< orphan*/  final_sent; } ;
struct st_h2o_mruby_callback_sender_t {int /*<<< orphan*/  receiving; TYPE_7__ sending; TYPE_1__ super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_13__ {scalar_t__ sender; } ;
typedef  TYPE_3__ h2o_mruby_generator_t ;
struct TYPE_14__ {TYPE_2__* shared; } ;
typedef  TYPE_4__ h2o_mruby_context_t ;
struct TYPE_12__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static mrb_value FUNC7(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                         int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    h2o_mruby_generator_t *generator = FUNC1(mrb, FUNC4(args, 0));

    { /* precond check */
        mrb_value exc = FUNC0(mrb, generator);
        if (!FUNC5(exc)) {
            *run_again = 1;
            return exc;
        }
    }

    struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
    if (!sender->super.final_sent && !sender->sending.inflight)
        FUNC3(generator, &sender->sending, &sender->receiving, 1);
    FUNC2(generator);

    return FUNC6();
}