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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {unsigned long* uregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(unsigned long addr, u32 instr, struct pt_regs *regs, union offset_union offset)
{
	if (!FUNC1(instr))
		offset.un = -offset.un;

	if (!FUNC0(instr))
		addr += offset.un;

	if (!FUNC0(instr) || FUNC2(instr))
		regs->uregs[FUNC3(instr)] = addr;
}