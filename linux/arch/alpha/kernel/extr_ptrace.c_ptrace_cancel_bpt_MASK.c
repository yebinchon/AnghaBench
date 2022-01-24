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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int bpt_nsaved; int /*<<< orphan*/ * bpt_insn; int /*<<< orphan*/ * bpt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct task_struct * child)
{
	int i, nsaved = FUNC1(child)->bpt_nsaved;

	FUNC1(child)->bpt_nsaved = 0;

	if (nsaved > 2) {
		FUNC0("ptrace_cancel_bpt: bogus nsaved: %d!\n", nsaved);
		nsaved = 2;
	}

	for (i = 0; i < nsaved; ++i) {
		FUNC2(child, FUNC1(child)->bpt_addr[i],
			  FUNC1(child)->bpt_insn[i]);
	}
	return (nsaved != 0);
}