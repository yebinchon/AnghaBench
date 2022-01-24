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
struct insn_group {int count; int offset; TYPE_1__* type; int /*<<< orphan*/  opcode; } ;
struct insn {TYPE_1__* type; int /*<<< orphan*/  opcode; } ;
struct gen_opcode {int nr_groups; struct insn_group* group; } ;
struct TYPE_2__ {scalar_t__ byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct insn_group* FUNC2 (struct insn_group*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct gen_opcode *desc, struct insn *insn, int offset)
{
	struct insn_group *group;

	group = desc->group ? &desc->group[desc->nr_groups - 1] : NULL;
	if (group && (!FUNC3(group->opcode, insn->opcode, 2) || group->type->byte == 0)) {
		group->count++;
		return;
	}
	desc->nr_groups++;
	desc->group = FUNC2(desc->group, desc->nr_groups * sizeof(*desc->group));
	if (!desc->group)
		FUNC0(EXIT_FAILURE);
	group = &desc->group[desc->nr_groups - 1];
	FUNC1(group->opcode, insn->opcode, 2);
	group->type = insn->type;
	group->offset = offset;
	group->count = 1;
}