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
typedef  int /*<<< orphan*/  kprobe_opcode_t ;

/* Variables and functions */
 unsigned long PPC_INST_ADDIS ; 
 unsigned long PPC_INST_ORI ; 
 unsigned long PPC_INST_ORIS ; 
 unsigned long PPC_INST_RLDICR ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 unsigned long FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(unsigned long val, kprobe_opcode_t *addr)
{
	/* lis r3,(op)@highest */
	FUNC5(addr, PPC_INST_ADDIS | FUNC4(3) |
			  ((val >> 48) & 0xffff));
	addr++;

	/* ori r3,r3,(op)@higher */
	FUNC5(addr, PPC_INST_ORI | FUNC2(3) |
			  FUNC3(3) | ((val >> 32) & 0xffff));
	addr++;

	/* rldicr r3,r3,32,31 */
	FUNC5(addr, PPC_INST_RLDICR | FUNC2(3) |
			  FUNC3(3) | FUNC1(32) | FUNC0(31));
	addr++;

	/* oris r3,r3,(op)@h */
	FUNC5(addr, PPC_INST_ORIS | FUNC2(3) |
			  FUNC3(3) | ((val >> 16) & 0xffff));
	addr++;

	/* ori r3,r3,(op)@l */
	FUNC5(addr, PPC_INST_ORI | FUNC2(3) |
			  FUNC3(3) | (val & 0xffff));
}