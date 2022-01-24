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
struct kgdb_bkpt {scalar_t__ bpt_addr; scalar_t__ saved_instr; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (unsigned int*,unsigned int) ; 

int FUNC1(struct kgdb_bkpt *bpt)
{
	int err;
	unsigned int instr = *(unsigned int *)bpt->saved_instr;
	unsigned int *addr = (unsigned int *)bpt->bpt_addr;

	err = FUNC0(addr, instr);
	if (err)
		return -EFAULT;

	return 0;
}