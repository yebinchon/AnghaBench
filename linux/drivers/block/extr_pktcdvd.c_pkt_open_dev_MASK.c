#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct pktcdvd_device {TYPE_2__* bdev; int /*<<< orphan*/  flags; TYPE_1__ settings; int /*<<< orphan*/  disk; } ;
typedef  int loff_t ;
typedef  scalar_t__ fmode_t ;
struct TYPE_7__ {int /*<<< orphan*/  bd_disk; int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CDROM_PKTCDVD_BUFFERS ; 
 int ENOMEM ; 
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  MAX_SPEED ; 
 int /*<<< orphan*/  PACKET_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 struct request_queue* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int,struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pktcdvd_device*,char*) ; 
 int FUNC8 (struct pktcdvd_device*,long*) ; 
 int /*<<< orphan*/  FUNC9 (struct pktcdvd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pktcdvd_device*,char*,long) ; 
 int FUNC11 (struct pktcdvd_device*) ; 
 int FUNC12 (struct pktcdvd_device*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct pktcdvd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int FUNC16(struct pktcdvd_device *pd, fmode_t write)
{
	int ret;
	long lba;
	struct request_queue *q;

	/*
	 * We need to re-open the cdrom device without O_NONBLOCK to be able
	 * to read/write from/to it. It is already opened in O_NONBLOCK mode
	 * so bdget() can't fail.
	 */
	FUNC2(pd->bdev->bd_dev);
	ret = FUNC4(pd->bdev, FMODE_READ | FMODE_EXCL, pd);
	if (ret)
		goto out;

	ret = FUNC8(pd, &lba);
	if (ret) {
		FUNC7(pd, "pkt_get_last_written failed\n");
		goto out_putdev;
	}

	FUNC15(pd->disk, lba << 2);
	FUNC15(pd->bdev->bd_disk, lba << 2);
	FUNC0(pd->bdev, (loff_t)lba << 11);

	q = FUNC1(pd->bdev);
	if (write) {
		ret = FUNC11(pd);
		if (ret)
			goto out_putdev;
		/*
		 * Some CDRW drives can not handle writes larger than one packet,
		 * even if the size is a multiple of the packet size.
		 */
		FUNC3(q, pd->settings.size);
		FUNC14(PACKET_WRITABLE, &pd->flags);
	} else {
		FUNC13(pd, MAX_SPEED, MAX_SPEED);
		FUNC6(PACKET_WRITABLE, &pd->flags);
	}

	ret = FUNC12(pd, q);
	if (ret)
		goto out_putdev;

	if (write) {
		if (!FUNC9(pd, CONFIG_CDROM_PKTCDVD_BUFFERS)) {
			FUNC7(pd, "not enough memory for buffers\n");
			ret = -ENOMEM;
			goto out_putdev;
		}
		FUNC10(pd, "%lukB available on disc\n", lba << 1);
	}

	return 0;

out_putdev:
	FUNC5(pd->bdev, FMODE_READ | FMODE_EXCL);
out:
	return ret;
}