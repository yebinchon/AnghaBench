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
union vaddress {unsigned long addr; unsigned long px; } ;
union page_table_entry {unsigned long val; int p; scalar_t__ z; scalar_t__ i; } ;
struct kvm_vcpu {int dummy; } ;
struct gmap {TYPE_1__* mm; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int PGM_PAGE_TRANSLATION ; 
 int PGM_TRANSLATION_SPEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 
 int FUNC3 (struct gmap*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gmap*,unsigned long,unsigned long*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct gmap*,unsigned long,unsigned long*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct kvm_vcpu *vcpu, struct gmap *sg,
			  unsigned long saddr)
{
	union vaddress vaddr;
	union page_table_entry pte;
	unsigned long pgt;
	int dat_protection, fake;
	int rc;

	FUNC1(&sg->mm->mmap_sem);
	/*
	 * We don't want any guest-2 tables to change - so the parent
	 * tables/pointers we read stay valid - unshadowing is however
	 * always possible - only guest_table_lock protects us.
	 */
	FUNC5(vcpu);

	rc = FUNC4(sg, saddr, &pgt, &dat_protection, &fake);
	if (rc)
		rc = FUNC7(sg, saddr, &pgt, &dat_protection,
					    &fake);

	vaddr.addr = saddr;
	if (fake) {
		pte.val = pgt + vaddr.px * PAGE_SIZE;
		goto shadow_page;
	}
	if (!rc)
		rc = FUNC2(sg->parent, pgt + vaddr.px * 8, &pte.val);
	if (!rc && pte.i)
		rc = PGM_PAGE_TRANSLATION;
	if (!rc && pte.z)
		rc = PGM_TRANSLATION_SPEC;
shadow_page:
	pte.p |= dat_protection;
	if (!rc)
		rc = FUNC3(sg, saddr, FUNC0(pte.val));
	FUNC6(vcpu);
	FUNC8(&sg->mm->mmap_sem);
	return rc;
}