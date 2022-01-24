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
typedef  scalar_t__ u32 ;
struct rtl8366_vlan_mc {scalar_t__ fid; scalar_t__ member; scalar_t__ untag; scalar_t__ priority; scalar_t__ vid; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ RTL8366RB_NUM_VLANS ; 
 scalar_t__ RTL8366RB_VLAN_FID_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ RTL8366RB_VLAN_MEMBER_MASK ; 
 scalar_t__ RTL8366RB_VLAN_PRIORITY_MASK ; 
 scalar_t__ RTL8366RB_VLAN_PRIORITY_SHIFT ; 
 scalar_t__ RTL8366RB_VLAN_UNTAG_MASK ; 
 scalar_t__ RTL8366RB_VLAN_UNTAG_SHIFT ; 
 scalar_t__ RTL8366RB_VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_vlan_mc*,char,int) ; 
 int FUNC2 (struct rtl8366_smi*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct rtl8366_smi *smi, u32 index,
				 struct rtl8366_vlan_mc *vlanmc)
{
	u32 data[3];
	int err;
	int i;

	FUNC1(vlanmc, '\0', sizeof(struct rtl8366_vlan_mc));

	if (index >= RTL8366RB_NUM_VLANS)
		return -EINVAL;

	for (i = 0; i < 3; i++) {
		err = FUNC2(smi,
					   FUNC0(index) + i,
					   &data[i]);
		if (err)
			return err;
	}

	vlanmc->vid = data[0] & RTL8366RB_VLAN_VID_MASK;
	vlanmc->priority = (data[0] >> RTL8366RB_VLAN_PRIORITY_SHIFT) &
			   RTL8366RB_VLAN_PRIORITY_MASK;
	vlanmc->untag = (data[1] >> RTL8366RB_VLAN_UNTAG_SHIFT) &
			RTL8366RB_VLAN_UNTAG_MASK;
	vlanmc->member = data[1] & RTL8366RB_VLAN_MEMBER_MASK;
	vlanmc->fid = data[2] & RTL8366RB_VLAN_FID_MASK;

	return 0;
}