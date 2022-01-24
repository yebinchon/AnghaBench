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
struct pt_regs {int pc; } ;
typedef  int insn_size_t ;

/* Variables and functions */
 unsigned int UM_FIXUP ; 
 int FUNC0 (struct pt_regs*,int,int,int,int) ; 
 int FUNC1 (struct pt_regs*,int,int,int,int) ; 
 int FUNC2 (struct pt_regs*,int,int,int,int) ; 
 int FUNC3 (struct pt_regs*,int,int,int) ; 
 int FUNC4 (int,int*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC7(struct pt_regs *regs)
{
	insn_size_t opcode;
	int error;
	int major, minor;
	unsigned int user_action;

	user_action = FUNC5();
	if (!(user_action & UM_FIXUP))
		return -1;

	error = FUNC4(regs->pc, &opcode, FUNC6(regs));
	if (error < 0) {
		return error;
	}
	major = (opcode >> 26) & 0x3f;
	minor = (opcode >> 16) & 0xf;

	switch (major) {
		case (0x84>>2): /* LD.W */
			error = FUNC2(regs, opcode, 1, 1, 1);
			break;
		case (0xb0>>2): /* LD.UW */
			error = FUNC2(regs, opcode, 1, 1, 0);
			break;
		case (0x88>>2): /* LD.L */
			error = FUNC2(regs, opcode, 1, 2, 1);
			break;
		case (0x8c>>2): /* LD.Q */
			error = FUNC2(regs, opcode, 1, 3, 0);
			break;

		case (0xa4>>2): /* ST.W */
			error = FUNC3(regs, opcode, 1, 1);
			break;
		case (0xa8>>2): /* ST.L */
			error = FUNC3(regs, opcode, 1, 2);
			break;
		case (0xac>>2): /* ST.Q */
			error = FUNC3(regs, opcode, 1, 3);
			break;

		case (0x40>>2): /* indexed loads */
			switch (minor) {
				case 0x1: /* LDX.W */
					error = FUNC2(regs, opcode, 0, 1, 1);
					break;
				case 0x5: /* LDX.UW */
					error = FUNC2(regs, opcode, 0, 1, 0);
					break;
				case 0x2: /* LDX.L */
					error = FUNC2(regs, opcode, 0, 2, 1);
					break;
				case 0x3: /* LDX.Q */
					error = FUNC2(regs, opcode, 0, 3, 0);
					break;
				default:
					error = -1;
					break;
			}
			break;

		case (0x60>>2): /* indexed stores */
			switch (minor) {
				case 0x1: /* STX.W */
					error = FUNC3(regs, opcode, 0, 1);
					break;
				case 0x2: /* STX.L */
					error = FUNC3(regs, opcode, 0, 2);
					break;
				case 0x3: /* STX.Q */
					error = FUNC3(regs, opcode, 0, 3);
					break;
				default:
					error = -1;
					break;
			}
			break;

		case (0x94>>2): /* FLD.S */
			error = FUNC0(regs, opcode, 1, 2, 0);
			break;
		case (0x98>>2): /* FLD.P */
			error = FUNC0(regs, opcode, 1, 3, 1);
			break;
		case (0x9c>>2): /* FLD.D */
			error = FUNC0(regs, opcode, 1, 3, 0);
			break;
		case (0x1c>>2): /* floating indexed loads */
			switch (minor) {
			case 0x8: /* FLDX.S */
				error = FUNC0(regs, opcode, 0, 2, 0);
				break;
			case 0xd: /* FLDX.P */
				error = FUNC0(regs, opcode, 0, 3, 1);
				break;
			case 0x9: /* FLDX.D */
				error = FUNC0(regs, opcode, 0, 3, 0);
				break;
			default:
				error = -1;
				break;
			}
			break;
		case (0xb4>>2): /* FLD.S */
			error = FUNC1(regs, opcode, 1, 2, 0);
			break;
		case (0xb8>>2): /* FLD.P */
			error = FUNC1(regs, opcode, 1, 3, 1);
			break;
		case (0xbc>>2): /* FLD.D */
			error = FUNC1(regs, opcode, 1, 3, 0);
			break;
		case (0x3c>>2): /* floating indexed stores */
			switch (minor) {
			case 0x8: /* FSTX.S */
				error = FUNC1(regs, opcode, 0, 2, 0);
				break;
			case 0xd: /* FSTX.P */
				error = FUNC1(regs, opcode, 0, 3, 1);
				break;
			case 0x9: /* FSTX.D */
				error = FUNC1(regs, opcode, 0, 3, 0);
				break;
			default:
				error = -1;
				break;
			}
			break;

		default:
			/* Fault */
			error = -1;
			break;
	}

	if (error < 0) {
		return error;
	} else {
		regs->pc += 4; /* Skip the instruction that's just been emulated */
		return 0;
	}
}