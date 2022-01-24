#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int /*<<< orphan*/  instruction_tprot; } ;
struct kvm_vcpu {TYPE_4__ arch; int /*<<< orphan*/  kvm; TYPE_1__ stat; } ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ gpsw; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GACC_FETCH ; 
 int /*<<< orphan*/  GACC_STORE ; 
 int PGM_ADDRESSING ; 
 int PGM_PRIVILEGED_OP ; 
 int PGM_PROTECTION ; 
 int PGM_TRANSLATION_SPEC ; 
 int PSW_MASK_DAT ; 
 int PSW_MASK_PSTATE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu)
{
	u64 address1, address2;
	unsigned long hva, gpa;
	int ret = 0, cc = 0;
	bool writable;
	u8 ar;

	vcpu->stat.instruction_tprot++;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC7(vcpu, PGM_PRIVILEGED_OP);

	FUNC6(vcpu, &address1, &address2, &ar, NULL);

	/* we only handle the Linux memory detection case:
	 * access key == 0
	 * everything else goes to userspace. */
	if (address2 & 0xf0)
		return -EOPNOTSUPP;
	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_DAT)
		FUNC3(vcpu);
	ret = FUNC2(vcpu, address1, ar, &gpa, GACC_STORE);
	if (ret == PGM_PROTECTION) {
		/* Write protected? Try again with read-only... */
		cc = 1;
		ret = FUNC2(vcpu, address1, ar, &gpa,
					      GACC_FETCH);
	}
	if (ret) {
		if (ret == PGM_ADDRESSING || ret == PGM_TRANSLATION_SPEC) {
			ret = FUNC7(vcpu, ret);
		} else if (ret > 0) {
			/* Translation not available */
			FUNC8(vcpu, 3);
			ret = 0;
		}
		goto out_unlock;
	}

	hva = FUNC0(vcpu->kvm, FUNC1(gpa), &writable);
	if (FUNC5(hva)) {
		ret = FUNC7(vcpu, PGM_ADDRESSING);
	} else {
		if (!writable)
			cc = 1;		/* Write not permitted ==> read-only */
		FUNC8(vcpu, cc);
		/* Note: CC2 only occurs for storage keys (not supported yet) */
	}
out_unlock:
	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_DAT)
		FUNC4(vcpu);
	return ret;
}