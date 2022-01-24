#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtl8366_vlan_mc {scalar_t__ fid; scalar_t__ untag; scalar_t__ member; scalar_t__ priority; scalar_t__ vid; } ;
struct rtl8366_smi {int num_vlan_mc; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_vlan_mc ) (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8366_smi*,int,struct rtl8366_vlan_mc*) ; 

int FUNC3(struct rtl8366_smi *smi)
{
	struct rtl8366_vlan_mc vlanmc;
	int err;
	int i;

	FUNC0(smi, 0);
	FUNC1(smi, 0);

	/* clear VLAN member configurations */
	vlanmc.vid = 0;
	vlanmc.priority = 0;
	vlanmc.member = 0;
	vlanmc.untag = 0;
	vlanmc.fid = 0;
	for (i = 0; i < smi->num_vlan_mc; i++) {
		err = smi->ops->set_vlan_mc(smi, i, &vlanmc);
		if (err)
			return err;
	}

	return 0;
}