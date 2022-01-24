#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {long ip; } ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  nbytes; } ;
struct insn {int addr_bytes; long length; TYPE_2__ displacement; TYPE_1__ modrm; } ;

/* Variables and functions */
 int EDOM ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_TYPE_RM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct insn*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct insn*) ; 
 long FUNC3 (struct pt_regs*,int) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC5(struct insn *insn, struct pt_regs *regs,
			      int *regoff, long *eff_addr)
{
	long tmp;

	if (insn->addr_bytes != 8 && insn->addr_bytes != 4)
		return -EINVAL;

	FUNC2(insn);

	if (!insn->modrm.nbytes)
		return -EINVAL;

	if (FUNC0(insn->modrm.value) > 2)
		return -EINVAL;

	*regoff = FUNC1(insn, regs, REG_TYPE_RM);

	/*
	 * -EDOM means that we must ignore the address_offset. In such a case,
	 * in 64-bit mode the effective address relative to the rIP of the
	 * following instruction.
	 */
	if (*regoff == -EDOM) {
		if (FUNC4(regs))
			tmp = regs->ip + insn->length;
		else
			tmp = 0;
	} else if (*regoff < 0) {
		return -EINVAL;
	} else {
		tmp = FUNC3(regs, *regoff);
	}

	if (insn->addr_bytes == 4) {
		int addr32 = (int)(tmp & 0xffffffff) + insn->displacement.value;

		*eff_addr = addr32 & 0xffffffff;
	} else {
		*eff_addr = tmp + insn->displacement.value;
	}

	return 0;
}