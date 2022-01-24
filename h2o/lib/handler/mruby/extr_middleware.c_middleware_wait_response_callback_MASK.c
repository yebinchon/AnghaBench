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
struct st_mruby_subreq_t {int /*<<< orphan*/  receiver; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {TYPE_1__* shared; } ;
typedef  TYPE_2__ h2o_mruby_context_t ;
struct TYPE_4__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  app_request_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct st_mruby_subreq_t* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static mrb_value FUNC5(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                                   int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    struct st_mruby_subreq_t *subreq;

    if ((subreq = FUNC1(mrb, FUNC0(args, 0), &app_request_type)) == NULL) {
        *run_again = 1;
        return FUNC2(mrb, E_ARGUMENT_ERROR, "AppRequest#join wrong self");
    }

    subreq->receiver = *receiver;
    FUNC3(mrb, *receiver);
    return FUNC4();
}