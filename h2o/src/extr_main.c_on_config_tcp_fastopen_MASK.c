#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
typedef  int /*<<< orphan*/  h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_2__ {scalar_t__ tfo_queues; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (FUNC1(cmd, node, "%d", &conf.tfo_queues) != 0)
        return -1;
#ifndef TCP_FASTOPEN
    if (conf.tfo_queues != 0) {
        FUNC0(cmd, node, "[warning] ignoring the value; the platform does not support TCP_FASTOPEN");
        conf.tfo_queues = 0;
    }
#endif
    return 0;
}