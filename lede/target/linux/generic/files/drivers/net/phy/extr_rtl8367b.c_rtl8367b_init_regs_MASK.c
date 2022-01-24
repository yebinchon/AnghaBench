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
struct rtl8367b_initval {int dummy; } ;
struct rtl8366_smi {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8367b_initval*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL8367B_CHIP_VER_REG ; 
 int RTL8367B_CHIP_VER_RLVID_MASK ; 
 int RTL8367B_CHIP_VER_RLVID_SHIFT ; 
 int /*<<< orphan*/  RTL8367B_RTL_MAGIC_ID_REG ; 
 int /*<<< orphan*/  RTL8367B_RTL_MAGIC_ID_VAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct rtl8366_smi*,struct rtl8367b_initval const*,int) ; 
 struct rtl8367b_initval* rtl8367r_vb_initvals_0 ; 
 struct rtl8367b_initval* rtl8367r_vb_initvals_1 ; 

__attribute__((used)) static int FUNC5(struct rtl8366_smi *smi)
{
	const struct rtl8367b_initval *initvals;
	u32 chip_ver;
	u32 rlvid;
	int count;
	int err;

	FUNC2(smi, RTL8367B_RTL_MAGIC_ID_REG, RTL8367B_RTL_MAGIC_ID_VAL);
	FUNC1(smi, RTL8367B_CHIP_VER_REG, &chip_ver);

	rlvid = (chip_ver >> RTL8367B_CHIP_VER_RLVID_SHIFT) &
		RTL8367B_CHIP_VER_RLVID_MASK;

	switch (rlvid) {
	case 0:
		initvals = rtl8367r_vb_initvals_0;
		count = FUNC0(rtl8367r_vb_initvals_0);
		break;

	case 1:
		initvals = rtl8367r_vb_initvals_1;
		count = FUNC0(rtl8367r_vb_initvals_1);
		break;

	default:
		FUNC3(smi->parent, "unknow rlvid %u\n", rlvid);
		return -ENODEV;
	}

	/* TODO: disable RLTP */

	return FUNC4(smi, initvals, count);
}