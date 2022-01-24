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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int flags; TYPE_1__* ops; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* em_store ) (struct ata_port*,char const*,size_t) ;} ;

/* Variables and functions */
 int ATA_FLAG_EM ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ata_port* FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,char const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct ata_port *ap = FUNC0(shost);
	if (ap->ops->em_store && (ap->flags & ATA_FLAG_EM))
		return ap->ops->em_store(ap, buf, count);
	return -EINVAL;
}