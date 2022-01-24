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
struct switch_stack {unsigned long ar_bspstore; unsigned long ar_rnat; } ;
struct pt_regs {int cr_ifs; scalar_t__ ar_bspstore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,...) ; 
 int IA64_RBS_OFFSET ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct switch_stack*,unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct switch_stack*,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (unsigned long*,unsigned long*) ; 
 unsigned long* FUNC4 (unsigned long*) ; 
 unsigned long* FUNC5 (unsigned long*,long) ; 
 unsigned long FUNC6 (unsigned long*) ; 
 long FUNC7 (long,long,long) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct pt_regs*) ; 

__attribute__((used)) static void
FUNC9 (struct pt_regs *regs, unsigned long r1, unsigned long val, int nat)
{
	struct switch_stack *sw = (struct switch_stack *) regs - 1;
	unsigned long *bsp, *bspstore, *addr, *rnat_addr, *ubs_end;
	unsigned long *kbs = (void *) current + IA64_RBS_OFFSET;
	unsigned long rnats, nat_mask;
	unsigned long on_kbs;
	long sof = (regs->cr_ifs) & 0x7f;
	long sor = 8 * ((regs->cr_ifs >> 14) & 0xf);
	long rrb_gr = (regs->cr_ifs >> 18) & 0x7f;
	long ridx = r1 - 32;

	if (ridx >= sof) {
		/* this should never happen, as the "rsvd register fault" has higher priority */
		FUNC0("ignoring write to r%lu; only %lu registers are allocated!\n", r1, sof);
		return;
	}

	if (ridx < sor)
		ridx = FUNC7(sor, rrb_gr, ridx);

	FUNC0("r%lu, sw.bspstore=%lx pt.bspstore=%lx sof=%ld sol=%ld ridx=%ld\n",
	       r1, sw->ar_bspstore, regs->ar_bspstore, sof, (regs->cr_ifs >> 7) & 0x7f, ridx);

	on_kbs = FUNC3(kbs, (unsigned long *) sw->ar_bspstore);
	addr = FUNC5((unsigned long *) sw->ar_bspstore, -sof + ridx);
	if (addr >= kbs) {
		/* the register is on the kernel backing store: easy... */
		rnat_addr = FUNC4(addr);
		if ((unsigned long) rnat_addr >= sw->ar_bspstore)
			rnat_addr = &sw->ar_rnat;
		nat_mask = 1UL << FUNC6(addr);

		*addr = val;
		if (nat)
			*rnat_addr |=  nat_mask;
		else
			*rnat_addr &= ~nat_mask;
		return;
	}

	if (!FUNC8(current, regs)) {
		FUNC0("ignoring kernel write to r%lu; register isn't on the kernel RBS!", r1);
		return;
	}

	bspstore = (unsigned long *)regs->ar_bspstore;
	ubs_end = FUNC5(bspstore, on_kbs);
	bsp     = FUNC5(ubs_end, -sof);
	addr    = FUNC5(bsp, ridx);

	FUNC0("ubs_end=%p bsp=%p addr=%p\n", (void *) ubs_end, (void *) bsp, (void *) addr);

	FUNC2(current, sw, (unsigned long) ubs_end, (unsigned long) addr, val);

	rnat_addr = FUNC4(addr);

	FUNC1(current, sw, (unsigned long) ubs_end, (unsigned long) rnat_addr, &rnats);
	FUNC0("rnat @%p = 0x%lx nat=%d old nat=%ld\n",
	       (void *) rnat_addr, rnats, nat, (rnats >> FUNC6(addr)) & 1);

	nat_mask = 1UL << FUNC6(addr);
	if (nat)
		rnats |=  nat_mask;
	else
		rnats &= ~nat_mask;
	FUNC2(current, sw, (unsigned long) ubs_end, (unsigned long) rnat_addr, rnats);

	FUNC0("rnat changed to @%p = 0x%lx\n", (void *) rnat_addr, rnats);
}