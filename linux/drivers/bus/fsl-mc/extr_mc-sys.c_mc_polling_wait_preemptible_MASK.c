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
struct fsl_mc_io {int /*<<< orphan*/  portal_phys_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  portal_virt_addr; } ;
struct fsl_mc_command {int dummy; } ;
typedef  enum mc_cmd_status { ____Placeholder_mc_cmd_status } mc_cmd_status ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS ; 
 int /*<<< orphan*/  MC_CMD_COMPLETION_POLLING_MIN_SLEEP_USECS ; 
 int /*<<< orphan*/  MC_CMD_COMPLETION_TIMEOUT_MS ; 
 int MC_CMD_STATUS_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (struct fsl_mc_command*) ; 
 scalar_t__ FUNC2 (struct fsl_mc_command*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fsl_mc_command*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fsl_mc_io *mc_io,
				       struct fsl_mc_command *cmd,
				       enum mc_cmd_status *mc_status)
{
	enum mc_cmd_status status;
	unsigned long jiffies_until_timeout =
		jiffies + FUNC4(MC_CMD_COMPLETION_TIMEOUT_MS);

	/*
	 * Wait for response from the MC hardware:
	 */
	for (;;) {
		status = FUNC3(mc_io->portal_virt_addr, cmd);
		if (status != MC_CMD_STATUS_READY)
			break;

		/*
		 * TODO: When MC command completion interrupts are supported
		 * call wait function here instead of usleep_range()
		 */
		FUNC6(MC_CMD_COMPLETION_POLLING_MIN_SLEEP_USECS,
			     MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS);

		if (FUNC5(jiffies, jiffies_until_timeout)) {
			FUNC0(mc_io->dev,
				"MC command timed out (portal: %pa, dprc handle: %#x, command: %#x)\n",
				 &mc_io->portal_phys_addr,
				 (unsigned int)FUNC2(cmd),
				 (unsigned int)FUNC1(cmd));

			return -ETIMEDOUT;
		}
	}

	*mc_status = status;
	return 0;
}