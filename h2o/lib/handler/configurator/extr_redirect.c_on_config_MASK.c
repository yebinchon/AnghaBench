#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* scalar; } ;
struct TYPE_14__ {int type; TYPE_1__ data; } ;
typedef  TYPE_2__ yoml_t ;
struct TYPE_15__ {int /*<<< orphan*/  pathconf; } ;
typedef  TYPE_3__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;

/* Variables and functions */
#define  YOML_TYPE_MAPPING 129 
#define  YOML_TYPE_SCALAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,char*,char*,TYPE_2__***,TYPE_2__***,TYPE_2__***) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char const*) ; 

__attribute__((used)) static int FUNC5(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    const char *dest;
    int status = 302; /* default is temporary redirect */
    int internal = 0; /* default is external redirect */

    switch (node->type) {
    case YOML_TYPE_SCALAR:
        dest = node->data.scalar;
        break;
    case YOML_TYPE_MAPPING: {
        yoml_t **url_node, **status_node, **internal_node;
        if (FUNC2(cmd, node, "url:s,status:*", "internal:*", &url_node, &status_node, &internal_node) != 0)
            return -1;
        dest = (*url_node)->data.scalar;
        if (FUNC3(cmd, *status_node, "%d", &status) != 0)
            return -1;
        if (!(300 <= status && status <= 399)) {
            FUNC0(cmd, *status_node, "value of property `status` should be within 300 to 399");
            return -1;
        }
        if (internal_node != NULL) {
            switch (FUNC1(cmd, *internal_node, "YES,NO")) {
            case 0:
                internal = 1;
                break;
            case 1:
                internal = 0;
                break;
            default:
                return -1;
            }
        }
    } break;
    default:
        FUNC0(cmd, node, "value must be a string or a mapping");
        return -1;
    }

    FUNC4(ctx->pathconf, internal, status, dest);

    return 0;
}