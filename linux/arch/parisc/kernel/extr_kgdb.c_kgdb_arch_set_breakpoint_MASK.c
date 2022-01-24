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
struct kgdb_bkpt {scalar_t__ bpt_addr; int /*<<< orphan*/  saved_instr; } ;
struct TYPE_2__ {int /*<<< orphan*/  gdb_bpt_instr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_INSTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,unsigned int) ; 
 TYPE_1__ arch_kgdb_ops ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC2(struct kgdb_bkpt *bpt)
{
	int ret = FUNC1(bpt->saved_instr, (char *)bpt->bpt_addr,
				BREAK_INSTR_SIZE);
	if (ret)
		return ret;

	FUNC0((void *)bpt->bpt_addr,
			*(unsigned int *)&arch_kgdb_ops.gdb_bpt_instr);
	return ret;
}