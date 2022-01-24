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
struct errordoc_configurator_t {TYPE_1__ super; int /*<<< orphan*/  _vars_stack; int /*<<< orphan*/  vars; } ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_CONFIGURATOR_FLAG_ALL_LEVELS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_config_enter ; 
 int /*<<< orphan*/  on_config_errordoc ; 
 int /*<<< orphan*/  on_config_exit ; 

void FUNC2(h2o_globalconf_t *conf)
{
    struct errordoc_configurator_t *c = (void *)FUNC0(conf, sizeof(*c));

    /* set default vars */
    c->vars = c->_vars_stack;

    /* setup handlers */
    c->super.enter = on_config_enter;
    c->super.exit = on_config_exit;

    /* reproxy: ON | OFF */
    FUNC1(&c->super, "error-doc", H2O_CONFIGURATOR_FLAG_ALL_LEVELS, on_config_errordoc);
}