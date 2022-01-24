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
struct kvm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 long H_RESOURCE ; 
 long H_TOO_HARD ; 
 TYPE_2__* current ; 
 long FUNC0 (struct kvm*,unsigned long,long,unsigned long,unsigned long,int /*<<< orphan*/ ,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static long FUNC4(struct kvm *kvm, unsigned long flags,
				long pte_index, unsigned long pteh,
				unsigned long ptel, unsigned long *pte_idx_ret)
{
	long ret;

	/* Protect linux PTE lookup from page table destruction */
	FUNC2();	/* this disables preemption too */
	ret = FUNC0(kvm, flags, pte_index, pteh, ptel,
				current->mm->pgd, false, pte_idx_ret);
	FUNC3();
	if (ret == H_TOO_HARD) {
		/* this can't happen */
		FUNC1("KVM: Oops, kvmppc_h_enter returned too hard!\n");
		ret = H_RESOURCE;	/* or something */
	}
	return ret;

}