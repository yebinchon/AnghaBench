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
struct kvm_mmu_page {scalar_t__ unsync; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmu_unsync; } ;
struct kvm {TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_mmu_page*) ; 

__attribute__((used)) static void FUNC2(struct kvm *kvm, struct kvm_mmu_page *sp)
{
	FUNC0(!sp->unsync);
	FUNC1(sp);
	sp->unsync = 0;
	--kvm->stat.mmu_unsync;
}