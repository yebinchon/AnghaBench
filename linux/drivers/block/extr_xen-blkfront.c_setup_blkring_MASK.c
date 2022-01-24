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
struct xenbus_device {int dummy; } ;
struct blkif_sring {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sring; } ;
struct blkfront_ring_info {int irq; int /*<<< orphan*/  evtchn; int /*<<< orphan*/ * ring_ref; TYPE_1__ ring; struct blkfront_info* dev_info; } ;
struct blkfront_info {unsigned long nr_ring_pages; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct blkif_sring*,unsigned long) ; 
 int GFP_NOIO ; 
 int /*<<< orphan*/  GRANT_INVALID_REF ; 
 int /*<<< orphan*/  FUNC1 (struct blkif_sring*) ; 
 int XENBUS_MAX_RING_GRANTS ; 
 unsigned long XEN_PAGE_SIZE ; 
 int __GFP_HIGH ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct blkfront_ring_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct blkfront_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blkif_interrupt ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int FUNC7 (struct xenbus_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xenbus_device*,int,char*) ; 
 int FUNC9 (struct xenbus_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct xenbus_device *dev,
			 struct blkfront_ring_info *rinfo)
{
	struct blkif_sring *sring;
	int err, i;
	struct blkfront_info *info = rinfo->dev_info;
	unsigned long ring_size = info->nr_ring_pages * XEN_PAGE_SIZE;
	grant_ref_t gref[XENBUS_MAX_RING_GRANTS];

	for (i = 0; i < info->nr_ring_pages; i++)
		rinfo->ring_ref[i] = GRANT_INVALID_REF;

	sring = (struct blkif_sring *)FUNC2(GFP_NOIO | __GFP_HIGH,
						       FUNC6(ring_size));
	if (!sring) {
		FUNC8(dev, -ENOMEM, "allocating shared ring");
		return -ENOMEM;
	}
	FUNC1(sring);
	FUNC0(&rinfo->ring, sring, ring_size);

	err = FUNC9(dev, rinfo->ring.sring, info->nr_ring_pages, gref);
	if (err < 0) {
		FUNC5((unsigned long)sring, FUNC6(ring_size));
		rinfo->ring.sring = NULL;
		goto fail;
	}
	for (i = 0; i < info->nr_ring_pages; i++)
		rinfo->ring_ref[i] = gref[i];

	err = FUNC7(dev, &rinfo->evtchn);
	if (err)
		goto fail;

	err = FUNC3(rinfo->evtchn, blkif_interrupt, 0,
					"blkif", rinfo);
	if (err <= 0) {
		FUNC8(dev, err,
				 "bind_evtchn_to_irqhandler failed");
		goto fail;
	}
	rinfo->irq = err;

	return 0;
fail:
	FUNC4(info, 0);
	return err;
}