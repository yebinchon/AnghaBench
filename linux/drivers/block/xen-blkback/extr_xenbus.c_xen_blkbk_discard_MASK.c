#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  nodename; } ;
struct TYPE_4__ {int discard_secure; struct block_device* bdev; } ;
struct xen_blkif {TYPE_2__ vbd; } ;
struct TYPE_3__ {int discard_granularity; int discard_alignment; } ;
struct request_queue {TYPE_1__ limits; } ;
struct block_device {int dummy; } ;
struct backend_info {struct xen_blkif* blkif; struct xenbus_device* dev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (struct block_device*) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct xenbus_transaction xbt, struct backend_info *be)
{
	struct xenbus_device *dev = be->dev;
	struct xen_blkif *blkif = be->blkif;
	int err;
	int state = 0;
	struct block_device *bdev = be->blkif->vbd.bdev;
	struct request_queue *q = FUNC0(bdev);

	if (!FUNC4(dev->nodename, "discard-enable", 1))
		return;

	if (FUNC1(q)) {
		err = FUNC3(xbt, dev->nodename,
			"discard-granularity", "%u",
			q->limits.discard_granularity);
		if (err) {
			FUNC2(&dev->dev, "writing discard-granularity (%d)", err);
			return;
		}
		err = FUNC3(xbt, dev->nodename,
			"discard-alignment", "%u",
			q->limits.discard_alignment);
		if (err) {
			FUNC2(&dev->dev, "writing discard-alignment (%d)", err);
			return;
		}
		state = 1;
		/* Optional. */
		err = FUNC3(xbt, dev->nodename,
				    "discard-secure", "%d",
				    blkif->vbd.discard_secure);
		if (err) {
			FUNC2(&dev->dev, "writing discard-secure (%d)", err);
			return;
		}
	}
	err = FUNC3(xbt, dev->nodename, "feature-discard",
			    "%d", state);
	if (err)
		FUNC2(&dev->dev, "writing feature-discard (%d)", err);
}