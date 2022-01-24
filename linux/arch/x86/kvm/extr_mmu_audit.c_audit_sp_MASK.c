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
struct kvm_mmu_page {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct kvm_mmu_page*) ; 

__attribute__((used)) static void FUNC2(struct kvm *kvm, struct kvm_mmu_page *sp)
{
	FUNC1(kvm, sp);
	FUNC0(kvm, sp);
}