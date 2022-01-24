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
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_mmu_page {int unsync; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmu_unsync; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_mmu_page*) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp)
{
	FUNC1(sp);
	++vcpu->kvm->stat.mmu_unsync;
	sp->unsync = 1;

	FUNC0(sp);
}