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
struct TYPE_2__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  enter; } ;
struct headers_configurator_t {int /*<<< orphan*/  _cmd_stack; int /*<<< orphan*/  cmds; TYPE_1__ super; } ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  get_headers_commands ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_config_enter ; 
 int /*<<< orphan*/  on_config_exit ; 

void FUNC2(h2o_globalconf_t *conf)
{
    struct headers_configurator_t *c = (void *)FUNC0(conf, sizeof(*c));

    c->super.enter = on_config_enter;
    c->super.exit = on_config_exit;

    FUNC1(conf, &c->super, "header", get_headers_commands);
    c->cmds = c->_cmd_stack;
}