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
struct switch_dev {int cpu_port; } ;
struct rtl_priv {scalar_t__ do_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_VID_REPLACE ; 
 int /*<<< orphan*/  PORTMASK ; 
 int /*<<< orphan*/  PVID ; 
 int RTL8306_NUM_PORTS ; 
 int RTL8306_NUM_VLANS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL_REG_CPUPORT ; 
 int /*<<< orphan*/  RTL_REG_EN_CPUPORT ; 
 int /*<<< orphan*/  RTL_REG_EN_TAG_CLR ; 
 int /*<<< orphan*/  RTL_REG_EN_TAG_IN ; 
 int /*<<< orphan*/  RTL_REG_EN_TAG_OUT ; 
 int /*<<< orphan*/  RTL_REG_EN_TRUNK ; 
 int /*<<< orphan*/  RTL_REG_TRUNK_PORTSEL ; 
 int /*<<< orphan*/  RTL_REG_VLAN_ENABLE ; 
 int /*<<< orphan*/  RTL_REG_VLAN_FILTER ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_INSERT ; 
 int /*<<< orphan*/  VID ; 
 int /*<<< orphan*/  VID_INSERT ; 
 int /*<<< orphan*/  FUNC2 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct switch_dev*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC4 (struct switch_dev*) ; 

__attribute__((used)) static void
FUNC5(struct switch_dev *dev)
{
	struct rtl_priv *priv = FUNC4(dev);
	int cpu_mask = 1 << dev->cpu_port;
	int i;

	FUNC3(dev, RTL_REG_VLAN_ENABLE, 0);
	FUNC3(dev, RTL_REG_VLAN_FILTER, 0);
	FUNC3(dev, RTL_REG_EN_TRUNK, 0);
	FUNC3(dev, RTL_REG_TRUNK_PORTSEL, 0);

	/* initialize cpu port settings */
	if (priv->do_cpu) {
		FUNC3(dev, RTL_REG_CPUPORT, dev->cpu_port);
		FUNC3(dev, RTL_REG_EN_CPUPORT, 1);
	} else {
		FUNC3(dev, RTL_REG_CPUPORT, 7);
		FUNC3(dev, RTL_REG_EN_CPUPORT, 0);
	}
	FUNC3(dev, RTL_REG_EN_TAG_OUT, 0);
	FUNC3(dev, RTL_REG_EN_TAG_IN, 0);
	FUNC3(dev, RTL_REG_EN_TAG_CLR, 0);

	/* reset all vlans */
	for (i = 0; i < RTL8306_NUM_VLANS; i++) {
		FUNC3(dev, FUNC1(i, VID), i);
		FUNC3(dev, FUNC1(i, PORTMASK), 0);
	}

	/* default to port isolation */
	for (i = 0; i < RTL8306_NUM_PORTS; i++) {
		unsigned long mask;

		if ((1 << i) == cpu_mask)
			mask = ((1 << RTL8306_NUM_PORTS) - 1) & ~cpu_mask; /* all bits set */
		else
			mask = cpu_mask | (1 << i);

		FUNC3(dev, FUNC1(i, PORTMASK), mask);
		FUNC3(dev, FUNC0(i, PVID), i);
		FUNC3(dev, FUNC0(i, NULL_VID_REPLACE), 1);
		FUNC3(dev, FUNC0(i, VID_INSERT), 1);
		FUNC3(dev, FUNC0(i, TAG_INSERT), 3);
	}
	FUNC2(dev);
}