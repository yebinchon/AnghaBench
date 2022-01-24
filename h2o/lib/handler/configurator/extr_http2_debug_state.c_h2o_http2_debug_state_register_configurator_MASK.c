#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st_h2o_configurator_t {int dummy; } ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int H2O_CONFIGURATOR_FLAG_DEFERRED ; 
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ; 
 int H2O_CONFIGURATOR_FLAG_HOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_configurator_t*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_config_debug_state ; 

void FUNC2(h2o_globalconf_t *conf)
{
    struct st_h2o_configurator_t *c = (void *)FUNC0(conf, sizeof(*c));

    FUNC1(
        c, "http2-debug-state", H2O_CONFIGURATOR_FLAG_HOST | H2O_CONFIGURATOR_FLAG_DEFERRED | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
        on_config_debug_state);
}