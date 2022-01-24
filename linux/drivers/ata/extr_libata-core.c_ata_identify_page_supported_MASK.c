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
typedef  unsigned int u8 ;
struct ata_port {unsigned int* sector_buf; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_LOG_IDENTIFY_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct ata_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static bool FUNC4(struct ata_device *dev, u8 page)
{
	struct ata_port *ap = dev->link->ap;
	unsigned int err, i;

	if (!FUNC2(dev, ATA_LOG_IDENTIFY_DEVICE)) {
		FUNC1(dev, "ATA Identify Device Log not supported\n");
		return false;
	}

	/*
	 * Read IDENTIFY DEVICE data log, page 0, to figure out if the page is
	 * supported.
	 */
	err = FUNC3(dev, ATA_LOG_IDENTIFY_DEVICE, 0, ap->sector_buf,
				1);
	if (err) {
		FUNC0(dev,
			     "failed to get Device Identify Log Emask 0x%x\n",
			     err);
		return false;
	}

	for (i = 0; i < ap->sector_buf[8]; i++) {
		if (ap->sector_buf[9 + i] == page)
			return true;
	}

	return false;
}