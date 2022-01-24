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
struct unwind_ctrl_block {unsigned long* vrs; } ;

/* Variables and functions */
 size_t SP ; 
 int URC_FAILURE ; 
 int URC_OK ; 
 scalar_t__ FUNC0 (struct unwind_ctrl_block*,unsigned long**,int) ; 

__attribute__((used)) static int FUNC1(struct unwind_ctrl_block *ctrl,
						unsigned long mask)
{
	unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
	int reg = 0;

	/* pop R0-R3 according to mask */
	while (mask) {
		if (mask & 1)
			if (FUNC0(ctrl, &vsp, reg))
				return -URC_FAILURE;
		mask >>= 1;
		reg++;
	}
	ctrl->vrs[SP] = (unsigned long)vsp;

	return URC_OK;
}