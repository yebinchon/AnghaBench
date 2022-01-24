#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union asce {int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  psw_t ;
typedef  enum prot_type { ____Placeholder_prot_type } prot_type ;
typedef  enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;
struct TYPE_6__ {scalar_t__ dat; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpsw; } ;

/* Variables and functions */
 int GACC_STORE ; 
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 int PGM_PROTECTION ; 
 int PROT_TYPE_LA ; 
 int FUNC0 (struct kvm_vcpu*,union asce*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct kvm_vcpu*,unsigned long,unsigned long*,union asce,int,int*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC4 (struct kvm_vcpu*,unsigned long) ; 
 unsigned long FUNC5 (struct kvm_vcpu*,unsigned long) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*,union asce) ; 
 TYPE_3__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct kvm_vcpu*,int,unsigned long,int /*<<< orphan*/ ,int,int) ; 

int FUNC9(struct kvm_vcpu *vcpu, unsigned long gva, u8 ar,
			    unsigned long *gpa, enum gacc_mode mode)
{
	psw_t *psw = &vcpu->arch.sie_block->gpsw;
	enum prot_type prot;
	union asce asce;
	int rc;

	gva = FUNC4(vcpu, gva);
	rc = FUNC0(vcpu, &asce, gva, ar, mode);
	if (rc)
		return rc;
	if (FUNC2(gva) && FUNC6(vcpu, asce)) {
		if (mode == GACC_STORE)
			return FUNC8(vcpu, PGM_PROTECTION, gva, 0,
					 mode, PROT_TYPE_LA);
	}

	if (FUNC7(*psw).dat && !asce.r) {	/* Use DAT? */
		rc = FUNC1(vcpu, gva, gpa, asce, mode, &prot);
		if (rc > 0)
			return FUNC8(vcpu, rc, gva, 0, mode, prot);
	} else {
		*gpa = FUNC5(vcpu, gva);
		if (FUNC3(vcpu->kvm, *gpa))
			return FUNC8(vcpu, rc, gva, PGM_ADDRESSING, mode, 0);
	}

	return rc;
}