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
struct TYPE_3__ {scalar_t__ pio_data; int /*<<< orphan*/  mce_banks; } ;
struct kvm_vcpu {TYPE_1__ arch; TYPE_2__* kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  kvm_no_apic_vcpu ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct kvm_vcpu *vcpu)
{
	int idx;

	FUNC3(vcpu);
	FUNC5(vcpu);
	FUNC1(vcpu->arch.mce_banks);
	FUNC2(vcpu);
	idx = FUNC7(&vcpu->kvm->srcu);
	FUNC4(vcpu);
	FUNC8(&vcpu->kvm->srcu, idx);
	FUNC0((unsigned long)vcpu->arch.pio_data);
	if (!FUNC6(vcpu))
		FUNC9(&kvm_no_apic_vcpu);
}