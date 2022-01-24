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
struct jump_entry {scalar_t__ code; scalar_t__ target; } ;
typedef  int s32 ;
typedef  enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int JUMP_LABEL_JMP ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  text_mutex ; 

void FUNC4(struct jump_entry *entry,
			       enum jump_label_type type)
{
	u32 *insn = (u32 *) (unsigned long) entry->code;
	u32 val;

	if (type == JUMP_LABEL_JMP) {
		s32 off = (s32)entry->target - (s32)entry->code;
		bool use_v9_branch = false;

		FUNC0(off & 3);

#ifdef CONFIG_SPARC64
		if (off <= 0xfffff && off >= -0x100000)
			use_v9_branch = true;
#endif
		if (use_v9_branch) {
			/* WDISP19 - target is . + immed << 2 */
			/* ba,pt %xcc, . + off */
			val = 0x10680000 | (((u32) off >> 2) & 0x7ffff);
		} else {
			/* WDISP22 - target is . + immed << 2 */
			FUNC0(off > 0x7fffff);
			FUNC0(off < -0x800000);
			/* ba . + off */
			val = 0x10800000 | (((u32) off >> 2) & 0x3fffff);
		}
	} else {
		val = 0x01000000;
	}

	FUNC2(&text_mutex);
	*insn = val;
	FUNC1(insn);
	FUNC3(&text_mutex);
}