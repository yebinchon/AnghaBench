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
struct pt_regs {scalar_t__* regs; } ;
typedef  int insn_size_t ;
typedef  scalar_t__ __u64 ;
typedef  int __s64 ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COUNT_SW_EMULATION_FAULTS ; 
 scalar_t__ TASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct pt_regs*,scalar_t__) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,struct pt_regs*) ; 
 scalar_t__ FUNC10 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC11(struct pt_regs *regs,
				      insn_size_t opcode,
				      int displacement_not_indexed,
				      int width_shift,
				      __u64 *address)
{
	__u64 base_address, addr;
	int basereg;

	switch (1 << width_shift) {
	case 1: FUNC1(); break;
	case 2: FUNC6(); break;
	case 4: FUNC2(); break;
	case 8: FUNC4(); break;
	}

	basereg = (opcode >> 20) & 0x3f;
	base_address = regs->regs[basereg];
	if (displacement_not_indexed) {
		__s64 displacement;
		displacement = (opcode >> 10) & 0x3ff;
		displacement = FUNC8(displacement, 9);
		addr = (__u64)((__s64)base_address + (displacement << width_shift));
	} else {
		__u64 offset;
		int offsetreg;
		offsetreg = (opcode >> 10) & 0x3f;
		offset = regs->regs[offsetreg];
		addr = base_address + offset;
	}

	/* Check sign extended */
	if (!FUNC0(addr))
		return -1;

	/* Check accessible.  For misaligned access in the kernel, assume the
	   address is always accessible (and if not, just fault when the
	   load/store gets done.) */
	if (FUNC10(regs)) {
		FUNC5();

		if (addr >= TASK_SIZE)
			return -1;
	} else
		FUNC3();

	*address = addr;

	FUNC7(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, addr);
	FUNC9(current, opcode, regs);

	return 0;
}