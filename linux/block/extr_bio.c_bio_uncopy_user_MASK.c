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
struct bio_map_data {scalar_t__ is_our_pages; int /*<<< orphan*/  iter; } ;
struct bio {struct bio_map_data* bi_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NULL_MAPPED ; 
 int EINTR ; 
 scalar_t__ READ ; 
 int FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (struct bio_map_data*) ; 

int FUNC6(struct bio *bio)
{
	struct bio_map_data *bmd = bio->bi_private;
	int ret = 0;

	if (!FUNC2(bio, BIO_NULL_MAPPED)) {
		/*
		 * if we're in a workqueue, the request is orphaned, so
		 * don't copy into a random user address space, just free
		 * and return -EINTR so user space doesn't expect any data.
		 */
		if (!current->mm)
			ret = -EINTR;
		else if (FUNC1(bio) == READ)
			ret = FUNC0(bio, bmd->iter);
		if (bmd->is_our_pages)
			FUNC3(bio);
	}
	FUNC5(bmd);
	FUNC4(bio);
	return ret;
}