#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  scalar; } ;
struct TYPE_14__ {TYPE_1__ data; } ;
typedef  TYPE_2__ yoml_t ;
struct mruby_configurator_t {TYPE_9__* vars; } ;
struct TYPE_15__ {int len; int /*<<< orphan*/ * base; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ h2o_iovec_t ;
struct TYPE_16__ {int /*<<< orphan*/  pathconf; } ;
typedef  TYPE_4__ h2o_configurator_context_t ;
struct TYPE_17__ {scalar_t__ configurator; } ;
typedef  TYPE_5__ h2o_configurator_command_t ;
struct TYPE_18__ {scalar_t__ lineno; int /*<<< orphan*/  path; TYPE_3__ source; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_9__*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mruby_configurator_t*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_2__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct mruby_configurator_t *self = (void *)cmd->configurator;
    FILE *fp = NULL;
    h2o_iovec_t buf = {NULL};
    int ret = -1;

    /* open and read file */
    if ((fp = FUNC4(node->data.scalar, "rt")) == NULL) {
        FUNC8(cmd, node, "failed to open file: %s:%s", node->data.scalar, FUNC11(errno));
        goto Exit;
    }
    while (!FUNC2(fp)) {
        buf.base = FUNC9(buf.base, buf.len + 65536);
        buf.len += FUNC5(buf.base + buf.len, 1, 65536, fp);
        if (FUNC3(fp)) {
            FUNC8(cmd, node, "I/O error occurred while reading file:%s:%s", node->data.scalar,
                                       FUNC11(errno));
            goto Exit;
        }
    }

    /* set source */
    self->vars->source = buf;
    buf.base = NULL;
    self->vars->path = node->data.scalar; /* the value is retained until the end of the configuration phase */
    self->vars->lineno = 0;

    /* check if there is any error in source */
    char errbuf[1024];
    if (!FUNC0(FUNC7(self), self->vars, errbuf)) {
        FUNC8(cmd, node, "failed to compile file:%s:%s", node->data.scalar, errbuf);
        goto Exit;
    }

    /* register */
    FUNC10(ctx->pathconf, self->vars);

    ret = 0;

Exit:
    if (fp != NULL)
        FUNC1(fp);
    if (buf.base != NULL)
        FUNC6(buf.base);
    return ret;
}