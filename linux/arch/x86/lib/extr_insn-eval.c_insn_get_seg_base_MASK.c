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
struct pt_regs {int dummy; } ;
struct desc_struct {int dummy; } ;

/* Variables and functions */
 int INAT_SEG_REG_FS ; 
 int INAT_SEG_REG_GS ; 
 int /*<<< orphan*/  MSR_FS_BASE ; 
 int /*<<< orphan*/  MSR_KERNEL_GS_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct desc_struct*,short) ; 
 unsigned long FUNC1 (struct desc_struct*) ; 
 short FUNC2 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 

unsigned long FUNC6(struct pt_regs *regs, int seg_reg_idx)
{
	struct desc_struct desc;
	short sel;

	sel = FUNC2(regs, seg_reg_idx);
	if (sel < 0)
		return -1L;

	if (FUNC5(regs))
		/*
		 * Base is simply the segment selector shifted 4
		 * bits to the right.
		 */
		return (unsigned long)(sel << 4);

	if (FUNC4(regs)) {
		/*
		 * Only FS or GS will have a base address, the rest of
		 * the segments' bases are forced to 0.
		 */
		unsigned long base;

		if (seg_reg_idx == INAT_SEG_REG_FS)
			FUNC3(MSR_FS_BASE, base);
		else if (seg_reg_idx == INAT_SEG_REG_GS)
			/*
			 * swapgs was called at the kernel entry point. Thus,
			 * MSR_KERNEL_GS_BASE will have the user-space GS base.
			 */
			FUNC3(MSR_KERNEL_GS_BASE, base);
		else
			base = 0;
		return base;
	}

	/* In protected mode the segment selector cannot be null. */
	if (!sel)
		return -1L;

	if (!FUNC0(&desc, sel))
		return -1L;

	return FUNC1(&desc);
}