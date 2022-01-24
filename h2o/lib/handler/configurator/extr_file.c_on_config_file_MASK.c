#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  scalar; } ;
struct TYPE_11__ {TYPE_2__ data; } ;
typedef  TYPE_3__ yoml_t ;
struct st_h2o_file_configurator_t {TYPE_1__* vars; } ;
typedef  int /*<<< orphan*/  h2o_mimemap_type_t ;
struct TYPE_12__ {int /*<<< orphan*/  pathconf; int /*<<< orphan*/ * mimemap; } ;
typedef  TYPE_4__ h2o_configurator_context_t ;
struct TYPE_13__ {scalar_t__ configurator; } ;
typedef  TYPE_5__ h2o_configurator_command_t ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_h2o_file_configurator_t *self = (void *)cmd->configurator;
    h2o_mimemap_type_t *mime_type =
        FUNC2(*ctx->mimemap, FUNC1(node->data.scalar, FUNC3(node->data.scalar)));
    FUNC0(ctx->pathconf, node->data.scalar, mime_type, self->vars->flags);
    return 0;
}