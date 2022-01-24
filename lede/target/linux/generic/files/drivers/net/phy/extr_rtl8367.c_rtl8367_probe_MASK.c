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
struct rtl8366_smi {int clk_delay; int cmd_read; int cmd_write; int /*<<< orphan*/  num_mib_counters; int /*<<< orphan*/  mib_counters; int /*<<< orphan*/  num_vlan_mc; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  cpu_port; int /*<<< orphan*/ * ops; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtl8366_smi*) ; 
 int FUNC2 (struct rtl8366_smi*) ; 
 int /*<<< orphan*/  RTL8367_CPU_PORT_NUM ; 
 int /*<<< orphan*/  RTL8367_NUM_PORTS ; 
 int /*<<< orphan*/  RTL8367_NUM_VLANS ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366_smi*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct rtl8366_smi*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8366_smi*) ; 
 int FUNC6 (struct rtl8366_smi*) ; 
 struct rtl8366_smi* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  rtl8367_mib_counters ; 
 int /*<<< orphan*/  rtl8367_smi_ops ; 
 int FUNC8 (struct rtl8366_smi*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct rtl8366_smi *smi;
	int err;

	smi = FUNC7(pdev);
	if (FUNC1(smi))
		return FUNC2(smi);

	smi->clk_delay = 1500;
	smi->cmd_read = 0xb9;
	smi->cmd_write = 0xb8;
	smi->ops = &rtl8367_smi_ops;
	smi->cpu_port = RTL8367_CPU_PORT_NUM;
	smi->num_ports = RTL8367_NUM_PORTS;
	smi->num_vlan_mc = RTL8367_NUM_VLANS;
	smi->mib_counters = rtl8367_mib_counters;
	smi->num_mib_counters = FUNC0(rtl8367_mib_counters);

	err = FUNC6(smi);
	if (err)
		goto err_free_smi;

	FUNC4(pdev, smi);

	err = FUNC8(smi);
	if (err)
		goto err_clear_drvdata;

	return 0;

 err_clear_drvdata:
	FUNC4(pdev, NULL);
	FUNC5(smi);
 err_free_smi:
	FUNC3(smi);
	return err;
}