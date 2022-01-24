#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t size; TYPE_3__** elements; } ;
struct TYPE_8__ {TYPE_1__ sequence; } ;
struct TYPE_9__ {int type; TYPE_2__ data; } ;
typedef  TYPE_3__ yoml_t ;
typedef  int /*<<< orphan*/  h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;

/* Variables and functions */
#define  YOML_TYPE_MAPPING 129 
#define  YOML_TYPE_SEQUENCE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC2(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    switch (node->type) {
    case YOML_TYPE_SEQUENCE: {
        size_t i;
        for (i = 0; i != node->data.sequence.size; ++i) {
            yoml_t *e = node->data.sequence.elements[i];
            if (e->type != YOML_TYPE_MAPPING) {
                FUNC0(cmd, e, "element must be a mapping");
                return -1;
            }
            if (FUNC1(cmd, ctx, e) != 0)
                return -1;
        }
        return 0;
    }
    case YOML_TYPE_MAPPING:
        return FUNC1(cmd, ctx, node);
    default:
        break;
    }

    FUNC0(cmd, node, "argument must be either of: sequence, mapping");
    return -1;
}