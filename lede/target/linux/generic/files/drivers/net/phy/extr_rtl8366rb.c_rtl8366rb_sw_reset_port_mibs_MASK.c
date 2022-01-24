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
struct switch_val {scalar_t__ port_vlan; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  RTL8366RB_MIB_CTRL_REG ; 
 scalar_t__ RTL8366RB_NUM_PORTS ; 
 int FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl8366_smi* FUNC2 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC3(struct switch_dev *dev,
				       const struct switch_attr *attr,
				       struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC2(dev);

	if (val->port_vlan >= RTL8366RB_NUM_PORTS)
		return -EINVAL;

	return FUNC1(smi, RTL8366RB_MIB_CTRL_REG, 0,
				FUNC0(val->port_vlan));
}