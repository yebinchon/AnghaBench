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
struct dpcon_rsp_get_attr {int /*<<< orphan*/  num_priorities; int /*<<< orphan*/  qbman_ch_id; int /*<<< orphan*/  id; } ;
struct dpcon_attr {int /*<<< orphan*/  num_priorities; int /*<<< orphan*/  qbman_ch_id; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPCON_CMDID_GET_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			 u32 cmd_flags,
			 u16 token,
			 struct dpcon_attr *attr)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpcon_rsp_get_attr *dpcon_rsp;
	int err;

	/* prepare command */
	cmd.header = FUNC2(DPCON_CMDID_GET_ATTR,
					  cmd_flags,
					  token);

	/* send command to mc*/
	err = FUNC3(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	dpcon_rsp = (struct dpcon_rsp_get_attr *)cmd.params;
	attr->id = FUNC1(dpcon_rsp->id);
	attr->qbman_ch_id = FUNC0(dpcon_rsp->qbman_ch_id);
	attr->num_priorities = dpcon_rsp->num_priorities;

	return 0;
}