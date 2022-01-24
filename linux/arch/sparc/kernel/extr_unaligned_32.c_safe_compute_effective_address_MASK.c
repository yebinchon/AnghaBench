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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 unsigned long FUNC1 (unsigned int,struct pt_regs*) ; 
 unsigned long FUNC2 (unsigned int) ; 

unsigned long FUNC3(struct pt_regs *regs,
					     unsigned int insn)
{
	unsigned int rs1 = (insn >> 14) & 0x1f;
	unsigned int rs2 = insn & 0x1f;
	unsigned int rd = (insn >> 25) & 0x1f;

	if(insn & 0x2000) {
		FUNC0(rs1, 0, rd);
		return (FUNC1(rs1, regs) + FUNC2(insn));
	} else {
		FUNC0(rs1, rs2, rd);
		return (FUNC1(rs1, regs) + FUNC1(rs2, regs));
	}
}