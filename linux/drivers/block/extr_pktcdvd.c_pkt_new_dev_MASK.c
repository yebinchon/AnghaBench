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
struct TYPE_2__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  pending_bios; } ;
struct pktcdvd_device {scalar_t__ pkt_dev; int /*<<< orphan*/  name; TYPE_1__ cdrw; struct block_device* bdev; } ;
struct block_device {scalar_t__ bd_dev; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  CD_FRAMESIZE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FMODE_NDELAY ; 
 int FMODE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_WRITERS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*,char*) ; 
 struct block_device* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct block_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct block_device*,int) ; 
 int /*<<< orphan*/  kcdrwd ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct pktcdvd_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct pktcdvd_device*,char*,int /*<<< orphan*/ ) ; 
 struct pktcdvd_device** pkt_devs ; 
 int /*<<< orphan*/  FUNC12 (struct pktcdvd_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  pkt_proc ; 
 int /*<<< orphan*/  pkt_seq_show ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct block_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct pktcdvd_device *pd, dev_t dev)
{
	int i;
	int ret = 0;
	char b[BDEVNAME_SIZE];
	struct block_device *bdev;

	if (pd->pkt_dev == dev) {
		FUNC12(pd, "recursive setup not allowed\n");
		return -EBUSY;
	}
	for (i = 0; i < MAX_WRITERS; i++) {
		struct pktcdvd_device *pd2 = pkt_devs[i];
		if (!pd2)
			continue;
		if (pd2->bdev->bd_dev == dev) {
			FUNC12(pd, "%s already setup\n",
				FUNC4(pd2->bdev, b));
			return -EBUSY;
		}
		if (pd2->pkt_dev == dev) {
			FUNC12(pd, "can't chain pktcdvd devices\n");
			return -EBUSY;
		}
	}

	bdev = FUNC5(dev);
	if (!bdev)
		return -ENOMEM;
	ret = FUNC7(bdev, FMODE_READ | FMODE_NDELAY, NULL);
	if (ret)
		return ret;
	if (!FUNC6(FUNC3(bdev))) {
		FUNC8(bdev, FMODE_READ | FMODE_NDELAY);
		return -EINVAL;
	}

	/* This is safe, since we have a reference from open(). */
	FUNC1(THIS_MODULE);

	pd->bdev = bdev;
	FUNC15(bdev, CD_FRAMESIZE);

	FUNC13(pd);

	FUNC2(&pd->cdrw.pending_bios, 0);
	pd->cdrw.thread = FUNC9(kcdrwd, pd, "%s", pd->name);
	if (FUNC0(pd->cdrw.thread)) {
		FUNC12(pd, "can't start kernel thread\n");
		ret = -ENOMEM;
		goto out_mem;
	}

	FUNC14(pd->name, 0, pkt_proc, pkt_seq_show, pd);
	FUNC11(1, pd, "writer mapped to %s\n", FUNC4(bdev, b));
	return 0;

out_mem:
	FUNC8(bdev, FMODE_READ | FMODE_NDELAY);
	/* This is safe: open() is still holding a reference. */
	FUNC10(THIS_MODULE);
	return ret;
}