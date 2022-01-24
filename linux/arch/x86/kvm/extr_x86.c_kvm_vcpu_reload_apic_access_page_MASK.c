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
struct page {int dummy; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_apic_access_page_addr ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 int PAGE_SHIFT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	struct page *page = NULL;

	if (!FUNC2(vcpu))
		return;

	if (!kvm_x86_ops->set_apic_access_page_addr)
		return;

	page = FUNC0(vcpu->kvm, APIC_DEFAULT_PHYS_BASE >> PAGE_SHIFT);
	if (FUNC1(page))
		return;
	kvm_x86_ops->set_apic_access_page_addr(vcpu, FUNC3(page));

	/*
	 * Do not pin apic access page in memory, the MMU notifier
	 * will call us again if it is migrated or swapped out.
	 */
	FUNC4(page);
}