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
struct kvm_mmu_page {int /*<<< orphan*/  gfn; scalar_t__* gfns; TYPE_1__ role; } ;
typedef  scalar_t__ gfn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kvm_mmu_page*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct kvm_mmu_page *sp, int index, gfn_t gfn)
{
	if (!sp->role.direct) {
		sp->gfns[index] = gfn;
		return;
	}

	if (FUNC0(gfn != FUNC1(sp, index)))
		FUNC2("gfn mismatch under direct page %llx "
				   "(expected %llx, got %llx)\n",
				   sp->gfn,
				   FUNC1(sp, index), gfn);
}