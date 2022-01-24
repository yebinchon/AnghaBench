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
typedef  int /*<<< orphan*/  u32 ;
struct vcpu_svm {scalar_t__ dfr_reg; int /*<<< orphan*/  ldr_reg; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ APIC_DFR_FLAT ; 
 int /*<<< orphan*/  AVIC_LOGICAL_ID_ENTRY_VALID_BIT ; 
 int /*<<< orphan*/ * FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC2(vcpu);
	bool flat = svm->dfr_reg == APIC_DFR_FLAT;
	u32 *entry = FUNC0(vcpu, svm->ldr_reg, flat);

	if (entry)
		FUNC1(AVIC_LOGICAL_ID_ENTRY_VALID_BIT, (unsigned long *)entry);
}