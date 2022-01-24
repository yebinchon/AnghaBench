#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
struct TYPE_7__ {int /*<<< orphan*/ ** hosts; int /*<<< orphan*/  mimemap; } ;
typedef  TYPE_1__ h2o_globalconf_t ;
struct TYPE_8__ {int dry_run; TYPE_1__* globalconf; int /*<<< orphan*/ * mimemap; } ;
typedef  TYPE_2__ h2o_configurator_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_CONFIGURATOR_FLAG_GLOBAL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC4(h2o_globalconf_t *config, yoml_t *node, int dry_run)
{
    h2o_configurator_context_t *ctx = FUNC0(NULL, 0);
    ctx->globalconf = config;
    ctx->mimemap = &ctx->globalconf->mimemap;
    ctx->dry_run = dry_run;
    int cmd_ret = FUNC2(ctx, node, H2O_CONFIGURATOR_FLAG_GLOBAL, NULL);
    FUNC1(ctx);

    if (cmd_ret != 0)
        return cmd_ret;
    if (config->hosts[0] == NULL) {
        FUNC3(NULL, node, "mandatory configuration directive `hosts` is missing");
        return -1;
    }
    return 0;
}