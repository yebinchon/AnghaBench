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
struct rtl8366_vlan_mc {scalar_t__ vid; scalar_t__ fid; scalar_t__ member; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,scalar_t__,scalar_t__*) ; 
 scalar_t__ RTL8367B_NUM_VLANS ; 
 scalar_t__ RTL8367B_VLAN_MC0_MEMBER_MASK ; 
 scalar_t__ RTL8367B_VLAN_MC0_MEMBER_SHIFT ; 
 scalar_t__ RTL8367B_VLAN_MC1_FID_MASK ; 
 scalar_t__ RTL8367B_VLAN_MC1_FID_SHIFT ; 
 scalar_t__ RTL8367B_VLAN_MC3_EVID_MASK ; 
 scalar_t__ RTL8367B_VLAN_MC3_EVID_SHIFT ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int RTL8367B_VLAN_MC_NUM_WORDS ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366_vlan_mc*,char,int) ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi, u32 index,
				struct rtl8366_vlan_mc *vlanmc)
{
	u32 data[RTL8367B_VLAN_MC_NUM_WORDS];
	int err;
	int i;

	FUNC3(vlanmc, '\0', sizeof(struct rtl8366_vlan_mc));

	if (index >= RTL8367B_NUM_VLANS)
		return -EINVAL;

	for (i = 0; i < FUNC0(data); i++)
		FUNC1(smi, FUNC2(index) + i, &data[i]);

	vlanmc->member = (data[0] >> RTL8367B_VLAN_MC0_MEMBER_SHIFT) &
			 RTL8367B_VLAN_MC0_MEMBER_MASK;
	vlanmc->fid = (data[1] >> RTL8367B_VLAN_MC1_FID_SHIFT) &
		      RTL8367B_VLAN_MC1_FID_MASK;
	vlanmc->vid = (data[3] >> RTL8367B_VLAN_MC3_EVID_SHIFT) &
		      RTL8367B_VLAN_MC3_EVID_MASK;

	return 0;
}