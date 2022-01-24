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
struct switch_dev {char* name; int /*<<< orphan*/  alias; int /*<<< orphan*/ * ops; int /*<<< orphan*/  vlans; int /*<<< orphan*/  ports; int /*<<< orphan*/  cpu_port; } ;
struct rtl8366_smi {int /*<<< orphan*/  parent; int /*<<< orphan*/  cpu_port; struct switch_dev sw_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8367B_NUM_PORTS ; 
 int /*<<< orphan*/  RTL8367B_NUM_VIDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct switch_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtl8367b_sw_ops ; 

__attribute__((used)) static int FUNC3(struct rtl8366_smi *smi)
{
	struct switch_dev *dev = &smi->sw_dev;
	int err;

	dev->name = "RTL8367B";
	dev->cpu_port = smi->cpu_port;
	dev->ports = RTL8367B_NUM_PORTS;
	dev->vlans = RTL8367B_NUM_VIDS;
	dev->ops = &rtl8367b_sw_ops;
	dev->alias = FUNC1(smi->parent);

	err = FUNC2(dev, NULL);
	if (err)
		FUNC0(smi->parent, "switch registration failed\n");

	return err;
}