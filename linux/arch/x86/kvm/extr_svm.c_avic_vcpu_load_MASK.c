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
struct vcpu_svm {scalar_t__ avic_is_running; int /*<<< orphan*/ * avic_physical_id_cache; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK ; 
 int AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int,scalar_t__) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 struct vcpu_svm* FUNC6 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu, int cpu)
{
	u64 entry;
	/* ID = 0xff (broadcast), ID > 0xff (reserved) */
	int h_physical_id = FUNC4(cpu);
	struct vcpu_svm *svm = FUNC6(vcpu);

	if (!FUNC5(vcpu))
		return;

	/*
	 * Since the host physical APIC id is 8 bits,
	 * we can support host APIC ID upto 255.
	 */
	if (FUNC1(h_physical_id > AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK))
		return;

	entry = FUNC0(*(svm->avic_physical_id_cache));
	FUNC1(entry & AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK);

	entry &= ~AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK;
	entry |= (h_physical_id & AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK);

	entry &= ~AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK;
	if (svm->avic_is_running)
		entry |= AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK;

	FUNC2(*(svm->avic_physical_id_cache), entry);
	FUNC3(vcpu, h_physical_id,
					svm->avic_is_running);
}