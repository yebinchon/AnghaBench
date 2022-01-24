#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_status_context_t {int /*<<< orphan*/  receiver; } ;
struct TYPE_5__ {size_t size; int /*<<< orphan*/ ** entries; } ;
struct st_h2o_root_status_handler_t {TYPE_1__ receivers; int /*<<< orphan*/  super; } ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ h2o_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_status_context_t*) ; 
 struct st_h2o_status_context_t* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t) ; 

__attribute__((used)) static void FUNC5(h2o_handler_t *_self, h2o_context_t *ctx)
{
    struct st_h2o_root_status_handler_t *self = (void *)_self;
    struct st_h2o_status_context_t *status_ctx = FUNC2(ctx, &self->super);
    size_t i;

    for (i = 0; i != self->receivers.size; ++i)
        if (self->receivers.entries[i] == &status_ctx->receiver)
            break;
    FUNC0(i != self->receivers.size);
    FUNC4(self->receivers.entries + i + 1, self->receivers.entries + i, self->receivers.size - i - 1);
    --self->receivers.size;

    FUNC3(ctx->queue, &status_ctx->receiver);

    FUNC1(status_ctx);
}