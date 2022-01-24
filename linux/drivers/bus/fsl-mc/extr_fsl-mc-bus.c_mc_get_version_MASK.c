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
struct mc_version {void* minor; void* major; void* revision; } ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpmng_rsp_get_version {int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPMNG_CMDID_GET_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

__attribute__((used)) static int FUNC3(struct fsl_mc_io *mc_io,
			  u32 cmd_flags,
			  struct mc_version *mc_ver_info)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpmng_rsp_get_version *rsp_params;
	int err;

	/* prepare command */
	cmd.header = FUNC1(DPMNG_CMDID_GET_VERSION,
					  cmd_flags,
					  0);

	/* send command to mc*/
	err = FUNC2(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	rsp_params = (struct dpmng_rsp_get_version *)cmd.params;
	mc_ver_info->revision = FUNC0(rsp_params->revision);
	mc_ver_info->major = FUNC0(rsp_params->version_major);
	mc_ver_info->minor = FUNC0(rsp_params->version_minor);

	return 0;
}