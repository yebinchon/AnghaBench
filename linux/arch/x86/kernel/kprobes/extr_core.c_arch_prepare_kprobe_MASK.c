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
struct kprobe {TYPE_1__ ainsn; scalar_t__ addr; } ;

/* Variables and functions */
 int EILSEQ ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

int FUNC5(struct kprobe *p)
{
	int ret;

	if (FUNC0(p->addr, p->addr))
		return -EINVAL;

	if (!FUNC2((unsigned long)p->addr))
		return -EILSEQ;
	/* insn: must be on special executable page on x86. */
	p->ainsn.insn = FUNC4();
	if (!p->ainsn.insn)
		return -ENOMEM;

	ret = FUNC1(p);
	if (ret) {
		FUNC3(p->ainsn.insn, 0);
		p->ainsn.insn = NULL;
	}

	return ret;
}