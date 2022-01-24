#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
struct headers_configurator_t {int /*<<< orphan*/ ** cmds; } ;
typedef  int /*<<< orphan*/  h2o_configurator_t ;
struct TYPE_3__ {int /*<<< orphan*/ * pathconf; } ;
typedef  TYPE_1__ h2o_configurator_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct headers_configurator_t *self = (void *)_self;

    if (ctx->pathconf != NULL && *self->cmds != NULL) {
        if (*self->cmds != NULL)
            FUNC1(*self->cmds);
        FUNC0(ctx->pathconf, *self->cmds);
    }

    if (*self->cmds != NULL)
        FUNC2(*self->cmds);
    --self->cmds;
    return 0;
}