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
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;
struct blkfront_ring_info {struct blk_shadow* shadow; } ;
struct blkfront_info {unsigned int nr_rings; scalar_t__ connected; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  bio_list; int /*<<< orphan*/  requests; struct blkfront_ring_info* rinfo; } ;
struct blk_shadow {TYPE_1__* request; } ;
struct bio_list {int /*<<< orphan*/  tail; int /*<<< orphan*/ * head; } ;
struct TYPE_3__ {int cmd_flags; int /*<<< orphan*/ * bio; int /*<<< orphan*/  biotail; int /*<<< orphan*/  queuelist; } ;

/* Variables and functions */
 scalar_t__ BLKIF_STATE_CONNECTED ; 
 unsigned int FUNC0 (struct blkfront_info*) ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int REQ_FUA ; 
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_FLUSH ; 
 scalar_t__ REQ_OP_SECURE_ERASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct blkfront_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct blkfront_info* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct xenbus_device*,struct blkfront_info*) ; 

__attribute__((used)) static int FUNC12(struct xenbus_device *dev)
{
	struct blkfront_info *info = FUNC8(&dev->dev);
	int err = 0;
	unsigned int i, j;

	FUNC7(&dev->dev, "blkfront_resume: %s\n", dev->nodename);

	FUNC2(&info->bio_list);
	FUNC1(&info->requests);
	for (i = 0; i < info->nr_rings; i++) {
		struct blkfront_ring_info *rinfo = &info->rinfo[i];
		struct bio_list merge_bio;
		struct blk_shadow *shadow = rinfo->shadow;

		for (j = 0; j < FUNC0(info); j++) {
			/* Not in use? */
			if (!shadow[j].request)
				continue;

			/*
			 * Get the bios in the request so we can re-queue them.
			 */
			if (FUNC10(shadow[j].request) == REQ_OP_FLUSH ||
			    FUNC10(shadow[j].request) == REQ_OP_DISCARD ||
			    FUNC10(shadow[j].request) == REQ_OP_SECURE_ERASE ||
			    shadow[j].request->cmd_flags & REQ_FUA) {
				/*
				 * Flush operations don't contain bios, so
				 * we need to requeue the whole request
				 *
				 * XXX: but this doesn't make any sense for a
				 * write with the FUA flag set..
				 */
				FUNC9(&shadow[j].request->queuelist, &info->requests);
				continue;
			}
			merge_bio.head = shadow[j].request->bio;
			merge_bio.tail = shadow[j].request->biotail;
			FUNC3(&info->bio_list, &merge_bio);
			shadow[j].request->bio = NULL;
			FUNC4(shadow[j].request, BLK_STS_OK);
		}
	}

	FUNC6(info, info->connected == BLKIF_STATE_CONNECTED);

	err = FUNC11(dev, info);
	if (!err)
		FUNC5(&info->tag_set, info->nr_rings);

	/*
	 * We have to wait for the backend to switch to
	 * connected state, since we want to read which
	 * features it supports.
	 */

	return err;
}