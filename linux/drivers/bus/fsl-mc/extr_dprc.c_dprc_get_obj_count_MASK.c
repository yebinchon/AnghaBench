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
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dprc_rsp_get_obj_count {int /*<<< orphan*/  obj_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPRC_CMDID_GET_OBJ_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io,
		       u32 cmd_flags,
		       u16 token,
		       int *obj_count)
{
	struct fsl_mc_command cmd = { 0 };
	struct dprc_rsp_get_obj_count *rsp_params;
	int err;

	/* prepare command */
	cmd.header = FUNC1(DPRC_CMDID_GET_OBJ_COUNT,
					  cmd_flags, token);

	/* send command to mc*/
	err = FUNC2(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	rsp_params = (struct dprc_rsp_get_obj_count *)cmd.params;
	*obj_count = FUNC0(rsp_params->obj_count);

	return 0;
}