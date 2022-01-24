#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  scalar; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ data; } ;
typedef  TYPE_2__ yoml_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;

/* Variables and functions */
 scalar_t__ YOML_TYPE_SCALAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC2(h2o_configurator_command_t *cmd, yoml_t *node)
{
    if (node->type != YOML_TYPE_SCALAR) {
        FUNC0(cmd, node, "expected a scalar (mime-type)");
        return -1;
    }
    if (FUNC1(node->data.scalar, '/') == NULL) {
        FUNC0(cmd, node, "the string \"%s\" does not look like a mime-type", node->data.scalar);
        return -1;
    }
    return 0;
}