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
struct kvm_svm {int /*<<< orphan*/  hnode; scalar_t__ avic_physical_id_table_page; scalar_t__ avic_logical_id_table_page; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  avic ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  svm_vm_data_hash_lock ; 
 struct kvm_svm* FUNC4 (struct kvm*) ; 

__attribute__((used)) static void FUNC5(struct kvm *kvm)
{
	unsigned long flags;
	struct kvm_svm *kvm_svm = FUNC4(kvm);

	if (!avic)
		return;

	if (kvm_svm->avic_logical_id_table_page)
		FUNC0(kvm_svm->avic_logical_id_table_page);
	if (kvm_svm->avic_physical_id_table_page)
		FUNC0(kvm_svm->avic_physical_id_table_page);

	FUNC2(&svm_vm_data_hash_lock, flags);
	FUNC1(&kvm_svm->hnode);
	FUNC3(&svm_vm_data_hash_lock, flags);
}