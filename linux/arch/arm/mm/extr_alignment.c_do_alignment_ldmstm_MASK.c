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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {unsigned int ARM_pc; unsigned long* uregs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int TYPE_DONE ; 
 int TYPE_ERROR ; 
 int TYPE_FAULT ; 
 int ai_multi ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned long) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 unsigned int FUNC16 () ; 
 scalar_t__ FUNC17 (struct pt_regs*) ; 

__attribute__((used)) static int
FUNC18(unsigned long addr, u32 instr, struct pt_regs *regs)
{
	unsigned int rd, rn, correction, nr_regs, regbits;
	unsigned long eaddr, newaddr;

	if (FUNC0(instr))
		goto bad;

	correction = 4; /* processor implementation defined */
	regs->ARM_pc += correction;

	ai_multi += 1;

	/* count the number of registers in the mask to be transferred */
	nr_regs = FUNC9(FUNC5(instr)) * 4;

	rn = FUNC6(instr);
	newaddr = eaddr = regs->uregs[rn];

	if (!FUNC3(instr))
		nr_regs = -nr_regs;
	newaddr += nr_regs;
	if (!FUNC3(instr))
		eaddr = newaddr;

	if (FUNC2(instr))	/* U = P */
		eaddr += 4;

	/*
	 * For alignment faults on the ARM922T/ARM920T the MMU  makes
	 * the FSR (and hence addr) equal to the updated base address
	 * of the multiple access rather than the restored value.
	 * Switch this message off if we've got a ARM92[02], otherwise
	 * [ls]dm alignment faults are noisy!
	 */
#if !(defined CONFIG_CPU_ARM922T)  && !(defined CONFIG_CPU_ARM920T)
	/*
	 * This is a "hint" - we already have eaddr worked out by the
	 * processor for us.
	 */
	if (addr != eaddr) {
		FUNC11("LDMSTM: PC = %08lx, instr = %08x, "
			"addr = %08lx, eaddr = %08lx\n",
			 FUNC10(regs), instr, addr, eaddr);
		FUNC14(regs);
	}
#endif

	if (FUNC17(regs)) {
		unsigned int __ua_flags = FUNC16();
		for (regbits = FUNC5(instr), rd = 0; regbits;
		     regbits >>= 1, rd += 1)
			if (regbits & 1) {
				if (FUNC1(instr)) {
					unsigned int val;
					FUNC8(val, eaddr);
					regs->uregs[rd] = val;
				} else
					FUNC13(regs->uregs[rd], eaddr);
				eaddr += 4;
			}
		FUNC15(__ua_flags);
	} else {
		for (regbits = FUNC5(instr), rd = 0; regbits;
		     regbits >>= 1, rd += 1)
			if (regbits & 1) {
				if (FUNC1(instr)) {
					unsigned int val;
					FUNC7(val, eaddr);
					regs->uregs[rd] = val;
				} else
					FUNC12(regs->uregs[rd], eaddr);
				eaddr += 4;
			}
	}

	if (FUNC4(instr))
		regs->uregs[rn] = newaddr;
	if (!FUNC1(instr) || !(FUNC5(instr) & (1 << 15)))
		regs->ARM_pc -= correction;
	return TYPE_DONE;

fault:
	regs->ARM_pc -= correction;
	return TYPE_FAULT;

bad:
	FUNC11("Alignment trap: not handling ldm with s-bit set\n");
	return TYPE_ERROR;
}