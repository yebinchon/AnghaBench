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
struct TYPE_9__ {size_t size; TYPE_3__** elements; } ;
struct TYPE_10__ {scalar_t__ scalar; TYPE_1__ sequence; } ;
struct TYPE_11__ {TYPE_2__ data; } ;
typedef  TYPE_3__ yoml_t ;
struct TYPE_12__ {int /*<<< orphan*/ * mimemap; } ;
typedef  TYPE_4__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    size_t i;

    FUNC1(ctx);
    for (i = 0; i != node->data.sequence.size; ++i) {
        yoml_t *ext_node = node->data.sequence.elements[i];
        if (FUNC0(cmd, ext_node) != 0)
            return -1;
        FUNC2(*ctx->mimemap, ext_node->data.scalar + 1);
    }

    return 0;
}