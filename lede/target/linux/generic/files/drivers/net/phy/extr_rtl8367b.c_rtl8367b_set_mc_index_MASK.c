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
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTL8367B_NUM_PORTS ; 
 int RTL8367B_NUM_VLANS ; 
 int RTL8367B_VLAN_PVID_CTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct rtl8366_smi *smi, int port, int index)
{
	if (port >= RTL8367B_NUM_PORTS || index >= RTL8367B_NUM_VLANS)
		return -EINVAL;

	return FUNC2(smi, FUNC0(port),
				RTL8367B_VLAN_PVID_CTRL_MASK <<
					FUNC1(port),
				(index & RTL8367B_VLAN_PVID_CTRL_MASK) <<
					FUNC1(port));
}