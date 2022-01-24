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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct kvmppc_pte {int raddr; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int HW_PAGE_SIZE ; 
 int INS_DCBZ ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/ * FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, struct kvmppc_pte *pte)
{
	struct page *hpage;
	u64 hpage_offset;
	u32 *page;
	int i;

	hpage = FUNC3(vcpu->kvm, pte->raddr >> PAGE_SHIFT);
	if (FUNC4(hpage))
		return;

	hpage_offset = pte->raddr & ~PAGE_MASK;
	hpage_offset &= ~0xFFFULL;
	hpage_offset /= 4;

	FUNC2(hpage);
	page = FUNC5(hpage);

	/* patch dcbz into reserved instruction, so we trap */
	for (i=hpage_offset; i < hpage_offset + (HW_PAGE_SIZE / 4); i++)
		if ((FUNC0(page[i]) & 0xff0007ff) == INS_DCBZ)
			page[i] &= FUNC1(0xfffffff7);

	FUNC6(page);
	FUNC7(hpage);
}