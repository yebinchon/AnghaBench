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
struct rtl8366_vlan_mc {scalar_t__ vid; scalar_t__ priority; scalar_t__ member; scalar_t__ untag; scalar_t__ fid; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ RTL8366RB_FIDMAX ; 
 scalar_t__ RTL8366RB_NUM_VIDS ; 
 scalar_t__ RTL8366RB_NUM_VLANS ; 
 scalar_t__ RTL8366RB_PRIORITYMAX ; 
 scalar_t__ RTL8366RB_VLAN_FID_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ RTL8366RB_VLAN_MEMBER_MASK ; 
 scalar_t__ RTL8366RB_VLAN_PRIORITY_MASK ; 
 scalar_t__ RTL8366RB_VLAN_PRIORITY_SHIFT ; 
 scalar_t__ RTL8366RB_VLAN_UNTAG_MASK ; 
 scalar_t__ RTL8366RB_VLAN_UNTAG_SHIFT ; 
 scalar_t__ RTL8366RB_VLAN_VID_MASK ; 
 int FUNC1 (struct rtl8366_smi*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct rtl8366_smi *smi, u32 index,
				 const struct rtl8366_vlan_mc *vlanmc)
{
	u32 data[3];
	int err;
	int i;

	if (index >= RTL8366RB_NUM_VLANS ||
	    vlanmc->vid >= RTL8366RB_NUM_VIDS ||
	    vlanmc->priority > RTL8366RB_PRIORITYMAX ||
	    vlanmc->member > RTL8366RB_VLAN_MEMBER_MASK ||
	    vlanmc->untag > RTL8366RB_VLAN_UNTAG_MASK ||
	    vlanmc->fid > RTL8366RB_FIDMAX)
		return -EINVAL;

	data[0] = (vlanmc->vid & RTL8366RB_VLAN_VID_MASK) |
		  ((vlanmc->priority & RTL8366RB_VLAN_PRIORITY_MASK) <<
			RTL8366RB_VLAN_PRIORITY_SHIFT);
	data[1] = (vlanmc->member & RTL8366RB_VLAN_MEMBER_MASK) |
		  ((vlanmc->untag & RTL8366RB_VLAN_UNTAG_MASK) <<
			RTL8366RB_VLAN_UNTAG_SHIFT);
	data[2] = vlanmc->fid & RTL8366RB_VLAN_FID_MASK;

	for (i = 0; i < 3; i++) {
		err = FUNC1(smi,
					    FUNC0(index) + i,
					    data[i]);
		if (err)
			return err;
	}

	return 0;
}