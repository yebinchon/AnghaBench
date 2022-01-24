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
typedef  scalar_t__ u64 ;
struct ata_taskfile {int flags; int feature; int /*<<< orphan*/  device; int /*<<< orphan*/  protocol; int /*<<< orphan*/  command; } ;
struct ata_device {int horkage; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned int AC_ERR_DEV ; 
 int ATA_ABORTED ; 
 int /*<<< orphan*/  ATA_CMD_READ_NATIVE_MAX ; 
 int /*<<< orphan*/  ATA_CMD_READ_NATIVE_MAX_EXT ; 
 int ATA_HORKAGE_HPA_SIZE ; 
 int /*<<< orphan*/  ATA_LBA ; 
 int /*<<< orphan*/  ATA_PROT_NODATA ; 
 int ATA_TFLAG_DEVICE ; 
 int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int EACCES ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,char*,unsigned int) ; 
 unsigned int FUNC1 (struct ata_device*,struct ata_taskfile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,struct ata_taskfile*) ; 
 scalar_t__ FUNC4 (struct ata_taskfile*) ; 
 scalar_t__ FUNC5 (struct ata_taskfile*) ; 

__attribute__((used)) static int FUNC6(struct ata_device *dev, u64 *max_sectors)
{
	unsigned int err_mask;
	struct ata_taskfile tf;
	int lba48 = FUNC2(dev->id);

	FUNC3(dev, &tf);

	/* always clear all address registers */
	tf.flags |= ATA_TFLAG_DEVICE | ATA_TFLAG_ISADDR;

	if (lba48) {
		tf.command = ATA_CMD_READ_NATIVE_MAX_EXT;
		tf.flags |= ATA_TFLAG_LBA48;
	} else
		tf.command = ATA_CMD_READ_NATIVE_MAX;

	tf.protocol = ATA_PROT_NODATA;
	tf.device |= ATA_LBA;

	err_mask = FUNC1(dev, &tf, NULL, DMA_NONE, NULL, 0, 0);
	if (err_mask) {
		FUNC0(dev,
			     "failed to read native max address (err_mask=0x%x)\n",
			     err_mask);
		if (err_mask == AC_ERR_DEV && (tf.feature & ATA_ABORTED))
			return -EACCES;
		return -EIO;
	}

	if (lba48)
		*max_sectors = FUNC5(&tf) + 1;
	else
		*max_sectors = FUNC4(&tf) + 1;
	if (dev->horkage & ATA_HORKAGE_HPA_SIZE)
		(*max_sectors)--;
	return 0;
}