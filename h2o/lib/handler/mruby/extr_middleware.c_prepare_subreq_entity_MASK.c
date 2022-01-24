#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_15__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_2__ mrb_state ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_16__ {scalar_t__ content_length; TYPE_11__ entity; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ h2o_req_t ;
struct TYPE_17__ {TYPE_1__* shared; } ;
typedef  TYPE_4__ h2o_mruby_context_t ;
struct TYPE_14__ {TYPE_2__* mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIZE_MAX ; 
 TYPE_11__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_11__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(h2o_req_t *subreq, h2o_mruby_context_t *ctx, mrb_value rack_input)
{
    mrb_state *mrb = ctx->shared->mrb;

    if (FUNC7(rack_input)) {
        subreq->entity = FUNC2(NULL, 0);
        subreq->content_length = 0;
        return;
    }

    // TODO: fastpath?
    if (!FUNC9(mrb, rack_input, FUNC6(mrb, "read"))) {
        mrb->exc = FUNC8(FUNC4(mrb, E_RUNTIME_ERROR, "'rack.input' must respond to 'read'"));
        return;
    }
    mrb_value body = FUNC5(mrb, rack_input, "read", 0);
    if (mrb->exc != NULL)
        return;
    if (!FUNC10(body)) {
        mrb->exc = FUNC8(FUNC4(mrb, E_RUNTIME_ERROR, "return value of `read` must be a string"));
        return;
    }
    subreq->entity = FUNC3(&subreq->pool, FUNC1(body), FUNC0(body));

    if (subreq->content_length == SIZE_MAX) {
        subreq->content_length = subreq->entity.len;
    } else {
        if (subreq->content_length > subreq->entity.len)
            subreq->content_length = subreq->entity.len;
        else if (subreq->content_length < subreq->entity.len)
            subreq->entity.len = subreq->content_length;
    }
}