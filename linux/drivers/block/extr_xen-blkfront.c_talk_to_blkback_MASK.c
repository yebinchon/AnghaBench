#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {char* nodename; int /*<<< orphan*/  dev; } ;
struct blkfront_ring_info {TYPE_5__* shadow; } ;
struct blkfront_info {int nr_ring_pages; unsigned int nr_rings; struct blkfront_ring_info* rinfo; TYPE_1__* xbdev; } ;
struct TYPE_7__ {unsigned int id; } ;
struct TYPE_8__ {TYPE_2__ rw; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_10__ {TYPE_4__ req; } ;
struct TYPE_6__ {int /*<<< orphan*/  otherend; } ;

/* Variables and functions */
 int FUNC0 (struct blkfront_info*) ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t QUEUE_NAME_LEN ; 
 int XEN_IO_PROTO_ABI_NATIVE ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int /*<<< orphan*/  blkfront_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct blkfront_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct blkfront_info*) ; 
 int FUNC12 (struct xenbus_device*,struct blkfront_ring_info*) ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t,char*,char*,unsigned int) ; 
 size_t FUNC14 (char*) ; 
 int FUNC15 (struct xenbus_transaction,struct blkfront_ring_info*,char*) ; 
 int /*<<< orphan*/  xen_blkif_max_ring_order ; 
 int /*<<< orphan*/  FUNC16 (struct xenbus_device*,int,char*,...) ; 
 int FUNC17 (struct xenbus_transaction,char*,char*,char*,int) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct xenbus_transaction,int) ; 
 int FUNC21 (struct xenbus_transaction*) ; 

__attribute__((used)) static int FUNC22(struct xenbus_device *dev,
			   struct blkfront_info *info)
{
	const char *message = NULL;
	struct xenbus_transaction xbt;
	int err;
	unsigned int i, max_page_order;
	unsigned int ring_page_order;

	if (!info)
		return -ENODEV;

	max_page_order = FUNC18(info->xbdev->otherend,
					      "max-ring-page-order", 0);
	ring_page_order = FUNC8(xen_blkif_max_ring_order, max_page_order);
	info->nr_ring_pages = 1 << ring_page_order;

	err = FUNC11(info);
	if (err)
		goto destroy_blkring;

	for (i = 0; i < info->nr_rings; i++) {
		struct blkfront_ring_info *rinfo = &info->rinfo[i];

		/* Create shared ring, alloc event channel. */
		err = FUNC12(dev, rinfo);
		if (err)
			goto destroy_blkring;
	}

again:
	err = FUNC21(&xbt);
	if (err) {
		FUNC16(dev, err, "starting transaction");
		goto destroy_blkring;
	}

	if (info->nr_ring_pages > 1) {
		err = FUNC17(xbt, dev->nodename, "ring-page-order", "%u",
				    ring_page_order);
		if (err) {
			message = "writing ring-page-order";
			goto abort_transaction;
		}
	}

	/* We already got the number of queues/rings in _probe */
	if (info->nr_rings == 1) {
		err = FUNC15(xbt, &info->rinfo[0], dev->nodename);
		if (err)
			goto destroy_blkring;
	} else {
		char *path;
		size_t pathsize;

		err = FUNC17(xbt, dev->nodename, "multi-queue-num-queues", "%u",
				    info->nr_rings);
		if (err) {
			message = "writing multi-queue-num-queues";
			goto abort_transaction;
		}

		pathsize = FUNC14(dev->nodename) + QUEUE_NAME_LEN;
		path = FUNC6(pathsize, GFP_KERNEL);
		if (!path) {
			err = -ENOMEM;
			message = "ENOMEM while writing ring references";
			goto abort_transaction;
		}

		for (i = 0; i < info->nr_rings; i++) {
			FUNC7(path, 0, pathsize);
			FUNC13(path, pathsize, "%s/queue-%u", dev->nodename, i);
			err = FUNC15(xbt, &info->rinfo[i], path);
			if (err) {
				FUNC5(path);
				goto destroy_blkring;
			}
		}
		FUNC5(path);
	}
	err = FUNC17(xbt, dev->nodename, "protocol", "%s",
			    XEN_IO_PROTO_ABI_NATIVE);
	if (err) {
		message = "writing protocol";
		goto abort_transaction;
	}
	err = FUNC17(xbt, dev->nodename,
			    "feature-persistent", "%u", 1);
	if (err)
		FUNC3(&dev->dev,
			 "writing persistent grants feature to xenbus");

	err = FUNC20(xbt, 0);
	if (err) {
		if (err == -EAGAIN)
			goto again;
		FUNC16(dev, err, "completing transaction");
		goto destroy_blkring;
	}

	for (i = 0; i < info->nr_rings; i++) {
		unsigned int j;
		struct blkfront_ring_info *rinfo = &info->rinfo[i];

		for (j = 0; j < FUNC0(info); j++)
			rinfo->shadow[j].req.u.rw.id = j + 1;
		rinfo->shadow[FUNC0(info)-1].req.u.rw.id = 0x0fffffff;
	}
	FUNC19(dev, XenbusStateInitialised);

	return 0;

 abort_transaction:
	FUNC20(xbt, 1);
	if (message)
		FUNC16(dev, err, "%s", message);
 destroy_blkring:
	FUNC1(info, 0);

	FUNC9(&blkfront_mutex);
	FUNC4(info);
	FUNC10(&blkfront_mutex);

	FUNC2(&dev->dev, NULL);

	return err;
}