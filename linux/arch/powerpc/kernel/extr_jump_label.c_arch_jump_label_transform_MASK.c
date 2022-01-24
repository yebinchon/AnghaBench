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
struct jump_entry {int /*<<< orphan*/  target; scalar_t__ code; } ;
typedef  enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;

/* Variables and functions */
 int JUMP_LABEL_JMP ; 
 int /*<<< orphan*/  PPC_INST_NOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct jump_entry *entry,
			       enum jump_label_type type)
{
	u32 *addr = (u32 *)(unsigned long)entry->code;

	if (type == JUMP_LABEL_JMP)
		FUNC0(addr, entry->target, 0);
	else
		FUNC1(addr, PPC_INST_NOP);
}