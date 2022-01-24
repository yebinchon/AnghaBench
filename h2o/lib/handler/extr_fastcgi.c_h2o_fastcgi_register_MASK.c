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
typedef  int /*<<< orphan*/  h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_socketpool_target_t ;
typedef  int /*<<< orphan*/  h2o_pathconf_t ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
struct TYPE_9__ {int /*<<< orphan*/  keepalive_timeout; TYPE_4__ document_root; } ;
struct TYPE_7__ {int /*<<< orphan*/  on_req; int /*<<< orphan*/  dispose; int /*<<< orphan*/  on_context_dispose; int /*<<< orphan*/  on_context_init; } ;
struct TYPE_8__ {TYPE_3__ config; int /*<<< orphan*/  sockpool; TYPE_1__ super; } ;
typedef  TYPE_2__ h2o_fastcgi_handler_t ;
typedef  TYPE_3__ h2o_fastcgi_config_vars_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_context_dispose ; 
 int /*<<< orphan*/  on_context_init ; 
 int /*<<< orphan*/  on_handler_dispose ; 
 int /*<<< orphan*/  on_req ; 

h2o_fastcgi_handler_t *FUNC5(h2o_pathconf_t *pathconf, h2o_url_t *upstream, h2o_fastcgi_config_vars_t *vars)
{
    h2o_fastcgi_handler_t *handler = (void *)FUNC0(pathconf, sizeof(*handler));

    handler->super.on_context_init = on_context_init;
    handler->super.on_context_dispose = on_context_dispose;
    handler->super.dispose = on_handler_dispose;
    handler->super.on_req = on_req;
    handler->config = *vars;
    if (vars->document_root.base != NULL)
        handler->config.document_root = FUNC4(NULL, vars->document_root.base, vars->document_root.len);

    h2o_socketpool_target_t *target = FUNC1(upstream, NULL);
    h2o_socketpool_target_t **targets = &target;
    FUNC2(&handler->sockpool, SIZE_MAX /* FIXME */, targets, 1, NULL);
    FUNC3(&handler->sockpool, handler->config.keepalive_timeout);
    return handler;
}