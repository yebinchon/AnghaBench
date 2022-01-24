#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct blkfront_ring_info {int /*<<< orphan*/  work; int /*<<< orphan*/  callback; } ;
struct blkfront_info {unsigned int nr_rings; TYPE_1__* gd; int /*<<< orphan*/ * rq; int /*<<< orphan*/  tag_set; struct blkfront_ring_info* rinfo; } ;
struct TYPE_3__ {unsigned int first_minor; unsigned int minors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct blkfront_info *info)
{
	unsigned int minor, nr_minors, i;

	if (info->rq == NULL)
		return;

	/* No more blkif_request(). */
	FUNC2(info->rq);

	for (i = 0; i < info->nr_rings; i++) {
		struct blkfront_ring_info *rinfo = &info->rinfo[i];

		/* No more gnttab callback work. */
		FUNC5(&rinfo->callback);

		/* Flush gnttab callback work. Must be done with no locks held. */
		FUNC4(&rinfo->work);
	}

	FUNC3(info->gd);

	minor = info->gd->first_minor;
	nr_minors = info->gd->minors;
	FUNC7(minor, nr_minors);

	FUNC0(info->rq);
	FUNC1(&info->tag_set);
	info->rq = NULL;

	FUNC6(info->gd);
	info->gd = NULL;
}