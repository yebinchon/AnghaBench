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
typedef  int u32 ;
struct jump_entry {int dummy; } ;
typedef  enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INSN_NOP ; 
 int JUMP_LABEL_JMP ; 
 scalar_t__ FUNC1 (struct jump_entry*) ; 
 scalar_t__ FUNC2 (struct jump_entry*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int FUNC4 (int) ; 

void FUNC5(struct jump_entry *entry,
			       enum jump_label_type type)
{
	void *addr = (void *)FUNC1(entry);
	u32 insn;

	if (type == JUMP_LABEL_JMP) {
		void *target = (void *)FUNC2(entry);
		int distance = target - addr;
		/*
		 * Encode the PA1.1 "b,n" instruction with a 17-bit
		 * displacement.  In case we hit the BUG(), we could use
		 * another branch instruction with a 22-bit displacement on
		 * 64-bit CPUs instead. But this seems sufficient for now.
		 */
		distance -= 8;
		FUNC0(distance > 262143 || distance < -262144);
		insn = 0xe8000002 | FUNC4(distance >> 2);
	} else {
		insn = INSN_NOP;
	}

	FUNC3(addr, insn);
}