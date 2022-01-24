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
struct TYPE_2__ {int apic_access_page_done; } ;
struct kvm {int /*<<< orphan*/  slots_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ACCESS_PAGE_PRIVATE_MEMSLOT ; 
 int APIC_DEFAULT_PHYS_BASE ; 
 int EFAULT ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct kvm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (struct kvm*,int) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm)
{
	struct page *page;
	int r = 0;

	FUNC3(&kvm->slots_lock);
	if (kvm->arch.apic_access_page_done)
		goto out;
	r = FUNC0(kvm, APIC_ACCESS_PAGE_PRIVATE_MEMSLOT,
				    APIC_DEFAULT_PHYS_BASE, PAGE_SIZE);
	if (r)
		goto out;

	page = FUNC1(kvm, APIC_DEFAULT_PHYS_BASE >> PAGE_SHIFT);
	if (FUNC2(page)) {
		r = -EFAULT;
		goto out;
	}

	/*
	 * Do not pin the page in memory, so that memory hot-unplug
	 * is able to migrate it.
	 */
	FUNC5(page);
	kvm->arch.apic_access_page_done = true;
out:
	FUNC4(&kvm->slots_lock);
	return r;
}