#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_8__ {int /*<<< orphan*/  super; } ;
typedef  TYPE_1__ h2o_mruby_handler_t ;
struct TYPE_9__ {void* proc; TYPE_7__* shared; void* resumers; void* blocking_reqs; TYPE_1__* handler; } ;
typedef  TYPE_2__ h2o_mruby_context_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
typedef  int /*<<< orphan*/  h2o_context_t ;
struct TYPE_10__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (void*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC14(h2o_handler_t *_handler, h2o_context_t *ctx)
{
    h2o_mruby_handler_t *handler = (void *)_handler;
    h2o_mruby_context_t *handler_ctx = FUNC3(sizeof(*handler_ctx));

    handler_ctx->handler = handler;
    handler_ctx->shared = FUNC1(ctx);

    mrb_state *mrb = handler_ctx->shared->mrb;

    handler_ctx->blocking_reqs = FUNC8(mrb);
    handler_ctx->resumers = FUNC8(mrb);

    /* compile code (must be done for each thread) */
    int arena = FUNC10(mrb);

    mrb_value fibers = FUNC13(handler_ctx);
    FUNC0(FUNC6(fibers));

    handler_ctx->proc = FUNC7(fibers, 0);

    /* run configurator */
    mrb_value configurator = FUNC7(fibers, 1);
    FUNC5(handler_ctx, configurator, FUNC12(), NULL);
    FUNC4(handler_ctx->shared->mrb);

    FUNC9(mrb, arena);
    FUNC11(mrb, handler_ctx->proc);
    FUNC11(mrb, configurator);

    FUNC2(ctx, &handler->super, handler_ctx);
}