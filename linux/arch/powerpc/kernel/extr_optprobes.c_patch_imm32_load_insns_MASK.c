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
 unsigned int PPC_INST_ADDIS ; 
 unsigned int PPC_INST_ORI ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

void FUNC4(unsigned int val, kprobe_opcode_t *addr)
{
	/* addis r4,0,(insn)@h */
	FUNC3(addr, PPC_INST_ADDIS | FUNC2(4) |
			  ((val >> 16) & 0xffff));
	addr++;

	/* ori r4,r4,(insn)@l */
	FUNC3(addr, PPC_INST_ORI | FUNC0(4) |
			  FUNC1(4) | (val & 0xffff));
}