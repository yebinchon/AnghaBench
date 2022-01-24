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
struct dprc_rsp_get_attributes {int /*<<< orphan*/  portal_id; int /*<<< orphan*/  options; int /*<<< orphan*/  icid; int /*<<< orphan*/  container_id; } ;
struct dprc_attributes {void* portal_id; void* options; int /*<<< orphan*/  icid; void* container_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPRC_CMDID_GET_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			u32 cmd_flags,
			u16 token,
			struct dprc_attributes *attr)
{
	struct fsl_mc_command cmd = { 0 };
	struct dprc_rsp_get_attributes *rsp_params;
	int err;

	/* prepare command */
	cmd.header = FUNC2(DPRC_CMDID_GET_ATTR,
					  cmd_flags,
					  token);

	/* send command to mc*/
	err = FUNC3(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	rsp_params = (struct dprc_rsp_get_attributes *)cmd.params;
	attr->container_id = FUNC1(rsp_params->container_id);
	attr->icid = FUNC0(rsp_params->icid);
	attr->options = FUNC1(rsp_params->options);
	attr->portal_id = FUNC1(rsp_params->portal_id);

	return 0;
}