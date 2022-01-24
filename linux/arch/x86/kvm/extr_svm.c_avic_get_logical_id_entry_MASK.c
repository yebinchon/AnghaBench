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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_svm {int /*<<< orphan*/  avic_logical_id_table_page; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct kvm_svm* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 *FUNC4(struct kvm_vcpu *vcpu, u32 ldr, bool flat)
{
	struct kvm_svm *kvm_svm = FUNC3(vcpu->kvm);
	int index;
	u32 *logical_apic_id_table;
	int dlid = FUNC0(ldr);

	if (!dlid)
		return NULL;

	if (flat) { /* flat */
		index = FUNC1(dlid) - 1;
		if (index > 7)
			return NULL;
	} else { /* cluster */
		int cluster = (dlid & 0xf0) >> 4;
		int apic = FUNC1(dlid & 0x0f) - 1;

		if ((apic < 0) || (apic > 7) ||
		    (cluster >= 0xf))
			return NULL;
		index = (cluster << 2) + apic;
	}

	logical_apic_id_table = (u32 *) FUNC2(kvm_svm->avic_logical_id_table_page);

	return &logical_apic_id_table[index];
}