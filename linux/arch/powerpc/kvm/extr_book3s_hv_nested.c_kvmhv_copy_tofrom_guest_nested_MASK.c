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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_nested_guest {int /*<<< orphan*/  tlb_lock; int /*<<< orphan*/  shadow_lpid; } ;
typedef  int gva_t ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 long H_NOT_FOUND ; 
 long H_NO_MEM ; 
 long H_PARAMETER ; 
 long FUNC0 (int /*<<< orphan*/ ,int,int,void*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 long FUNC2 (struct kvm_vcpu*,scalar_t__,void*,unsigned long) ; 
 long FUNC3 (struct kvm_vcpu*,scalar_t__,void*,unsigned long) ; 
 struct kvm_nested_guest* FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_nested_guest*) ; 
 void* FUNC6 (struct kvm_vcpu*,int) ; 
 void* FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

long FUNC10(struct kvm_vcpu *vcpu)
{
	struct kvm_nested_guest *gp;
	int l1_lpid = FUNC6(vcpu, 4);
	int pid = FUNC6(vcpu, 5);
	gva_t eaddr = FUNC6(vcpu, 6);
	gpa_t gp_to = (gpa_t) FUNC6(vcpu, 7);
	gpa_t gp_from = (gpa_t) FUNC6(vcpu, 8);
	void *buf;
	unsigned long n = FUNC6(vcpu, 9);
	bool is_load = !!gp_to;
	long rc;

	if (gp_to && gp_from) /* One must be NULL to determine the direction */
		return H_PARAMETER;

	if (eaddr & (0xFFFUL << 52))
		return H_PARAMETER;

	buf = FUNC7(n, GFP_KERNEL);
	if (!buf)
		return H_NO_MEM;

	gp = FUNC4(vcpu->kvm, l1_lpid, false);
	if (!gp) {
		rc = H_PARAMETER;
		goto out_free;
	}

	FUNC8(&gp->tlb_lock);

	if (is_load) {
		/* Load from the nested guest into our buffer */
		rc = FUNC0(gp->shadow_lpid, pid,
						     eaddr, buf, NULL, n);
		if (rc)
			goto not_found;

		/* Write what was loaded into our buffer back to the L1 guest */
		rc = FUNC3(vcpu, gp_to, buf, n);
		if (rc)
			goto not_found;
	} else {
		/* Load the data to be stored from the L1 guest into our buf */
		rc = FUNC2(vcpu, gp_from, buf, n);
		if (rc)
			goto not_found;

		/* Store from our buffer into the nested guest */
		rc = FUNC0(gp->shadow_lpid, pid,
						     eaddr, NULL, buf, n);
		if (rc)
			goto not_found;
	}

out_unlock:
	FUNC9(&gp->tlb_lock);
	FUNC5(gp);
out_free:
	FUNC1(buf);
	return rc;
not_found:
	rc = H_NOT_FOUND;
	goto out_unlock;
}