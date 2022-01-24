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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int /*<<< orphan*/  lock; } ;
struct ata_device {int flags; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ATA_DFLAG_NCQ_PRIO_ENABLE ; 
 int ENODEV ; 
 struct ata_device* FUNC0 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
					struct device_attribute *attr,
					char *buf)
{
	struct scsi_device *sdev = FUNC5(device);
	struct ata_port *ap;
	struct ata_device *dev;
	bool ncq_prio_enable;
	int rc = 0;

	ap = FUNC1(sdev->host);

	FUNC3(ap->lock);
	dev = FUNC0(ap, sdev);
	if (!dev) {
		rc = -ENODEV;
		goto unlock;
	}

	ncq_prio_enable = dev->flags & ATA_DFLAG_NCQ_PRIO_ENABLE;

unlock:
	FUNC4(ap->lock);

	return rc ? rc : FUNC2(buf, 20, "%u\n", ncq_prio_enable);
}