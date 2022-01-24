#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_mruby_http_request_context_t {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {TYPE_1__* shared; } ;
typedef  TYPE_2__ h2o_mruby_context_t ;
struct TYPE_4__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_mruby_http_request_context_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct st_h2o_mruby_http_request_context_t* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  request_type ; 

__attribute__((used)) static mrb_value FUNC5(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                             int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    struct st_h2o_mruby_http_request_context_t *ctx;

    if ((ctx = FUNC2(mrb, FUNC1(args, 0), &request_type)) == NULL) {
        *run_again = 1;
        return FUNC3(mrb, E_ARGUMENT_ERROR, "HttpRequest#join wrong self");
    }

    FUNC0(ctx, *receiver);
    return FUNC4();
}