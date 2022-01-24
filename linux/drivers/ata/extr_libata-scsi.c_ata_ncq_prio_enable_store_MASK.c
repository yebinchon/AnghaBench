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
struct ata_port {int /*<<< orphan*/  lock; } ;
struct ata_device {int flags; TYPE_2__* link; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  action; } ;
struct TYPE_4__ {TYPE_1__ eh_info; } ;

/* Variables and functions */
 int ATA_DFLAG_NCQ_PRIO ; 
 int ATA_DFLAG_NCQ_PRIO_ENABLE ; 
 int /*<<< orphan*/  ATA_EHI_QUIET ; 
 int /*<<< orphan*/  ATA_EH_REVALIDATE ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 struct ata_device* FUNC2 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC7 (struct device*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *device,
					 struct device_attribute *attr,
					 const char *buf, size_t len)
{
	struct scsi_device *sdev = FUNC7(device);
	struct ata_port *ap;
	struct ata_device *dev;
	long int input;
	int rc;

	rc = FUNC4(buf, 10, &input);
	if (rc)
		return rc;
	if ((input < 0) || (input > 1))
		return -EINVAL;

	ap = FUNC3(sdev->host);
	dev = FUNC2(ap, sdev);
	if (FUNC8(!dev))
		return  -ENODEV;

	FUNC5(ap->lock);
	if (input)
		dev->flags |= ATA_DFLAG_NCQ_PRIO_ENABLE;
	else
		dev->flags &= ~ATA_DFLAG_NCQ_PRIO_ENABLE;

	dev->link->eh_info.action |= ATA_EH_REVALIDATE;
	dev->link->eh_info.flags |= ATA_EHI_QUIET;
	FUNC0(ap);
	FUNC6(ap->lock);

	FUNC1(ap);

	if (input) {
		FUNC5(ap->lock);
		if (!(dev->flags & ATA_DFLAG_NCQ_PRIO)) {
			dev->flags &= ~ATA_DFLAG_NCQ_PRIO_ENABLE;
			rc = -EIO;
		}
		FUNC6(ap->lock);
	}

	return rc ? rc : len;
}