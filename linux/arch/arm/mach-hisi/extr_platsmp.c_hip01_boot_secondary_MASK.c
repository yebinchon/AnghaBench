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
struct task_struct {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  HIP01_BOOT_ADDRESS ; 
 scalar_t__ REG_SC_CTRL ; 
 unsigned int SC_SCTL_REMAP_CLR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ ctrl_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  secondary_startup ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(unsigned int cpu, struct task_struct *idle)
{
	phys_addr_t jumpaddr;
	unsigned int remap_reg_value = 0;
	struct device_node *node;


	jumpaddr = FUNC1(secondary_startup);
	FUNC3(HIP01_BOOT_ADDRESS, jumpaddr);

	node = FUNC5(NULL, NULL, "hisilicon,hip01-sysctrl");
	if (FUNC0(!node))
		return -1;
	ctrl_base = FUNC6(node, 0);

	/* set the secondary core boot from DDR */
	remap_reg_value = FUNC7(ctrl_base + REG_SC_CTRL);
	FUNC2();
	remap_reg_value |= SC_SCTL_REMAP_CLR;
	FUNC2();
	FUNC8(remap_reg_value, ctrl_base + REG_SC_CTRL);

	FUNC4(cpu, true);

	return 0;
}