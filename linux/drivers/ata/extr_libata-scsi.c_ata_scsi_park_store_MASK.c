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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  park_req_pending; } ;
struct ata_device {scalar_t__ class; int flags; size_t devno; TYPE_2__* link; int /*<<< orphan*/  unpark_deadline; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/ * dev_action; } ;
struct TYPE_4__ {TYPE_1__ eh_info; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 scalar_t__ ATA_DEV_ZAC ; 
 int ATA_DFLAG_NO_UNLOAD ; 
 int /*<<< orphan*/  ATA_EH_PARK ; 
 long ATA_TMOUT_MAX_PARK ; 
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 struct ata_device* FUNC2 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 struct scsi_device* FUNC8 (struct device*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *device,
				   struct device_attribute *attr,
				   const char *buf, size_t len)
{
	struct scsi_device *sdev = FUNC8(device);
	struct ata_port *ap;
	struct ata_device *dev;
	long int input;
	unsigned long flags;
	int rc;

	rc = FUNC5(buf, 10, &input);
	if (rc)
		return rc;
	if (input < -2)
		return -EINVAL;
	if (input > ATA_TMOUT_MAX_PARK) {
		rc = -EOVERFLOW;
		input = ATA_TMOUT_MAX_PARK;
	}

	ap = FUNC3(sdev->host);

	FUNC6(ap->lock, flags);
	dev = FUNC2(ap, sdev);
	if (FUNC9(!dev)) {
		rc = -ENODEV;
		goto unlock;
	}
	if (dev->class != ATA_DEV_ATA &&
	    dev->class != ATA_DEV_ZAC) {
		rc = -EOPNOTSUPP;
		goto unlock;
	}

	if (input >= 0) {
		if (dev->flags & ATA_DFLAG_NO_UNLOAD) {
			rc = -EOPNOTSUPP;
			goto unlock;
		}

		dev->unpark_deadline = FUNC0(jiffies, input);
		dev->link->eh_info.dev_action[dev->devno] |= ATA_EH_PARK;
		FUNC1(ap);
		FUNC4(&ap->park_req_pending);
	} else {
		switch (input) {
		case -1:
			dev->flags &= ~ATA_DFLAG_NO_UNLOAD;
			break;
		case -2:
			dev->flags |= ATA_DFLAG_NO_UNLOAD;
			break;
		}
	}
unlock:
	FUNC7(ap->lock, flags);

	return rc ? rc : len;
}