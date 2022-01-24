#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ has_content; } ;
struct st_h2o_mruby_http_request_context_t {int consumed; TYPE_1__ resp; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_7__ {TYPE_2__* shared; } ;
typedef  TYPE_3__ h2o_mruby_context_t ;
struct TYPE_6__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_mruby_http_request_context_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_mruby_http_request_context_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_stream_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct st_h2o_mruby_http_request_context_t* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static mrb_value FUNC8(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                           int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    struct st_h2o_mruby_http_request_context_t *ctx;
    mrb_value ret;

    if ((ctx = FUNC5(mrb, FUNC3(args, 0), &input_stream_type)) == NULL) {
        *run_again = 1;
        return FUNC6(mrb, E_ARGUMENT_ERROR, "_HttpInputStream#each wrong self");
    }

    mrb_value first = FUNC3(args, 1);
    if (FUNC4(first)) {
        /* check the body hasn't already consumed */
        if (ctx->consumed) {
            *run_again = 1;
            return FUNC2(mrb);
        }
        ctx->consumed = 1;
    }

    if (ctx->resp.has_content) {
        ret = FUNC1(ctx);
        *run_again = 1;
    } else {
        FUNC0(ctx, *receiver);
        ret = FUNC7();
    }

    return ret;
}