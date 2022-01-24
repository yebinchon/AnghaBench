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
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,scalar_t__,scalar_t__) ; 
 scalar_t__ RTL8367B_FIDMAX ; 
 scalar_t__ RTL8367B_NUM_VIDS ; 
 scalar_t__ RTL8367B_NUM_VLANS ; 
 scalar_t__ RTL8367B_PRIORITYMAX ; 
 scalar_t__ RTL8367B_UNTAG_MASK ; 
 scalar_t__ RTL8367B_VLAN_MC0_MEMBER_MASK ; 
 scalar_t__ RTL8367B_VLAN_MC0_MEMBER_SHIFT ; 
 scalar_t__ RTL8367B_VLAN_MC1_FID_MASK ; 
 scalar_t__ RTL8367B_VLAN_MC1_FID_SHIFT ; 
 scalar_t__ RTL8367B_VLAN_MC3_EVID_MASK ; 
 scalar_t__ RTL8367B_VLAN_MC3_EVID_SHIFT ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int RTL8367B_VLAN_MC_NUM_WORDS ; 

__attribute__((used)) static int FUNC3(struct rtl8366_smi *smi, u32 index,
				const struct rtl8366_vlan_mc *vlanmc)
{
	u32 data[RTL8367B_VLAN_MC_NUM_WORDS];
	int err;
	int i;

	if (index >= RTL8367B_NUM_VLANS ||
	    vlanmc->vid >= RTL8367B_NUM_VIDS ||
	    vlanmc->priority > RTL8367B_PRIORITYMAX ||
	    vlanmc->member > RTL8367B_VLAN_MC0_MEMBER_MASK ||
	    vlanmc->untag > RTL8367B_UNTAG_MASK ||
	    vlanmc->fid > RTL8367B_FIDMAX)
		return -EINVAL;

	data[0] = (vlanmc->member & RTL8367B_VLAN_MC0_MEMBER_MASK) <<
		  RTL8367B_VLAN_MC0_MEMBER_SHIFT;
	data[1] = (vlanmc->fid & RTL8367B_VLAN_MC1_FID_MASK) <<
		  RTL8367B_VLAN_MC1_FID_SHIFT;
	data[2] = 0;
	data[3] = (vlanmc->vid & RTL8367B_VLAN_MC3_EVID_MASK) <<
		   RTL8367B_VLAN_MC3_EVID_SHIFT;

	for (i = 0; i < FUNC0(data); i++)
		FUNC1(smi, FUNC2(index) + i, data[i]);

	return 0;
}