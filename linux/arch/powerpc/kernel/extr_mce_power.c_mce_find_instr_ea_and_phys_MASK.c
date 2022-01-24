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
typedef  unsigned long uint64_t ;
struct pt_regs {unsigned long nip; } ;
struct instruction_op {unsigned long ea; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long ULONG_MAX ; 
 unsigned long FUNC0 (struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct instruction_op*,struct pt_regs*,int) ; 

__attribute__((used)) static int FUNC2(struct pt_regs *regs, uint64_t *addr,
					uint64_t *phys_addr)
{
	/*
	 * Carefully look at the NIP to determine
	 * the instruction to analyse. Reading the NIP
	 * in real-mode is tricky and can lead to recursive
	 * faults
	 */
	int instr;
	unsigned long pfn, instr_addr;
	struct instruction_op op;
	struct pt_regs tmp = *regs;

	pfn = FUNC0(regs, regs->nip);
	if (pfn != ULONG_MAX) {
		instr_addr = (pfn << PAGE_SHIFT) + (regs->nip & ~PAGE_MASK);
		instr = *(unsigned int *)(instr_addr);
		if (!FUNC1(&op, &tmp, instr)) {
			pfn = FUNC0(regs, op.ea);
			*addr = op.ea;
			*phys_addr = (pfn << PAGE_SHIFT);
			return 0;
		}
		/*
		 * analyse_instr() might fail if the instruction
		 * is not a load/store, although this is unexpected
		 * for load/store errors or if we got the NIP
		 * wrong
		 */
	}
	*addr = 0;
	return -1;
}