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
struct pt_regs {int dummy; } ;
struct fpustate {int dummy; } ;
struct TYPE_2__ {unsigned long* gsr; } ;

/* Variables and functions */
 struct fpustate* FPUSTATE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__* FUNC3 () ; 
 unsigned long* FUNC4 (struct fpustate*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (struct fpustate*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs, unsigned int insn)
{
	struct fpustate *f = FPUSTATE;
	unsigned long rs1, rs2, rd_val;
	unsigned long bmask, i;

	bmask = FUNC3()->gsr[0] >> 32UL;

	rs1 = FUNC5(f, FUNC1(insn));
	rs2 = FUNC5(f, FUNC2(insn));

	rd_val = 0UL;
	for (i = 0; i < 8; i++) {
		unsigned long which = (bmask >> (i * 4)) & 0xf;
		unsigned long byte;

		if (which < 8)
			byte = (rs1 >> (which * 8)) & 0xff;
		else
			byte = (rs2 >> ((which-8)*8)) & 0xff;
		rd_val |= (byte << (i * 8));
	}

	*FUNC4(f, FUNC0(insn)) = rd_val;
}