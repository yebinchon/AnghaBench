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

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 (struct pt_regs*,unsigned long) ; 

unsigned long FUNC2(struct pt_regs *regs, unsigned int n)
{
	unsigned long *addr = (unsigned long *)FUNC0(regs);
	addr += n;
	if (FUNC1(regs, (unsigned long)addr))
		return *addr;
	else
		return 0;
}