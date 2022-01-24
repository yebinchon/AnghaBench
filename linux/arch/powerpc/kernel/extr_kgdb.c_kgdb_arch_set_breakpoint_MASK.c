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
struct kgdb_bkpt {scalar_t__ saved_instr; scalar_t__ bpt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_INSTR ; 
 int EFAULT ; 
 int FUNC0 (unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int*,unsigned int) ; 

int FUNC2(struct kgdb_bkpt *bpt)
{
	int err;
	unsigned int instr;
	unsigned int *addr = (unsigned int *)bpt->bpt_addr;

	err = FUNC1(addr, instr);
	if (err)
		return err;

	err = FUNC0(addr, BREAK_INSTR);
	if (err)
		return -EFAULT;

	*(unsigned int *)bpt->saved_instr = instr;

	return 0;
}