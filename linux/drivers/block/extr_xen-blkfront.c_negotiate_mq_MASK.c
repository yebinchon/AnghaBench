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
struct blkfront_ring_info {int /*<<< orphan*/  ring_lock; int /*<<< orphan*/  work; struct blkfront_info* dev_info; int /*<<< orphan*/  grants; int /*<<< orphan*/  indirect_pages; } ;
struct blkfront_info {int nr_rings; struct blkfront_ring_info* rinfo; TYPE_1__* xbdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  otherend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blkif_restart_queue ; 
 struct blkfront_ring_info* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_blkif_max_queues ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(struct blkfront_info *info)
{
	unsigned int backend_max_queues;
	unsigned int i;

	FUNC0(info->nr_rings);

	/* Check if backend supports multiple queues. */
	backend_max_queues = FUNC7(info->xbdev->otherend,
						  "multi-queue-max-queues", 1);
	info->nr_rings = FUNC4(backend_max_queues, xen_blkif_max_queues);
	/* We need at least one ring. */
	if (!info->nr_rings)
		info->nr_rings = 1;

	info->rinfo = FUNC3(info->nr_rings,
			       sizeof(struct blkfront_ring_info),
			       GFP_KERNEL);
	if (!info->rinfo) {
		FUNC6(info->xbdev, -ENOMEM, "allocating ring_info structure");
		info->nr_rings = 0;
		return -ENOMEM;
	}

	for (i = 0; i < info->nr_rings; i++) {
		struct blkfront_ring_info *rinfo;

		rinfo = &info->rinfo[i];
		FUNC1(&rinfo->indirect_pages);
		FUNC1(&rinfo->grants);
		rinfo->dev_info = info;
		FUNC2(&rinfo->work, blkif_restart_queue);
		FUNC5(&rinfo->ring_lock);
	}
	return 0;
}