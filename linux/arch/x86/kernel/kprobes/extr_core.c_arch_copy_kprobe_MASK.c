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
struct TYPE_2__ {int /*<<< orphan*/  insn; int /*<<< orphan*/  if_modifier; } ;
struct kprobe {TYPE_1__ ainsn; int /*<<< orphan*/  opcode; int /*<<< orphan*/  addr; } ;
struct insn {int dummy; } ;
typedef  int /*<<< orphan*/  kprobe_opcode_t ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_INSN_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct insn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct kprobe*,struct insn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct kprobe *p)
{
	struct insn insn;
	kprobe_opcode_t buf[MAX_INSN_SIZE];
	int len;

	/* Copy an instruction with recovering if other optprobe modifies it.*/
	len = FUNC0(buf, p->addr, p->ainsn.insn, &insn);
	if (!len)
		return -EINVAL;

	/*
	 * __copy_instruction can modify the displacement of the instruction,
	 * but it doesn't affect boostable check.
	 */
	len = FUNC2(buf, p, &insn);

	/* Check whether the instruction modifies Interrupt Flag or not */
	p->ainsn.if_modifier = FUNC1(buf);

	/* Also, displacement change doesn't affect the first byte */
	p->opcode = buf[0];

	/* OK, write back the instruction(s) into ROX insn buffer */
	FUNC3(p->ainsn.insn, buf, len);

	return 0;
}