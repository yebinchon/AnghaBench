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
struct kvm_nested_guest {long refcnt; struct kvm* l1_host; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_nested_guest*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct kvm_nested_guest *gp)
{
	struct kvm *kvm = gp->l1_host;
	long ref;

	FUNC1(&kvm->mmu_lock);
	ref = --gp->refcnt;
	FUNC2(&kvm->mmu_lock);
	if (ref == 0)
		FUNC0(gp);
}