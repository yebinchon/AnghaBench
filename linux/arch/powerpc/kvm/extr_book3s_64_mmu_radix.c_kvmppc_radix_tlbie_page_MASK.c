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
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  H_TLB_INVALIDATE ; 
 unsigned int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (int) ; 
 long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned long,unsigned long) ; 
 int FUNC7 (unsigned int) ; 

void FUNC8(struct kvm *kvm, unsigned long addr,
			     unsigned int pshift, unsigned int lpid)
{
	unsigned long psize = PAGE_SIZE;
	int psi;
	long rc;
	unsigned long rb;

	if (pshift)
		psize = 1UL << pshift;
	else
		pshift = PAGE_SHIFT;

	addr &= ~(psize - 1);

	if (!FUNC2()) {
		FUNC6(lpid, addr, psize);
		return;
	}

	psi = FUNC7(pshift);
	rb = addr | (FUNC3(psi) << FUNC1(58));
	rc = FUNC4(H_TLB_INVALIDATE, FUNC0(0, 0, 1),
				lpid, rb);
	if (rc)
		FUNC5("KVM: TLB page invalidation hcall failed, rc=%ld\n", rc);
}