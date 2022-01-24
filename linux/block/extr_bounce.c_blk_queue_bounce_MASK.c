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
struct TYPE_2__ {scalar_t__ bounce_pfn; } ;
struct request_queue {int bounce_gfp; TYPE_1__ limits; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct bio**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ blk_max_pfn ; 
 int /*<<< orphan*/  isa_page_pool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  page_pool ; 

void FUNC4(struct request_queue *q, struct bio **bio_orig)
{
	mempool_t *pool;

	/*
	 * Data-less bio, nothing to bounce
	 */
	if (!FUNC2(*bio_orig))
		return;

	/*
	 * for non-isa bounce case, just check if the bounce pfn is equal
	 * to or bigger than the highest pfn in the system -- in that case,
	 * don't waste time iterating over bio segments
	 */
	if (!(q->bounce_gfp & GFP_DMA)) {
		if (q->limits.bounce_pfn >= blk_max_pfn)
			return;
		pool = &page_pool;
	} else {
		FUNC0(!FUNC3(&isa_page_pool));
		pool = &isa_page_pool;
	}

	/*
	 * slow path
	 */
	FUNC1(q, bio_orig, pool);
}