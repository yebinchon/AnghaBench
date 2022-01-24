#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pktcdvd_device {int refcnt; int /*<<< orphan*/  flags; } ;
struct block_device {int /*<<< orphan*/  bd_dev; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CD_FRAMESIZE ; 
 int EBUSY ; 
 int ENODEV ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET_WRITABLE ; 
 int /*<<< orphan*/  ctl_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pktcdvd_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pktcdvd_device*,int) ; 
 int /*<<< orphan*/  pktcdvd_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct block_device *bdev, fmode_t mode)
{
	struct pktcdvd_device *pd = NULL;
	int ret;

	FUNC2(&pktcdvd_mutex);
	FUNC2(&ctl_mutex);
	pd = FUNC4(FUNC1(bdev->bd_dev));
	if (!pd) {
		ret = -ENODEV;
		goto out;
	}
	FUNC0(pd->refcnt < 0);

	pd->refcnt++;
	if (pd->refcnt > 1) {
		if ((mode & FMODE_WRITE) &&
		    !FUNC7(PACKET_WRITABLE, &pd->flags)) {
			ret = -EBUSY;
			goto out_dec;
		}
	} else {
		ret = FUNC5(pd, mode & FMODE_WRITE);
		if (ret)
			goto out_dec;
		/*
		 * needed here as well, since ext2 (among others) may change
		 * the blocksize at mount time
		 */
		FUNC6(bdev, CD_FRAMESIZE);
	}

	FUNC3(&ctl_mutex);
	FUNC3(&pktcdvd_mutex);
	return 0;

out_dec:
	pd->refcnt--;
out:
	FUNC3(&ctl_mutex);
	FUNC3(&pktcdvd_mutex);
	return ret;
}