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
struct list_head {int dummy; } ;
struct TYPE_6__ {int invalid; int /*<<< orphan*/  direct; } ;
struct kvm_mmu_page {TYPE_3__ role; scalar_t__ lpage_disallowed; int /*<<< orphan*/  link; int /*<<< orphan*/  root_count; scalar_t__ unsync; } ;
struct TYPE_5__ {struct list_head active_mmu_pages; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmu_shadow_zapped; } ;
struct kvm {TYPE_2__ arch; TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC7 (struct kvm*,struct kvm_mmu_page*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*,struct kvm_mmu_page*) ; 

__attribute__((used)) static bool FUNC11(struct kvm *kvm,
				       struct kvm_mmu_page *sp,
				       struct list_head *invalid_list,
				       int *nr_zapped)
{
	bool list_unstable;

	FUNC8(sp);
	++kvm->stat.mmu_shadow_zapped;
	*nr_zapped = FUNC7(kvm, sp, invalid_list);
	FUNC1(kvm, sp);
	FUNC2(kvm, sp);

	/* Zapping children means active_mmu_pages has become unstable. */
	list_unstable = *nr_zapped;

	if (!sp->role.invalid && !sp->role.direct)
		FUNC10(kvm, sp);

	if (sp->unsync)
		FUNC5(kvm, sp);
	if (!sp->root_count) {
		/* Count self */
		(*nr_zapped)++;
		FUNC6(&sp->link, invalid_list);
		FUNC3(kvm, -1);
	} else {
		FUNC6(&sp->link, &kvm->arch.active_mmu_pages);

		/*
		 * Obsolete pages cannot be used on any vCPUs, see the comment
		 * in kvm_mmu_zap_all_fast().  Note, is_obsolete_sp() also
		 * treats invalid shadow pages as being obsolete.
		 */
		if (!FUNC0(kvm, sp))
			FUNC4(kvm);
	}

	if (sp->lpage_disallowed)
		FUNC9(kvm, sp);

	sp->role.invalid = 1;
	return list_unstable;
}