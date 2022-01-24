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
typedef  int instr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MEM_OFF ; 
 int MEM_REG ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,...) ; 
 int /*<<< orphan*/ * reg_name ; 

__attribute__((used)) static instr *
FUNC3(instr * pro_pc, unsigned char * sp)
{
	instr * ret_pc = 0;
	int reg;
	unsigned long value;

	FUNC2("Prologue [<%p>], Frame %p:\n", pro_pc, sp);
	while (!FUNC0(*pro_pc))
		if (FUNC1(*pro_pc)) {
			reg = (*pro_pc & MEM_REG) >> 21;
			value = *(unsigned long *)(sp + (*pro_pc & MEM_OFF));
			if (reg == 26)
				ret_pc = (instr *)value;
			FUNC2("\t\t%s / 0x%016lx\n", &reg_name[reg], value);
		}
	return ret_pc;
}