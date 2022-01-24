#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
struct TYPE_9__ {TYPE_3__* globalconf; } ;
typedef  TYPE_4__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_6__ {int max_additional_delay; } ;
struct TYPE_7__ {TYPE_1__ latency_optimization; } ;
struct TYPE_8__ {TYPE_2__ http2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,double*) ; 

__attribute__((used)) static int FUNC2(h2o_configurator_command_t *cmd,
                                                                     h2o_configurator_context_t *ctx, yoml_t *node)
{
    double ratio;
    if (FUNC1(cmd, node, "%lf", &ratio) != 0)
        return -1;
    if (!(0.0 < ratio)) {
        FUNC0(cmd, node, "ratio must be a positive number");
        return -1;
    }
    ctx->globalconf->http2.latency_optimization.max_additional_delay = 100 * ratio;
    return 0;
}