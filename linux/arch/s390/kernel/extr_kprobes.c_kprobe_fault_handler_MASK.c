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
struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;

/* Variables and functions */
 int PSW_MASK_EXT ; 
 int PSW_MASK_IO ; 
 int PSW_MASK_PER ; 
 int FUNC0 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct pt_regs *regs, int trapnr)
{
	int ret;

	if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
		FUNC1();
	ret = FUNC0(regs, trapnr);
	if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
		FUNC2(regs->psw.mask & ~PSW_MASK_PER);
	return ret;
}