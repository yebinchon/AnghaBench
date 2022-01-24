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
struct TYPE_9__ {int /*<<< orphan*/  on_informational; int /*<<< orphan*/  on_setup_ostream; } ;
struct st_headers_filter_t {int /*<<< orphan*/ * cmds; TYPE_1__ super; } ;
struct TYPE_12__ {int /*<<< orphan*/  on_req; } ;
struct st_headers_early_hints_handler_t {TYPE_4__ super; int /*<<< orphan*/ * cmds; } ;
struct TYPE_10__ {int size; TYPE_4__** entries; } ;
struct TYPE_11__ {TYPE_2__ handlers; } ;
typedef  TYPE_3__ h2o_pathconf_t ;
typedef  int /*<<< orphan*/  h2o_headers_command_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**,TYPE_4__**,int) ; 
 int /*<<< orphan*/  on_informational ; 
 int /*<<< orphan*/  on_req ; 
 int /*<<< orphan*/  on_setup_ostream ; 
 scalar_t__ FUNC3 (struct st_headers_filter_t*) ; 

void FUNC4(h2o_pathconf_t *pathconf, h2o_headers_command_t *cmds)
{
    struct st_headers_filter_t *self = (void *)FUNC0(pathconf, sizeof(*self));

    self->super.on_setup_ostream = on_setup_ostream;
    self->super.on_informational = on_informational;
    self->cmds = cmds;

    if (FUNC3(self)) {
        struct st_headers_early_hints_handler_t *handler = (void *)FUNC1(pathconf, sizeof(*handler));
        handler->cmds = cmds;
        handler->super.on_req = on_req;

        /* move this handler to first */
        FUNC2(pathconf->handlers.entries + 1, pathconf->handlers.entries,
                sizeof(h2o_handler_t *) * (pathconf->handlers.size - 1));
        pathconf->handlers.entries[0] = &handler->super;
    }
}