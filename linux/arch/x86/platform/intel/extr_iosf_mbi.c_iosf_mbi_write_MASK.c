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
typedef  scalar_t__ u8 ;
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ BT_MBI_UNIT_GFX ; 
 int EPERM ; 
 int MBI_MASK_HI ; 
 int MBI_MASK_LO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  iosf_mbi_lock ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(u8 port, u8 opcode, u32 offset, u32 mdr)
{
	u32 mcr, mcrx;
	unsigned long flags;
	int ret;

	/* Access to the GFX unit is handled by GPU code */
	if (port == BT_MBI_UNIT_GFX) {
		FUNC0(1);
		return -EPERM;
	}

	mcr = FUNC1(opcode, port, offset & MBI_MASK_LO);
	mcrx = offset & MBI_MASK_HI;

	FUNC3(&iosf_mbi_lock, flags);
	ret = FUNC2(mcrx, mcr, mdr);
	FUNC4(&iosf_mbi_lock, flags);

	return ret;
}