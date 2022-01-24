#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
struct TYPE_9__ {int /*<<< orphan*/  mimemap; } ;
typedef  TYPE_1__ h2o_pathconf_t ;
struct TYPE_10__ {int /*<<< orphan*/ * mimemap; TYPE_1__* pathconf; } ;
typedef  TYPE_2__ h2o_configurator_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_CONFIGURATOR_FLAG_PATH ; 
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(h2o_configurator_context_t *parent_ctx, h2o_pathconf_t *pathconf, yoml_t *node)
{
    h2o_configurator_context_t *path_ctx = FUNC0(parent_ctx, 0);
    path_ctx->pathconf = pathconf;
    path_ctx->mimemap = &pathconf->mimemap;

    int ret = FUNC2(path_ctx, node, H2O_CONFIGURATOR_FLAG_PATH, NULL);

    FUNC1(path_ctx);
    return ret;
}