#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  scalar; } ;
struct TYPE_11__ {TYPE_2__ data; } ;
typedef  TYPE_3__ yoml_t ;
struct proxy_configurator_t {TYPE_1__* vars; } ;
typedef  int /*<<< orphan*/  h2o_configurator_context_t ;
struct TYPE_12__ {scalar_t__ configurator; } ;
typedef  TYPE_4__ h2o_configurator_command_t ;
typedef  int /*<<< orphan*/  X509_STORE ;
struct TYPE_9__ {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)cmd->configurator;
    X509_STORE *store = FUNC3();
    int ret = -1;

    if (FUNC2(store, node->data.scalar, NULL) == 1) {
        FUNC5(&self->vars->ssl_ctx, store, -1, NULL);
        ret = 0;
    } else {
        FUNC4(cmd, node, "failed to load certificates file:%s", node->data.scalar);
        FUNC0(stderr);
    }

    FUNC1(store);
    return ret;
}