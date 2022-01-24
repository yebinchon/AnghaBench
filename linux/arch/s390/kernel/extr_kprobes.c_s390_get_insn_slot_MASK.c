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
struct TYPE_2__ {int /*<<< orphan*/ * insn; } ;
struct kprobe {TYPE_1__ ainsn; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kprobe *p)
{
	/*
	 * Get an insn slot that is within the same 2GB area like the original
	 * instruction. That way instructions with a 32bit signed displacement
	 * field can be patched and executed within the insn slot.
	 */
	p->ainsn.insn = NULL;
	if (FUNC2(p->addr))
		p->ainsn.insn = FUNC1();
	else if (FUNC3(p->addr))
		p->ainsn.insn = FUNC0();
	return p->ainsn.insn ? 0 : -ENOMEM;
}