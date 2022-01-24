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
struct pt_regs {int ipc; } ;

/* Variables and functions */
 int EACCES ; 
 int EFAULT ; 
 int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long*,int) ; 
 unsigned long* FUNC7 (struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (void*,unsigned long,int) ; 

__attribute__((used)) static inline int FUNC9(unsigned long inst, struct pt_regs *regs)
{
	int imm, regular, load, len, addr_mode, idx_mode;
	unsigned long unaligned_addr, target_val, source_idx, target_idx,
	    shift = 0;
	switch ((inst >> 9) & 0x3F) {

	case 0x12:		/* LHI333    */
		imm = 1;
		regular = 1;
		load = 1;
		len = 2;
		addr_mode = 3;
		idx_mode = 3;
		break;
	case 0x10:		/* LWI333    */
		imm = 1;
		regular = 1;
		load = 1;
		len = 4;
		addr_mode = 3;
		idx_mode = 3;
		break;
	case 0x11:		/* LWI333.bi */
		imm = 1;
		regular = 0;
		load = 1;
		len = 4;
		addr_mode = 3;
		idx_mode = 3;
		break;
	case 0x1A:		/* LWI450    */
		imm = 0;
		regular = 1;
		load = 1;
		len = 4;
		addr_mode = 5;
		idx_mode = 4;
		break;
	case 0x16:		/* SHI333    */
		imm = 1;
		regular = 1;
		load = 0;
		len = 2;
		addr_mode = 3;
		idx_mode = 3;
		break;
	case 0x14:		/* SWI333    */
		imm = 1;
		regular = 1;
		load = 0;
		len = 4;
		addr_mode = 3;
		idx_mode = 3;
		break;
	case 0x15:		/* SWI333.bi */
		imm = 1;
		regular = 0;
		load = 0;
		len = 4;
		addr_mode = 3;
		idx_mode = 3;
		break;
	case 0x1B:		/* SWI450    */
		imm = 0;
		regular = 1;
		load = 0;
		len = 4;
		addr_mode = 5;
		idx_mode = 4;
		break;

	default:
		return -EFAULT;
	}

	if (addr_mode == 3) {
		unaligned_addr = *FUNC7(regs, FUNC1(inst));
		source_idx = FUNC1(inst);
	} else {
		unaligned_addr = *FUNC7(regs, FUNC2(inst));
		source_idx = FUNC2(inst);
	}

	if (idx_mode == 3)
		target_idx = FUNC3(inst);
	else
		target_idx = FUNC4(inst);

	if (imm)
		shift = FUNC0(inst) * len;

	if (regular)
		unaligned_addr += shift;

	if (load) {
		if (!FUNC5((void *)unaligned_addr, len))
			return -EACCES;

		FUNC6(unaligned_addr, &target_val, len);
		*FUNC7(regs, target_idx) = target_val;
	} else {
		if (!FUNC5((void *)unaligned_addr, len))
			return -EACCES;
		target_val = *FUNC7(regs, target_idx);
		FUNC8((void *)unaligned_addr, target_val, len);
	}

	if (!regular)
		*FUNC7(regs, source_idx) = unaligned_addr + shift;
	regs->ipc += 2;

	return 0;
fault:
	return -EACCES;
}