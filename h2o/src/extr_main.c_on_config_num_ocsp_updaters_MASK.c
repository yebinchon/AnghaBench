#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  yoml_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  ocsp_updater_semaphore ; 

__attribute__((used)) static int FUNC3(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    ssize_t n;
    if (FUNC1(cmd, node, "%zd", &n) != 0)
        return -1;
    if (n <= 0) {
        FUNC0(cmd, node, "num-ocsp-updaters must be >=1");
        return -1;
    }
    FUNC2(&ocsp_updater_semaphore, n);
    return 0;
}