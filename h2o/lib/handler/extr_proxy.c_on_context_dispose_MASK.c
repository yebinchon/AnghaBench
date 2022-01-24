#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rp_handler_t {int /*<<< orphan*/  sockpool; int /*<<< orphan*/  super; } ;
struct rp_handler_context_t {int /*<<< orphan*/ * client_ctx; } ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_4__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ h2o_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rp_handler_context_t* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(h2o_handler_t *_self, h2o_context_t *ctx)
{
    struct rp_handler_t *self = (void *)_self;
    struct rp_handler_context_t *handler_ctx = FUNC1(ctx, &self->super);

    if (handler_ctx->client_ctx != NULL)
        FUNC0(handler_ctx->client_ctx);

    FUNC2(self->sockpool, ctx->loop);
}