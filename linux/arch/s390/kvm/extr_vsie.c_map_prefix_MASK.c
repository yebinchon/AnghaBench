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
struct kvm_s390_sie_block {int prefix; int mso; int ecb; } ;
struct vsie_page {int /*<<< orphan*/  gmap; struct kvm_s390_sie_block scb_s; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ECB_TE ; 
 int EFAULT ; 
 int GUEST_PREFIX_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct vsie_page*) ; 
 int /*<<< orphan*/  FUNC2 (struct vsie_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct vsie_page*) ; 
 int FUNC4 (struct kvm_s390_sie_block*,int) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
	struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
	u64 prefix = scb_s->prefix << GUEST_PREFIX_SHIFT;
	int rc;

	if (FUNC1(vsie_page))
		return 0;

	/* mark it as mapped so we can catch any concurrent unmappers */
	FUNC2(vsie_page);

	/* with mso/msl, the prefix lies at offset *mso* */
	prefix += scb_s->mso;

	rc = FUNC0(vcpu, vsie_page->gmap, prefix);
	if (!rc && (scb_s->ecb & ECB_TE))
		rc = FUNC0(vcpu, vsie_page->gmap,
					   prefix + PAGE_SIZE);
	/*
	 * We don't have to mprotect, we will be called for all unshadows.
	 * SIE will detect if protection applies and trigger a validity.
	 */
	if (rc)
		FUNC3(vsie_page);
	if (rc > 0 || rc == -EFAULT)
		rc = FUNC4(scb_s, 0x0037U);
	return rc;
}