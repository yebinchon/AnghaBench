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
typedef  int u64 ;
typedef  int u32 ;
struct imc_pmu {struct imc_mem_info* mem_info; } ;
struct imc_mem_info {scalar_t__ id; int /*<<< orphan*/ * vbase; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int IMC_CNTL_BLK_CMD_OFFSET ; 
 int IMC_CNTL_BLK_MODE_OFFSET ; 
 int IMC_CNTL_BLK_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  imc_debugfs_parent ; 
 scalar_t__ FUNC3 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  powerpc_debugfs_root ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct device_node *node,
				    struct imc_pmu *pmu_ptr)
{
	static u64 loc, *imc_mode_addr, *imc_cmd_addr;
	char mode[16], cmd[16];
	u32 cb_offset;
	struct imc_mem_info *ptr = pmu_ptr->mem_info;

	imc_debugfs_parent = FUNC0("imc", powerpc_debugfs_root);

	/*
	 * Return here, either because 'imc' directory already exists,
	 * Or failed to create a new one.
	 */
	if (!imc_debugfs_parent)
		return;

	if (FUNC3(node, "cb_offset", &cb_offset))
		cb_offset = IMC_CNTL_BLK_OFFSET;

	while (ptr->vbase != NULL) {
		loc = (u64)(ptr->vbase) + cb_offset;
		imc_mode_addr = (u64 *)(loc + IMC_CNTL_BLK_MODE_OFFSET);
		FUNC4(mode, "imc_mode_%d", (u32)(ptr->id));
		if (!FUNC2(mode, 0600, imc_debugfs_parent,
					    imc_mode_addr))
			goto err;

		imc_cmd_addr = (u64 *)(loc + IMC_CNTL_BLK_CMD_OFFSET);
		FUNC4(cmd, "imc_cmd_%d", (u32)(ptr->id));
		if (!FUNC2(cmd, 0600, imc_debugfs_parent,
					    imc_cmd_addr))
			goto err;
		ptr++;
	}
	return;

err:
	FUNC1(imc_debugfs_parent);
}