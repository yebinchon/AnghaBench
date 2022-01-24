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
struct task_struct {int dummy; } ;
struct pt_regs {unsigned long cr_ifs; int loadrs; scalar_t__ ar_bspstore; } ;

/* Variables and functions */
 int IA64_RBS_OFFSET ; 
 long FUNC0 (unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC1 (unsigned long*,long) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 

unsigned long
FUNC3 (struct task_struct *child, struct pt_regs *pt,
		       unsigned long *cfmp)
{
	unsigned long *krbs, *bspstore, cfm = pt->cr_ifs;
	long ndirty;

	krbs = (unsigned long *) child + IA64_RBS_OFFSET/8;
	bspstore = (unsigned long *) pt->ar_bspstore;
	ndirty = FUNC0(krbs, krbs + (pt->loadrs >> 19));

	if (FUNC2(pt))
		ndirty += (cfm & 0x7f);
	else
		cfm &= ~(1UL << 63);	/* clear valid bit */

	if (cfmp)
		*cfmp = cfm;
	return (unsigned long) FUNC1(bspstore, ndirty);
}