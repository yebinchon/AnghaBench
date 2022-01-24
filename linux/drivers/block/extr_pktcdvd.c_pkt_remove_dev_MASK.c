#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  thread; } ;
struct pktcdvd_device {scalar_t__ pkt_dev; scalar_t__ refcnt; int /*<<< orphan*/  rb_pool; TYPE_2__* disk; int /*<<< orphan*/  name; int /*<<< orphan*/  bdev; TYPE_1__ cdrw; } ;
typedef  scalar_t__ dev_t ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int FMODE_NDELAY ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_WRITERS ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ctl_mutex ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,struct pktcdvd_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct pktcdvd_device*) ; 
 struct pktcdvd_device** pkt_devs ; 
 int /*<<< orphan*/  pkt_proc ; 
 int /*<<< orphan*/  FUNC12 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(dev_t pkt_dev)
{
	struct pktcdvd_device *pd;
	int idx;
	int ret = 0;

	FUNC8(&ctl_mutex, SINGLE_DEPTH_NESTING);

	for (idx = 0; idx < MAX_WRITERS; idx++) {
		pd = pkt_devs[idx];
		if (pd && (pd->pkt_dev == pkt_dev))
			break;
	}
	if (idx == MAX_WRITERS) {
		FUNC13("dev not setup\n");
		ret = -ENXIO;
		goto out;
	}

	if (pd->refcnt > 0) {
		ret = -EBUSY;
		goto out;
	}
	if (!FUNC0(pd->cdrw.thread))
		FUNC5(pd->cdrw.thread);

	pkt_devs[idx] = NULL;

	FUNC11(pd);
	FUNC12(pd);

	FUNC2(pd->bdev, FMODE_READ | FMODE_NDELAY);

	FUNC15(pd->name, pkt_proc);
	FUNC10(1, pd, "writer unmapped\n");

	FUNC3(pd->disk);
	FUNC1(pd->disk->queue);
	FUNC14(pd->disk);

	FUNC6(&pd->rb_pool);
	FUNC4(pd);

	/* This is safe: open() is still holding a reference. */
	FUNC7(THIS_MODULE);

out:
	FUNC9(&ctl_mutex);
	return ret;
}