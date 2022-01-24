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
typedef  int /*<<< orphan*/  yoml_t ;
typedef  int ssize_t ;
struct TYPE_7__ {TYPE_2__* globalconf; } ;
typedef  TYPE_3__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_5__ {int preserve_x_forwarded_proto; } ;
struct TYPE_6__ {TYPE_1__ proxy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC1(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    ssize_t ret = FUNC0(cmd, node, "OFF,ON");
    if (ret == -1)
        return -1;
    ctx->globalconf->proxy.preserve_x_forwarded_proto = (int)ret;
    return 0;
}