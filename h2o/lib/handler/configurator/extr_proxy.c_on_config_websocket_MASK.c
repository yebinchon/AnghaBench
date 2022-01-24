#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
struct proxy_configurator_t {TYPE_3__* vars; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  h2o_configurator_context_t ;
struct TYPE_10__ {scalar_t__ configurator; } ;
typedef  TYPE_4__ h2o_configurator_command_t ;
struct TYPE_7__ {int enabled; } ;
struct TYPE_8__ {TYPE_1__ websocket; } ;
struct TYPE_9__ {TYPE_2__ conf; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC1(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)cmd->configurator;
    ssize_t ret = FUNC0(cmd, node, "OFF,ON");
    if (ret == -1)
        return -1;
    self->vars->conf.websocket.enabled = (int)ret;
    return 0;
}