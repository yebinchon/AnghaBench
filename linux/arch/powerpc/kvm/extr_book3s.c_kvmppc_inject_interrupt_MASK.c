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
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset_msr ) (struct kvm_vcpu*) ;} ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 

void FUNC8(struct kvm_vcpu *vcpu, int vec, u64 flags)
{
	FUNC6(vcpu);
	FUNC4(vcpu, FUNC1(vcpu));
	FUNC5(vcpu, (FUNC0(vcpu) & ~0x783f0000ul) | flags);
	FUNC3(vcpu, FUNC2(vcpu) + vec);
	vcpu->arch.mmu.reset_msr(vcpu);
}