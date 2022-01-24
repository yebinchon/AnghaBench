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
struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct TYPE_4__ {int /*<<< orphan*/  exit_instruction; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__ stat; } ;
struct TYPE_5__ {int ipa; int /*<<< orphan*/  ipb; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 int FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct kvm_vcpu *vcpu)
{
	vcpu->stat.exit_instruction++;
	FUNC12(vcpu,
					     vcpu->arch.sie_block->ipa,
					     vcpu->arch.sie_block->ipb);

	switch (vcpu->arch.sie_block->ipa >> 8) {
	case 0x01:
		return FUNC0(vcpu);
	case 0x82:
		return FUNC9(vcpu);
	case 0x83:
		return FUNC4(vcpu);
	case 0xaa:
		return FUNC1(vcpu);
	case 0xae:
		return FUNC10(vcpu);
	case 0xb2:
		return FUNC2(vcpu);
	case 0xb6:
		return FUNC11(vcpu);
	case 0xb7:
		return FUNC8(vcpu);
	case 0xb9:
		return FUNC3(vcpu);
	case 0xe3:
		return FUNC5(vcpu);
	case 0xe5:
		return FUNC6(vcpu);
	case 0xeb:
		return FUNC7(vcpu);
	default:
		return -EOPNOTSUPP;
	}
}