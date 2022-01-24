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
struct kvm_sev_info {int /*<<< orphan*/  regions_list; } ;
struct kvm_enc_region {scalar_t__ addr; scalar_t__ size; } ;
struct kvm {int /*<<< orphan*/  lock; } ;
struct enc_region {scalar_t__ uaddr; scalar_t__ size; int /*<<< orphan*/  list; int /*<<< orphan*/  npages; int /*<<< orphan*/  pages; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTTY ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct enc_region*) ; 
 struct enc_region* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (struct kvm*) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm,
				   struct kvm_enc_region *range)
{
	struct kvm_sev_info *sev = &FUNC8(kvm)->sev_info;
	struct enc_region *region;
	int ret = 0;

	if (!FUNC6(kvm))
		return -ENOTTY;

	if (range->addr > ULONG_MAX || range->size > ULONG_MAX)
		return -EINVAL;

	region = FUNC1(sizeof(*region), GFP_KERNEL_ACCOUNT);
	if (!region)
		return -ENOMEM;

	region->pages = FUNC7(kvm, range->addr, range->size, &region->npages, 1);
	if (!region->pages) {
		ret = -ENOMEM;
		goto e_free;
	}

	/*
	 * The guest may change the memory encryption attribute from C=0 -> C=1
	 * or vice versa for this memory range. Lets make sure caches are
	 * flushed to ensure that guest data gets written into memory with
	 * correct C-bit.
	 */
	FUNC5(region->pages, region->npages);

	region->uaddr = range->addr;
	region->size = range->size;

	FUNC3(&kvm->lock);
	FUNC2(&region->list, &sev->regions_list);
	FUNC4(&kvm->lock);

	return ret;

e_free:
	FUNC0(region);
	return ret;
}