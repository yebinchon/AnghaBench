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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long*,int) ; 
 unsigned long* FUNC8 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,unsigned long,int) ; 
 unsigned long FUNC10 (unsigned long,int) ; 

__attribute__((used)) static inline int FUNC11(unsigned long inst, struct pt_regs *regs)
{
	int imm, regular, load, len, sign_ext;
	unsigned long unaligned_addr, target_val, shift;

	unaligned_addr = *FUNC8(regs, FUNC2(inst));

	switch ((inst >> 25) << 1) {

	case 0x02:		/* LHI       */
		imm = 1;
		regular = 1;
		load = 1;
		len = 2;
		sign_ext = 0;
		break;
	case 0x0A:		/* LHI.bi    */
		imm = 1;
		regular = 0;
		load = 1;
		len = 2;
		sign_ext = 0;
		break;
	case 0x22:		/* LHSI      */
		imm = 1;
		regular = 1;
		load = 1;
		len = 2;
		sign_ext = 1;
		break;
	case 0x2A:		/* LHSI.bi   */
		imm = 1;
		regular = 0;
		load = 1;
		len = 2;
		sign_ext = 1;
		break;
	case 0x04:		/* LWI       */
		imm = 1;
		regular = 1;
		load = 1;
		len = 4;
		sign_ext = 0;
		break;
	case 0x0C:		/* LWI.bi    */
		imm = 1;
		regular = 0;
		load = 1;
		len = 4;
		sign_ext = 0;
		break;
	case 0x12:		/* SHI       */
		imm = 1;
		regular = 1;
		load = 0;
		len = 2;
		sign_ext = 0;
		break;
	case 0x1A:		/* SHI.bi    */
		imm = 1;
		regular = 0;
		load = 0;
		len = 2;
		sign_ext = 0;
		break;
	case 0x14:		/* SWI       */
		imm = 1;
		regular = 1;
		load = 0;
		len = 4;
		sign_ext = 0;
		break;
	case 0x1C:		/* SWI.bi    */
		imm = 1;
		regular = 0;
		load = 0;
		len = 4;
		sign_ext = 0;
		break;

	default:
		switch (inst & 0xff) {

		case 0x01:	/* LH        */
			imm = 0;
			regular = 1;
			load = 1;
			len = 2;
			sign_ext = 0;
			break;
		case 0x05:	/* LH.bi     */
			imm = 0;
			regular = 0;
			load = 1;
			len = 2;
			sign_ext = 0;
			break;
		case 0x11:	/* LHS       */
			imm = 0;
			regular = 1;
			load = 1;
			len = 2;
			sign_ext = 1;
			break;
		case 0x15:	/* LHS.bi    */
			imm = 0;
			regular = 0;
			load = 1;
			len = 2;
			sign_ext = 1;
			break;
		case 0x02:	/* LW        */
			imm = 0;
			regular = 1;
			load = 1;
			len = 4;
			sign_ext = 0;
			break;
		case 0x06:	/* LW.bi     */
			imm = 0;
			regular = 0;
			load = 1;
			len = 4;
			sign_ext = 0;
			break;
		case 0x09:	/* SH        */
			imm = 0;
			regular = 1;
			load = 0;
			len = 2;
			sign_ext = 0;
			break;
		case 0x0D:	/* SH.bi     */
			imm = 0;
			regular = 0;
			load = 0;
			len = 2;
			sign_ext = 0;
			break;
		case 0x0A:	/* SW        */
			imm = 0;
			regular = 1;
			load = 0;
			len = 4;
			sign_ext = 0;
			break;
		case 0x0E:	/* SW.bi     */
			imm = 0;
			regular = 0;
			load = 0;
			len = 4;
			sign_ext = 0;
			break;

		default:
			return -EFAULT;
		}
	}

	if (imm)
		shift = FUNC0(FUNC1(inst)) * len;
	else
		shift = *FUNC8(regs, FUNC3(inst)) << FUNC5(inst);

	if (regular)
		unaligned_addr += shift;

	if (load) {

		if (!FUNC6((void *)unaligned_addr, len))
			return -EACCES;

		FUNC7(unaligned_addr, &target_val, len);

		if (sign_ext)
			*FUNC8(regs, FUNC4(inst)) =
			    FUNC10(target_val, len);
		else
			*FUNC8(regs, FUNC4(inst)) = target_val;
	} else {

		if (!FUNC6((void *)unaligned_addr, len))
			return -EACCES;

		target_val = *FUNC8(regs, FUNC4(inst));
		FUNC9((void *)unaligned_addr, target_val, len);
	}

	if (!regular)
		*FUNC8(regs, FUNC2(inst)) = unaligned_addr + shift;

	regs->ipc += 4;

	return 0;
fault:
	return -EACCES;
}