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
struct TYPE_2__ {int /*<<< orphan*/  direct; } ;
struct kvm_mmu_page {scalar_t__ gfns; TYPE_1__ role; scalar_t__ spt; int /*<<< orphan*/  link; int /*<<< orphan*/  hash_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmu_page_header_cache ; 

__attribute__((used)) static void FUNC6(struct kvm_mmu_page *sp)
{
	FUNC0(!FUNC3(sp->spt));
	FUNC2(&sp->hash_link);
	FUNC5(&sp->link);
	FUNC1((unsigned long)sp->spt);
	if (!sp->role.direct)
		FUNC1((unsigned long)sp->gfns);
	FUNC4(mmu_page_header_cache, sp);
}