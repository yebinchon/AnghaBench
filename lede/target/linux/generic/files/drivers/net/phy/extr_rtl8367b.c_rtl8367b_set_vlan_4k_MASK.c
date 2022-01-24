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
typedef  int u32 ;
struct rtl8366_vlan_4k {int vid; int member; int untag; int fid; } ;
struct rtl8366_smi {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int) ; 
 int RTL8367B_FIDMAX ; 
 int RTL8367B_NUM_VIDS ; 
 int /*<<< orphan*/  RTL8367B_TA_ADDR_REG ; 
 int RTL8367B_TA_CTRL_CVLAN_WRITE ; 
 int /*<<< orphan*/  RTL8367B_TA_CTRL_REG ; 
 int RTL8367B_TA_VLAN0_MEMBER_MASK ; 
 int RTL8367B_TA_VLAN0_MEMBER_SHIFT ; 
 int RTL8367B_TA_VLAN0_UNTAG_MASK ; 
 int RTL8367B_TA_VLAN0_UNTAG_SHIFT ; 
 int RTL8367B_TA_VLAN1_FID_MASK ; 
 int RTL8367B_TA_VLAN1_FID_SHIFT ; 
 int RTL8367B_TA_VLAN_NUM_WORDS ; 
 int RTL8367B_TA_VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int RTL8367B_UNTAG_MASK ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi,
				const struct rtl8366_vlan_4k *vlan4k)
{
	u32 data[RTL8367B_TA_VLAN_NUM_WORDS];
	int err;
	int i;

	if (vlan4k->vid >= RTL8367B_NUM_VIDS ||
	    vlan4k->member > RTL8367B_TA_VLAN0_MEMBER_MASK ||
	    vlan4k->untag > RTL8367B_UNTAG_MASK ||
	    vlan4k->fid > RTL8367B_FIDMAX)
		return -EINVAL;

	FUNC3(data, 0, sizeof(data));

	data[0] = (vlan4k->member & RTL8367B_TA_VLAN0_MEMBER_MASK) <<
		  RTL8367B_TA_VLAN0_MEMBER_SHIFT;
	data[0] |= (vlan4k->untag & RTL8367B_TA_VLAN0_UNTAG_MASK) <<
		   RTL8367B_TA_VLAN0_UNTAG_SHIFT;
	data[1] = (vlan4k->fid & RTL8367B_TA_VLAN1_FID_MASK) <<
		  RTL8367B_TA_VLAN1_FID_SHIFT;

	for (i = 0; i < FUNC0(data); i++)
		FUNC1(smi, FUNC2(i), data[i]);

	/* write VID */
	FUNC1(smi, RTL8367B_TA_ADDR_REG,
	       vlan4k->vid & RTL8367B_TA_VLAN_VID_MASK);

	/* write table access control word */
	FUNC1(smi, RTL8367B_TA_CTRL_REG, RTL8367B_TA_CTRL_CVLAN_WRITE);

	return 0;
}