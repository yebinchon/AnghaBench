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
union offset_union {unsigned long un; } ;
struct pt_regs {unsigned long* uregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 size_t FUNC3 (unsigned long) ; 

__attribute__((used)) static void
FUNC4(unsigned long addr, unsigned long instr,
			 struct pt_regs *regs, union offset_union offset)
{
	if (!FUNC1(instr))
		offset.un = -offset.un;

	if (!FUNC0(instr))
		addr += offset.un;

	if (!FUNC0(instr) || FUNC2(instr))
		regs->uregs[FUNC3(instr)] = addr;
}