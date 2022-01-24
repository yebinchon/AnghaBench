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
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 size_t ATA_ID_FEATURE_SUPP ; 
 unsigned int FUNC0 (struct ata_device*,struct ata_taskfile*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static unsigned int FUNC2(struct ata_device *dev,
				       struct ata_taskfile *tf, u16 *id)
{
	u32 err_mask;

	err_mask = FUNC0(dev, tf, id);
	if (err_mask)
		return err_mask;

	/*
	 * Mask reserved area. Word78 spec of Link Power Management
	 * bit15-8: reserved
	 * bit7: NCQ autosence
	 * bit6: Software settings preservation supported
	 * bit5: reserved
	 * bit4: In-order sata delivery supported
	 * bit3: DIPM requests supported
	 * bit2: DMA Setup FIS Auto-Activate optimization supported
	 * bit1: DMA Setup FIX non-Zero buffer offsets supported
	 * bit0: Reserved
	 *
	 * Clear reserved bit 8 (DEVSLP bit) as we don't support DEVSLP
	 */
	id[ATA_ID_FEATURE_SUPP] &= FUNC1(~(1 << 8));

	return 0;
}