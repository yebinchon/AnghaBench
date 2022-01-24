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
typedef  int /*<<< orphan*/  u64 ;
struct vcpu_svm {int /*<<< orphan*/ * avic_physical_id_cache; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline bool FUNC2(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC1(vcpu);
	u64 *entry = svm->avic_physical_id_cache;

	if (!entry)
		return false;

	return (FUNC0(*entry) & AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK);
}