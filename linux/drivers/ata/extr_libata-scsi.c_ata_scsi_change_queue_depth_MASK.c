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
struct ata_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ata_port*,struct scsi_device*,int) ; 
 struct ata_port* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct scsi_device *sdev, int queue_depth)
{
	struct ata_port *ap = FUNC1(sdev->host);

	return FUNC0(ap, sdev, queue_depth);
}