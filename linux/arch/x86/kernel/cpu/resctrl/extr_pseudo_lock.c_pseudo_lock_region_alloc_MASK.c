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
struct pseudo_lock_region {scalar_t__ size; int /*<<< orphan*/  kmem; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ KMALLOC_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pseudo_lock_region*) ; 
 int FUNC2 (struct pseudo_lock_region*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct pseudo_lock_region *plr)
{
	int ret;

	ret = FUNC2(plr);
	if (ret < 0)
		return ret;

	/*
	 * We do not yet support contiguous regions larger than
	 * KMALLOC_MAX_SIZE.
	 */
	if (plr->size > KMALLOC_MAX_SIZE) {
		FUNC3("Requested region exceeds maximum size\n");
		ret = -E2BIG;
		goto out_region;
	}

	plr->kmem = FUNC0(plr->size, GFP_KERNEL);
	if (!plr->kmem) {
		FUNC3("Unable to allocate memory\n");
		ret = -ENOMEM;
		goto out_region;
	}

	ret = 0;
	goto out;
out_region:
	FUNC1(plr);
out:
	return ret;
}