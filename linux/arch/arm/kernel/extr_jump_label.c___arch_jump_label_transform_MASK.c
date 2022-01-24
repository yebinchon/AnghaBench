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
struct jump_entry {int /*<<< orphan*/  target; scalar_t__ code; } ;
typedef  enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;

/* Variables and functions */
 int JUMP_LABEL_JMP ; 
 int /*<<< orphan*/  FUNC0 (void*,unsigned int) ; 
 unsigned int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct jump_entry *entry,
					enum jump_label_type type,
					bool is_static)
{
	void *addr = (void *)entry->code;
	unsigned int insn;

	if (type == JUMP_LABEL_JMP)
		insn = FUNC1(entry->code, entry->target);
	else
		insn = FUNC2();

	if (is_static)
		FUNC0(addr, insn);
	else
		FUNC3(addr, insn);
}