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
typedef  int /*<<< orphan*/  yoml_t ;
struct st_h2o_file_configurator_t {TYPE_1__* vars; } ;
typedef  int /*<<< orphan*/  h2o_configurator_context_t ;
struct TYPE_6__ {scalar_t__ configurator; } ;
typedef  TYPE_2__ h2o_configurator_command_t ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int H2O_FILE_FLAG_GUNZIP ; 
 int H2O_FILE_FLAG_SEND_COMPRESSED ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC1(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_h2o_file_configurator_t *self = (void *)cmd->configurator;

    switch (FUNC0(cmd, node, "OFF,ON,gunzip")) {
    case 0: /* off */
        self->vars->flags &= ~H2O_FILE_FLAG_SEND_COMPRESSED;
        break;
    case 1: /* on */
        self->vars->flags |= H2O_FILE_FLAG_SEND_COMPRESSED;
        break;
    case 2: /* gunzip */
        self->vars->flags |= (H2O_FILE_FLAG_SEND_COMPRESSED | H2O_FILE_FLAG_GUNZIP);
        break;
    default: /* error */
        return -1;
    }

    return 0;
}