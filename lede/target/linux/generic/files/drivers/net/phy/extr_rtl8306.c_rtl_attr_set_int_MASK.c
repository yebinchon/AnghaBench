#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int id; int ofs; scalar_t__ max; } ;
struct rtl_phyregs {int dummy; } ;
struct TYPE_5__ {int reg; scalar_t__ page; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct switch_dev*,int,struct rtl_phyregs*) ; 
 int /*<<< orphan*/  FUNC2 (struct switch_dev*,int,struct rtl_phyregs*) ; 
 TYPE_2__* rtl_regs ; 
 int /*<<< orphan*/  FUNC3 (struct switch_dev*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
	int idx = attr->id + (val->port_vlan * attr->ofs);
	struct rtl_phyregs port;

	if (attr->id >= FUNC0(rtl_regs))
		return -EINVAL;

	if ((attr->max > 0) && (val->value.i > attr->max))
		return -EINVAL;

	/* access to phy register 22 on port 4/5
	 * needs phy status save/restore */
	if ((val->port_vlan > 3) &&
		(rtl_regs[idx].reg == 22) &&
		(rtl_regs[idx].page == 0)) {

		FUNC2(dev, val->port_vlan, &port);
		FUNC3(dev, idx, val->value.i);
		FUNC1(dev, val->port_vlan, &port);
	} else {
		FUNC3(dev, idx, val->value.i);
	}

	return 0;
}