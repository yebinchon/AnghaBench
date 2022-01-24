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
typedef  int /*<<< orphan*/  u32 ;
struct jump_entry {int dummy; } ;
typedef  enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_INSN_BRANCH_NOLINK ; 
 int JUMP_LABEL_JMP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct jump_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct jump_entry*) ; 

void FUNC5(struct jump_entry *entry,
			       enum jump_label_type type)
{
	void *addr = (void *)FUNC3(entry);
	u32 insn;

	if (type == JUMP_LABEL_JMP) {
		insn = FUNC0(FUNC3(entry),
						   FUNC4(entry),
						   AARCH64_INSN_BRANCH_NOLINK);
	} else {
		insn = FUNC1();
	}

	FUNC2(addr, insn);
}