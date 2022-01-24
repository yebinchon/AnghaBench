#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
struct TYPE_7__ {TYPE_2__* globalconf; } ;
typedef  TYPE_3__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_5__ {int preserve_server_header; } ;
struct TYPE_6__ {TYPE_1__ proxy; void* server_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    switch (FUNC1(cmd, node, "OFF,ON,preserve")) {
    case 0: /* off */
        ctx->globalconf->server_name = FUNC2(FUNC0(""));
        break;
    case 1: /* on */
        break;
    case 2: /* preserve */
        ctx->globalconf->server_name = FUNC2(FUNC0(""));
        ctx->globalconf->proxy.preserve_server_header = 1;
        break;
    default:
        return -1;
    }
    return 0;
}