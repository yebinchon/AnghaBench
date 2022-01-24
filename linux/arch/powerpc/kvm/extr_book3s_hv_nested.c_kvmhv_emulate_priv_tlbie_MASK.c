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
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned long) ; 
 long FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,struct kvm_nested_guest*,int) ; 
 int FUNC9 (struct kvm_vcpu*,int,int,long) ; 
 struct kvm_nested_guest* FUNC10 (struct kvm*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_nested_guest*) ; 

__attribute__((used)) static int FUNC12(struct kvm_vcpu *vcpu, unsigned int instr,
				    unsigned long rsval, unsigned long rbval)
{
	struct kvm *kvm = vcpu->kvm;
	struct kvm_nested_guest *gp;
	int r, ric, prs, is, ap;
	int lpid;
	long epn;
	int ret = 0;

	ric = FUNC6(instr);
	prs = FUNC4(instr);
	r = FUNC5(instr);
	lpid = FUNC3(rsval);
	is = FUNC2(rbval);

	/*
	 * These cases are invalid and are not handled:
	 * r   != 1 -> Only radix supported
	 * prs == 1 -> Not HV privileged
	 * ric == 3 -> No cluster bombs for radix
	 * is  == 1 -> Partition scoped translations not associated with pid
	 * (!is) && (ric == 1 || ric == 2) -> Not supported by ISA
	 */
	if ((!r) || (prs) || (ric == 3) || (is == 1) ||
	    ((!is) && (ric == 1 || ric == 2)))
		return -EINVAL;

	switch (is) {
	case 0:
		/*
		 * We know ric == 0
		 * Invalidate TLB for a given target address
		 */
		epn = FUNC1(rbval);
		ap = FUNC0(rbval);
		ret = FUNC9(vcpu, lpid, ap, epn);
		break;
	case 2:
		/* Invalidate matching LPID */
		gp = FUNC10(kvm, lpid, false);
		if (gp) {
			FUNC8(vcpu, gp, ric);
			FUNC11(gp);
		}
		break;
	case 3:
		/* Invalidate ALL LPIDs */
		FUNC7(vcpu, ric);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}