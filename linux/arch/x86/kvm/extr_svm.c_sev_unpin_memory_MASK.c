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
struct kvm_sev_info {unsigned long pages_locked; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page**) ; 
 int /*<<< orphan*/  FUNC1 (struct page**,unsigned long) ; 
 TYPE_1__* FUNC2 (struct kvm*) ; 

__attribute__((used)) static void FUNC3(struct kvm *kvm, struct page **pages,
			     unsigned long npages)
{
	struct kvm_sev_info *sev = &FUNC2(kvm)->sev_info;

	FUNC1(pages, npages);
	FUNC0(pages);
	sev->pages_locked -= npages;
}