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
struct kvm {int dummy; } ;
struct TYPE_2__ {unsigned int tss_addr; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  TSS_PRIVATE_MEMSLOT ; 
 scalar_t__ enable_unrestricted_guest ; 
 int FUNC0 (struct kvm*) ; 
 TYPE_1__* FUNC1 (struct kvm*) ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm, unsigned int addr)
{
	int ret;

	if (enable_unrestricted_guest)
		return 0;

	ret = FUNC2(kvm, TSS_PRIVATE_MEMSLOT, addr,
				    PAGE_SIZE * 3);
	if (ret)
		return ret;
	FUNC1(kvm)->tss_addr = addr;
	return FUNC0(kvm);
}