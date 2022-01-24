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
struct TYPE_2__ {int /*<<< orphan*/  discard_alignment; int /*<<< orphan*/  discard_granularity; } ;
struct request_queue {TYPE_1__ limits; } ;
struct gendisk {int dummy; } ;
struct blkfront_info {int /*<<< orphan*/  physical_sector_size; int /*<<< orphan*/  sector_size; scalar_t__ feature_secdiscard; int /*<<< orphan*/  discard_alignment; int /*<<< orphan*/  discard_granularity; scalar_t__ feature_discard; scalar_t__ max_indirect_segments; struct gendisk* gd; struct request_queue* rq; } ;

/* Variables and functions */
 unsigned int BLKIF_MAX_SEGMENTS_PER_REQUEST ; 
 unsigned int GRANTS_PER_PSEG ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  QUEUE_FLAG_SECERASE ; 
 int /*<<< orphan*/  QUEUE_FLAG_VIRT ; 
 unsigned int XEN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct gendisk*) ; 

__attribute__((used)) static void FUNC10(struct blkfront_info *info)
{
	struct request_queue *rq = info->rq;
	struct gendisk *gd = info->gd;
	unsigned int segments = info->max_indirect_segments ? :
				BLKIF_MAX_SEGMENTS_PER_REQUEST;

	FUNC1(QUEUE_FLAG_VIRT, rq);

	if (info->feature_discard) {
		FUNC1(QUEUE_FLAG_DISCARD, rq);
		FUNC3(rq, FUNC9(gd));
		rq->limits.discard_granularity = info->discard_granularity;
		rq->limits.discard_alignment = info->discard_alignment;
		if (info->feature_secdiscard)
			FUNC1(QUEUE_FLAG_SECERASE, rq);
	}

	/* Hard sector size and max sectors impersonate the equiv. hardware. */
	FUNC2(rq, info->sector_size);
	FUNC7(rq, info->physical_sector_size);
	FUNC4(rq, (segments * XEN_PAGE_SIZE) / 512);

	/* Each segment in a request is up to an aligned page in size. */
	FUNC8(rq, PAGE_SIZE - 1);
	FUNC5(rq, PAGE_SIZE);

	/* Ensure a merged request will fit in a single I/O ring slot. */
	FUNC6(rq, segments / GRANTS_PER_PSEG);

	/* Make sure buffer addresses are sector-aligned. */
	FUNC0(rq, 511);
}