#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {long target; int /*<<< orphan*/  opcode; } ;
union mips_instruction {int word; int* halfword; TYPE_1__ j_format; } ;
struct jump_entry {int code; int target; } ;
typedef  enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;

/* Variables and functions */
 long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CONFIG_CPU_MICROMIPS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int JUMP_LABEL_JMP ; 
 int J_ALIGN_MASK ; 
 int J_ISA_BIT ; 
 int J_RANGE_MASK ; 
 int J_RANGE_SHIFT ; 
 int MIPS_ISA_REV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  bc6_op ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  j_op ; 
 int /*<<< orphan*/  mm_j32_op ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  text_mutex ; 

void FUNC8(struct jump_entry *e,
			       enum jump_label_type type)
{
	union mips_instruction *insn_p;
	union mips_instruction insn;
	long offset;

	insn_p = (union mips_instruction *)FUNC5(e->code);

	/* Target must have the right alignment and ISA must be preserved. */
	FUNC1((e->target & J_ALIGN_MASK) != J_ISA_BIT);

	if (type == JUMP_LABEL_JMP) {
		if (!FUNC2(CONFIG_CPU_MICROMIPS) && MIPS_ISA_REV >= 6) {
			offset = e->target - ((unsigned long)insn_p + 4);
			offset >>= 2;

			/*
			 * The branch offset must fit in the instruction's 26
			 * bit field.
			 */
			FUNC3((offset >= FUNC0(25)) ||
				(offset < -(long)FUNC0(25)));

			insn.j_format.opcode = bc6_op;
			insn.j_format.target = offset;
		} else {
			/*
			 * Jump only works within an aligned region its delay
			 * slot is in.
			 */
			FUNC3((e->target & ~J_RANGE_MASK) !=
				((e->code + 4) & ~J_RANGE_MASK));

			insn.j_format.opcode = J_ISA_BIT ? mm_j32_op : j_op;
			insn.j_format.target = e->target >> J_RANGE_SHIFT;
		}
	} else {
		insn.word = 0; /* nop */
	}

	FUNC6(&text_mutex);
	if (FUNC2(CONFIG_CPU_MICROMIPS)) {
		insn_p->halfword[0] = insn.word >> 16;
		insn_p->halfword[1] = insn.word;
	} else
		*insn_p = insn;

	FUNC4((unsigned long)insn_p,
			   (unsigned long)insn_p + sizeof(*insn_p));

	FUNC7(&text_mutex);
}