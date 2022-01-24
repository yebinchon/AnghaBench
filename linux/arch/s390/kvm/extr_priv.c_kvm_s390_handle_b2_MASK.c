#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int ipa; } ;

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
 int FUNC12 (struct kvm_vcpu*) ; 
 int FUNC13 (struct kvm_vcpu*) ; 
 int FUNC14 (struct kvm_vcpu*) ; 
 int FUNC15 (struct kvm_vcpu*) ; 
 int FUNC16 (struct kvm_vcpu*) ; 

int FUNC17(struct kvm_vcpu *vcpu)
{
	switch (vcpu->arch.sie_block->ipa & 0x00ff) {
	case 0x02:
		return FUNC11(vcpu);
	case 0x04:
		return FUNC6(vcpu);
	case 0x10:
		return FUNC7(vcpu);
	case 0x11:
		return FUNC13(vcpu);
	case 0x12:
		return FUNC12(vcpu);
	case 0x14:
		return FUNC16(vcpu);
	case 0x21:
	case 0x50:
		return FUNC1(vcpu);
	case 0x29:
		return FUNC2(vcpu);
	case 0x2a:
		return FUNC5(vcpu);
	case 0x2b:
		return FUNC8(vcpu);
	case 0x2c:
		return FUNC15(vcpu);
	case 0x30:
	case 0x31:
	case 0x32:
	case 0x33:
	case 0x34:
	case 0x35:
	case 0x36:
	case 0x37:
	case 0x38:
	case 0x39:
	case 0x3a:
	case 0x3b:
	case 0x3c:
	case 0x5f:
	case 0x74:
	case 0x76:
		return FUNC0(vcpu);
	case 0x56:
		return FUNC10(vcpu);
	case 0x7d:
		return FUNC14(vcpu);
	case 0xaf:
		return FUNC4(vcpu);
	case 0xb1:
		return FUNC9(vcpu);
	case 0xb2:
		return FUNC3(vcpu);
	default:
		return -EOPNOTSUPP;
	}
}