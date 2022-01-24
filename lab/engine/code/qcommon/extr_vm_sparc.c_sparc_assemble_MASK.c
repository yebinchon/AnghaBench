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
struct sparc_opcode {unsigned int opcode; float* name; int* args; } ;
typedef  enum sparc_iname { ____Placeholder_sparc_iname } sparc_iname ;

/* Variables and functions */
#define  ARG_DISP22 135 
#define  ARG_DISP30 134 
#define  ARG_IMM22 133 
 int ARG_NONE ; 
#define  ARG_RD 132 
#define  ARG_RS1 131 
#define  ARG_RS2 130 
#define  ARG_SIMM13 129 
#define  ARG_SWTRAP 128 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 unsigned int FUNC6 (int) ; 
 unsigned int FUNC7 (int) ; 
 struct sparc_opcode* sparc_opcodes ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static unsigned int FUNC9(enum sparc_iname iname, const int argc, const int *argv)
{
	const struct sparc_opcode *op = &sparc_opcodes[iname];
	unsigned int insn = op->opcode;
	int i, flt, rd_flt;

	flt = (op->name[0] == 'f');
	rd_flt = flt || (op->name[2] == 'f');

	for (i = 0; op->args[i] != ARG_NONE; i++) {
		int val = argv[i];

		switch (op->args[i]) {
		case ARG_RS1: insn |= FUNC4(val); break;
		case ARG_RS2: insn |= FUNC5(val); break;
		case ARG_RD:  insn |= FUNC3(val); break;
		case ARG_SIMM13: insn |= FUNC6(val); FUNC8(val,13,0,1,i); break;
		case ARG_DISP30: insn |= FUNC1(val); FUNC8(val,30,0,1,i); break;
		case ARG_IMM22: insn |= FUNC2(val); FUNC8(val,22,0,0,i); break;
		case ARG_DISP22: insn |= FUNC0(val); FUNC8(val,22,0,1,i); break;
		case ARG_SWTRAP: insn |= FUNC7(val); FUNC8(val,7,0,0,i); break;
		}
	}

	return insn;
}