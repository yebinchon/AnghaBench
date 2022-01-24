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
typedef  int u64 ;
struct vcpu_svm {int /*<<< orphan*/ * avic_physical_id_cache; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 struct vcpu_svm* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu)
{
	u64 entry;
	struct vcpu_svm *svm = FUNC4(vcpu);

	if (!FUNC3(vcpu))
		return;

	entry = FUNC0(*(svm->avic_physical_id_cache));
	if (entry & AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK)
		FUNC2(vcpu, -1, 0);

	entry &= ~AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK;
	FUNC1(*(svm->avic_physical_id_cache), entry);
}