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
struct kvm {int dummy; } ;
struct enc_region {int /*<<< orphan*/  list; int /*<<< orphan*/  npages; int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enc_region*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm,
					   struct enc_region *region)
{
	/*
	 * The guest may change the memory encryption attribute from C=0 -> C=1
	 * or vice versa for this memory range. Lets make sure caches are
	 * flushed to ensure that guest data gets written into memory with
	 * correct C-bit.
	 */
	FUNC2(region->pages, region->npages);

	FUNC3(kvm, region->pages, region->npages);
	FUNC1(&region->list);
	FUNC0(region);
}