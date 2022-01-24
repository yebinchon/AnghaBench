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
 unsigned int FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,unsigned long) ; 

unsigned long FUNC2(struct pt_regs *regs, unsigned int n)
{
	unsigned long addr;

	addr = FUNC0(regs) + n * sizeof(long);
	if (!FUNC1(regs, addr))
		return 0;
	return *(unsigned long *)addr;
}