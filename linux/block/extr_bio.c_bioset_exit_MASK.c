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
struct bio_set {int /*<<< orphan*/ * bio_slab; int /*<<< orphan*/  bvec_pool; int /*<<< orphan*/  bio_pool; int /*<<< orphan*/ * rescue_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct bio_set *bs)
{
	if (bs->rescue_workqueue)
		FUNC2(bs->rescue_workqueue);
	bs->rescue_workqueue = NULL;

	FUNC3(&bs->bio_pool);
	FUNC3(&bs->bvec_pool);

	FUNC1(bs);
	if (bs->bio_slab)
		FUNC0(bs);
	bs->bio_slab = NULL;
}