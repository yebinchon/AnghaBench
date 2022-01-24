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
struct scsi_device {int dummy; } ;
struct ata_port {int dummy; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 struct ata_device* FUNC0 (struct ata_port*,struct scsi_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct ata_device *
FUNC3(struct ata_port *ap, const struct scsi_device *scsidev)
{
	struct ata_device *dev = FUNC0(ap, scsidev);

	if (FUNC2(!dev || !FUNC1(dev)))
		return NULL;

	return dev;
}