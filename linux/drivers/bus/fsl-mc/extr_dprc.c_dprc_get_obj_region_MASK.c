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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; void* header; int /*<<< orphan*/  member_0; } ;
struct dprc_rsp_get_obj_region {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  size; int /*<<< orphan*/  base_offset; } ;
struct dprc_region_desc {void* base_address; int /*<<< orphan*/  size; void* base_offset; } ;
struct dprc_cmd_get_obj_region {char* obj_type; int /*<<< orphan*/  region_index; int /*<<< orphan*/  obj_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPRC_CMDID_GET_OBJ_REG ; 
 int /*<<< orphan*/  DPRC_CMDID_GET_OBJ_REG_V2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct fsl_mc_io*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct fsl_mc_io*,struct fsl_mc_command*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

int FUNC7(struct fsl_mc_io *mc_io,
			u32 cmd_flags,
			u16 token,
			char *obj_type,
			int obj_id,
			u8 region_index,
			struct dprc_region_desc *region_desc)
{
	struct fsl_mc_command cmd = { 0 };
	struct dprc_cmd_get_obj_region *cmd_params;
	struct dprc_rsp_get_obj_region *rsp_params;
	u16 major_ver, minor_ver;
	int err;

	/* prepare command */
	err = FUNC1(mc_io, 0,
				     &major_ver,
				     &minor_ver);
	if (err)
		return err;

	/**
	 * MC API version 6.3 introduced a new field to the region
	 * descriptor: base_address. If the older API is in use then the base
	 * address is set to zero to indicate it needs to be obtained elsewhere
	 * (typically the device tree).
	 */
	if (major_ver > 6 || (major_ver == 6 && minor_ver >= 3))
		cmd.header =
			FUNC4(DPRC_CMDID_GET_OBJ_REG_V2,
					     cmd_flags, token);
	else
		cmd.header =
			FUNC4(DPRC_CMDID_GET_OBJ_REG,
					     cmd_flags, token);

	cmd_params = (struct dprc_cmd_get_obj_region *)cmd.params;
	cmd_params->obj_id = FUNC0(obj_id);
	cmd_params->region_index = region_index;
	FUNC6(cmd_params->obj_type, obj_type, 16);
	cmd_params->obj_type[15] = '\0';

	/* send command to mc*/
	err = FUNC5(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	rsp_params = (struct dprc_rsp_get_obj_region *)cmd.params;
	region_desc->base_offset = FUNC3(rsp_params->base_offset);
	region_desc->size = FUNC2(rsp_params->size);
	if (major_ver > 6 || (major_ver == 6 && minor_ver >= 3))
		region_desc->base_address = FUNC3(rsp_params->base_addr);
	else
		region_desc->base_address = 0;

	return 0;
}