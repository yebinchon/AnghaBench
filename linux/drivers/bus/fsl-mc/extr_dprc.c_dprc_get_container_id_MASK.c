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
typedef  int /*<<< orphan*/  u32 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPRC_CMDID_GET_CONT_ID ; 
 scalar_t__ FUNC0 (struct fsl_mc_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io,
			  u32 cmd_flags,
			  int *container_id)
{
	struct fsl_mc_command cmd = { 0 };
	int err;

	/* prepare command */
	cmd.header = FUNC1(DPRC_CMDID_GET_CONT_ID,
					  cmd_flags,
					  0);

	/* send command to mc*/
	err = FUNC2(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	*container_id = (int)FUNC0(&cmd);

	return 0;
}