#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ invalid; } ;
struct kvm_mmu_page {TYPE_1__ role; int /*<<< orphan*/  root_count; } ;
struct kvm {int dummy; } ;
typedef  int hpa_t ;

/* Variables and functions */
 int INVALID_PAGE ; 
 int PT64_BASE_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct kvm_mmu_page*,struct list_head*) ; 
 struct kvm_mmu_page* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct kvm *kvm, hpa_t *root_hpa,
			       struct list_head *invalid_list)
{
	struct kvm_mmu_page *sp;

	if (!FUNC0(*root_hpa))
		return;

	sp = FUNC2(*root_hpa & PT64_BASE_ADDR_MASK);
	--sp->root_count;
	if (!sp->root_count && sp->role.invalid)
		FUNC1(kvm, sp, invalid_list);

	*root_hpa = INVALID_PAGE;
}