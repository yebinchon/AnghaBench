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
struct fsl_mc_io {int flags; int /*<<< orphan*/  mutex; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  portal_phys_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  portal_virt_addr; } ;
struct fsl_mc_command {int dummy; } ;
typedef  enum mc_cmd_status { ____Placeholder_mc_cmd_status } mc_cmd_status ;

/* Variables and functions */
 int EINVAL ; 
 int FSL_MC_IO_ATOMIC_CONTEXT_PORTAL ; 
 int MC_CMD_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct fsl_mc_command*) ; 
 scalar_t__ FUNC3 (struct fsl_mc_command*) ; 
 int FUNC4 (struct fsl_mc_io*,struct fsl_mc_command*,int*) ; 
 int FUNC5 (struct fsl_mc_io*,struct fsl_mc_command*,int*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct fsl_mc_command*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC13(struct fsl_mc_io *mc_io, struct fsl_mc_command *cmd)
{
	int error;
	enum mc_cmd_status status;
	unsigned long irq_flags = 0;

	if (FUNC1() && !(mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL))
		return -EINVAL;

	if (mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL)
		FUNC11(&mc_io->spinlock, irq_flags);
	else
		FUNC9(&mc_io->mutex);

	/*
	 * Send command to the MC hardware:
	 */
	FUNC8(mc_io->portal_virt_addr, cmd);

	/*
	 * Wait for response from the MC hardware:
	 */
	if (!(mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL))
		error = FUNC5(mc_io, cmd, &status);
	else
		error = FUNC4(mc_io, cmd, &status);

	if (error < 0)
		goto common_exit;

	if (status != MC_CMD_STATUS_OK) {
		FUNC0(mc_io->dev,
			"MC command failed: portal: %pa, dprc handle: %#x, command: %#x, status: %s (%#x)\n",
			 &mc_io->portal_phys_addr,
			 (unsigned int)FUNC3(cmd),
			 (unsigned int)FUNC2(cmd),
			 FUNC7(status),
			 (unsigned int)status);

		error = FUNC6(status);
		goto common_exit;
	}

	error = 0;
common_exit:
	if (mc_io->flags & FSL_MC_IO_ATOMIC_CONTEXT_PORTAL)
		FUNC12(&mc_io->spinlock, irq_flags);
	else
		FUNC10(&mc_io->mutex);

	return error;
}