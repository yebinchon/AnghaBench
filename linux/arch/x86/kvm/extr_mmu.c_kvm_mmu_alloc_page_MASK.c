#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mmu_page_cache; int /*<<< orphan*/  mmu_page_header_cache; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct kvm_mmu_page {int /*<<< orphan*/  link; int /*<<< orphan*/  mmu_valid_gen; void* spt; void* gfns; } ;
struct TYPE_5__ {int /*<<< orphan*/  active_mmu_pages; int /*<<< orphan*/  mmu_valid_gen; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static struct kvm_mmu_page *FUNC5(struct kvm_vcpu *vcpu, int direct)
{
	struct kvm_mmu_page *sp;

	sp = FUNC2(&vcpu->arch.mmu_page_header_cache);
	sp->spt = FUNC2(&vcpu->arch.mmu_page_cache);
	if (!direct)
		sp->gfns = FUNC2(&vcpu->arch.mmu_page_cache);
	FUNC3(FUNC4(sp->spt), (unsigned long)sp);

	/*
	 * active_mmu_pages must be a FIFO list, as kvm_zap_obsolete_pages()
	 * depends on valid pages being added to the head of the list.  See
	 * comments in kvm_zap_obsolete_pages().
	 */
	sp->mmu_valid_gen = vcpu->kvm->arch.mmu_valid_gen;
	FUNC1(&sp->link, &vcpu->kvm->arch.active_mmu_pages);
	FUNC0(vcpu->kvm, +1);
	return sp;
}