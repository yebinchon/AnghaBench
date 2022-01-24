#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/ * scalar; } ;
struct TYPE_19__ {int type; TYPE_1__ data; } ;
typedef  TYPE_2__ yoml_t ;
struct st_h2o_access_log_configurator_t {TYPE_8__* handles; } ;
struct TYPE_20__ {int /*<<< orphan*/  dry_run; } ;
typedef  TYPE_3__ h2o_configurator_context_t ;
struct TYPE_21__ {scalar_t__ configurator; } ;
typedef  TYPE_4__ h2o_configurator_command_t ;
typedef  int /*<<< orphan*/  h2o_access_log_filehandle_t ;
struct TYPE_22__ {scalar_t__ size; int /*<<< orphan*/ ** entries; } ;

/* Variables and functions */
 int H2O_LOGCONF_ESCAPE_APACHE ; 
 int H2O_LOGCONF_ESCAPE_JSON ; 
#define  YOML_TYPE_MAPPING 129 
#define  YOML_TYPE_SCALAR 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*,char*) ; 
 int FUNC2 (TYPE_4__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*,char*,char*,TYPE_2__***,TYPE_2__***,TYPE_2__***) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_8__*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_h2o_access_log_configurator_t *self = (void *)cmd->configurator;
    yoml_t **path, **format = NULL, **escape_node = NULL;
    int escape = H2O_LOGCONF_ESCAPE_APACHE;
    h2o_access_log_filehandle_t *fh;

    switch (node->type) {
    case YOML_TYPE_SCALAR:
        path = &node;
        break;
    case YOML_TYPE_MAPPING:
        if (FUNC3(cmd, node, "path:s", "format:s,escape:*", &path, &format, &escape_node) != 0)
            return -1;
        break;
    default:
        FUNC1(cmd, node, "node must be a scalar or a mapping");
        return -1;
    }

    if (escape_node != NULL) {
        switch (FUNC2(cmd, *escape_node, "apache,json")) {
        case 0:
            escape = H2O_LOGCONF_ESCAPE_APACHE;
            break;
        case 1:
            escape = H2O_LOGCONF_ESCAPE_JSON;
            break;
        default:
            return -1;
        }
    }

    if (!ctx->dry_run) {
        if ((fh = FUNC0((*path)->data.scalar, format != NULL ? (*format)->data.scalar : NULL, escape)) == NULL)
            return -1;
        FUNC4(NULL, self->handles, self->handles->size + 1);
        self->handles->entries[self->handles->size++] = fh;
    }

    return 0;
}