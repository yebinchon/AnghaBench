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
struct TYPE_8__ {int /*<<< orphan*/  diagnose_other; } ;
struct TYPE_7__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_4__ stat; TYPE_3__ arch; } ;
struct TYPE_5__ {int mask; } ;
struct TYPE_6__ {TYPE_1__ gpsw; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int PSW_MASK_PSTATE ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int) ; 

int FUNC9(struct kvm_vcpu *vcpu)
{
	int code = FUNC6(vcpu, NULL) & 0xffff;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC7(vcpu, PGM_PRIVILEGED_OP);

	FUNC8(vcpu, code);
	switch (code) {
	case 0x10:
		return FUNC5(vcpu);
	case 0x44:
		return FUNC2(vcpu);
	case 0x9c:
		return FUNC3(vcpu);
	case 0x258:
		return FUNC1(vcpu);
	case 0x308:
		return FUNC0(vcpu);
	case 0x500:
		return FUNC4(vcpu);
	default:
		vcpu->stat.diagnose_other++;
		return -EOPNOTSUPP;
	}
}