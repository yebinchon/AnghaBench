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
typedef  int ulong ;
typedef  int uint32_t ;
struct TYPE_2__ {int magic_page_pa; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int KVM_PAM ; 
 int MSR_SF ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu, gpa_t gpa)
{
	ulong mp_pa = vcpu->arch.magic_page_pa;

	if (!(FUNC1(vcpu) & MSR_SF))
		mp_pa = (uint32_t)mp_pa;

	gpa &= ~0xFFFULL;
	if (FUNC2(mp_pa) && FUNC2((mp_pa & KVM_PAM) == (gpa & KVM_PAM))) {
		return true;
	}

	return FUNC0(vcpu->kvm, gpa >> PAGE_SHIFT);
}