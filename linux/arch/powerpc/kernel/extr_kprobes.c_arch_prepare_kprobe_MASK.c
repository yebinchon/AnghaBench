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
struct TYPE_2__ {scalar_t__ boostable; scalar_t__ insn; } ;
struct kprobe {TYPE_1__ ainsn; int /*<<< orphan*/ * addr; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  kprobe_opcode_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_INSN_SIZE ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct kprobe *p)
{
	int ret = 0;
	kprobe_opcode_t insn = *p->addr;

	if ((unsigned long)p->addr & 0x03) {
		FUNC6("Attempt to register kprobe at an unaligned address\n");
		ret = -EINVAL;
	} else if (FUNC0(insn) || FUNC2(insn) || FUNC1(insn)) {
		FUNC6("Cannot register a kprobe on rfi/rfid or mtmsr[d]\n");
		ret = -EINVAL;
	}

	/* insn must be on a special executable page on ppc64.  This is
	 * not explicitly required on ppc32 (right now), but it doesn't hurt */
	if (!ret) {
		p->ainsn.insn = FUNC4();
		if (!p->ainsn.insn)
			ret = -ENOMEM;
	}

	if (!ret) {
		FUNC5(p->ainsn.insn, p->addr,
				MAX_INSN_SIZE * sizeof(kprobe_opcode_t));
		p->opcode = *p->addr;
		FUNC3((unsigned long)p->ainsn.insn,
			(unsigned long)p->ainsn.insn + sizeof(kprobe_opcode_t));
	}

	p->ainsn.boostable = 0;
	return ret;
}