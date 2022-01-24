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
struct fsl_mc_obj_desc {char* type; char* label; void* flags; void* ver_minor; void* ver_major; void* state; int /*<<< orphan*/  region_count; int /*<<< orphan*/  irq_count; void* vendor; void* id; } ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dprc_rsp_get_obj {int /*<<< orphan*/  label; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; int /*<<< orphan*/  state; int /*<<< orphan*/  region_count; int /*<<< orphan*/  irq_count; int /*<<< orphan*/  vendor; int /*<<< orphan*/  id; } ;
struct dprc_cmd_get_obj {int /*<<< orphan*/  obj_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPRC_CMDID_GET_OBJ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fsl_mc_io*,struct fsl_mc_command*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct fsl_mc_io *mc_io,
		 u32 cmd_flags,
		 u16 token,
		 int obj_index,
		 struct fsl_mc_obj_desc *obj_desc)
{
	struct fsl_mc_command cmd = { 0 };
	struct dprc_cmd_get_obj *cmd_params;
	struct dprc_rsp_get_obj *rsp_params;
	int err;

	/* prepare command */
	cmd.header = FUNC3(DPRC_CMDID_GET_OBJ,
					  cmd_flags,
					  token);
	cmd_params = (struct dprc_cmd_get_obj *)cmd.params;
	cmd_params->obj_index = FUNC0(obj_index);

	/* send command to mc*/
	err = FUNC4(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	rsp_params = (struct dprc_rsp_get_obj *)cmd.params;
	obj_desc->id = FUNC2(rsp_params->id);
	obj_desc->vendor = FUNC1(rsp_params->vendor);
	obj_desc->irq_count = rsp_params->irq_count;
	obj_desc->region_count = rsp_params->region_count;
	obj_desc->state = FUNC2(rsp_params->state);
	obj_desc->ver_major = FUNC1(rsp_params->version_major);
	obj_desc->ver_minor = FUNC1(rsp_params->version_minor);
	obj_desc->flags = FUNC1(rsp_params->flags);
	FUNC5(obj_desc->type, rsp_params->type, 16);
	obj_desc->type[15] = '\0';
	FUNC5(obj_desc->label, rsp_params->label, 16);
	obj_desc->label[15] = '\0';
	return 0;
}