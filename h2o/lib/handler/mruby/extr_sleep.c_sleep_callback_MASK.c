#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct st_h2o_mruby_sleep_context_t {TYPE_4__* ctx; int /*<<< orphan*/  started_at; int /*<<< orphan*/  timeout_entry; int /*<<< orphan*/  receiver; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_12__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_3__ mrb_state ;
struct TYPE_13__ {TYPE_2__* shared; } ;
typedef  TYPE_4__ h2o_mruby_context_t ;
struct TYPE_11__ {TYPE_1__* ctx; TYPE_3__* mrb; } ;
struct TYPE_10__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  E_NOMETHOD_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct st_h2o_mruby_sleep_context_t* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct st_h2o_mruby_sleep_context_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_sleep_timeout ; 

__attribute__((used)) static mrb_value FUNC16(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args, int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;

    FUNC1(FUNC7(args));
    if (FUNC0(args) == 0) {
        return FUNC13(); /* sleep forever */
    }
    mrb_value arg_sec = FUNC8(args, 0);

    /* convert the argument using to_f */
    arg_sec = FUNC11(mrb, arg_sec, "to_f", 0);

    if (mrb->exc) {
        *run_again = 1;
        mrb_value exc = FUNC15(mrb->exc);
        if (FUNC14(mrb, exc, E_NOMETHOD_ERROR)) {
            exc = FUNC9(mrb, E_ARGUMENT_ERROR, "the argument of the sleep function must respond to 'to_f' method");
        }
        mrb->exc = NULL;
        return exc;
    }
    uint64_t msec = FUNC10(arg_sec) * 1000;

    struct st_h2o_mruby_sleep_context_t *ctx = FUNC2(sizeof(*ctx));
    FUNC6(ctx, 0, sizeof(*ctx));
    ctx->ctx = mctx;
    ctx->receiver = *receiver;
    FUNC4(&ctx->timeout_entry, on_sleep_timeout);
    FUNC5(ctx->ctx->shared->ctx->loop, msec, &ctx->timeout_entry);

    ctx->started_at = FUNC3(ctx->ctx->shared->ctx->loop);

    FUNC12(mrb, *receiver);

    return FUNC13();
}