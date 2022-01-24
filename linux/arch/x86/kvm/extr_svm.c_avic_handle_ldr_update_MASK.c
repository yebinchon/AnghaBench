#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct vcpu_svm {scalar_t__ ldr_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_LDR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu)
{
	int ret = 0;
	struct vcpu_svm *svm = FUNC4(vcpu);
	u32 ldr = FUNC2(vcpu->arch.apic, APIC_LDR);
	u32 id = FUNC3(vcpu->arch.apic);

	if (ldr == svm->ldr_reg)
		return 0;

	FUNC0(vcpu);

	if (ldr)
		ret = FUNC1(vcpu, id, ldr);

	if (!ret)
		svm->ldr_reg = ldr;

	return ret;
}