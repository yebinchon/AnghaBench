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
struct pktcdvd_device {int refcnt; int /*<<< orphan*/  bdev; } ;
struct block_device {int /*<<< orphan*/  bd_dev; TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct pktcdvd_device* private_data; } ;

/* Variables and functions */
#define  CDROMEJECT 133 
#define  CDROMMULTISESSION 132 
#define  CDROMREADTOCENTRY 131 
#define  CDROM_LAST_WRITTEN 130 
#define  CDROM_SEND_PACKET 129 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  SCSI_IOCTL_SEND_COMMAND 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,struct pktcdvd_device*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct pktcdvd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pktcdvd_mutex ; 

__attribute__((used)) static int FUNC7(struct block_device *bdev, fmode_t mode, unsigned int cmd, unsigned long arg)
{
	struct pktcdvd_device *pd = bdev->bd_disk->private_data;
	int ret;

	FUNC5(2, pd, "cmd %x, dev %d:%d\n",
		cmd, FUNC0(bdev->bd_dev), FUNC1(bdev->bd_dev));

	FUNC3(&pktcdvd_mutex);
	switch (cmd) {
	case CDROMEJECT:
		/*
		 * The door gets locked when the device is opened, so we
		 * have to unlock it or else the eject command fails.
		 */
		if (pd->refcnt == 1)
			FUNC6(pd, 0);
		/* fall through */
	/*
	 * forward selected CDROM ioctls to CD-ROM, for UDF
	 */
	case CDROMMULTISESSION:
	case CDROMREADTOCENTRY:
	case CDROM_LAST_WRITTEN:
	case CDROM_SEND_PACKET:
	case SCSI_IOCTL_SEND_COMMAND:
		ret = FUNC2(pd->bdev, mode, cmd, arg);
		break;

	default:
		FUNC5(2, pd, "Unknown ioctl (%x)\n", cmd);
		ret = -ENOTTY;
	}
	FUNC4(&pktcdvd_mutex);

	return ret;
}