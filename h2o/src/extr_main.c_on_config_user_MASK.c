#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  scalar; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
typedef  TYPE_3__ yoml_t ;
struct TYPE_12__ {TYPE_2__* globalconf; } ;
typedef  TYPE_4__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_13__ {int /*<<< orphan*/  base; } ;
struct TYPE_10__ {int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    errno = 0;
    if (FUNC0(node->data.scalar) == NULL) {
        if (errno == 0) {
            FUNC1(cmd, node, "user:%s does not exist", node->data.scalar);
        } else {
            FUNC3("getpwnam");
        }
        return -1;
    }
    ctx->globalconf->user = FUNC2(NULL, node->data.scalar, SIZE_MAX).base;
    return 0;
}