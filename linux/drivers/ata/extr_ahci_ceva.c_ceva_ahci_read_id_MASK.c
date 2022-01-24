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
	 * Since CEVA controller does not support device sleep feature, we
	 * need to clear DEVSLP (bit 8) in word78 of the IDENTIFY DEVICE data.
	 */
	id[ATA_ID_FEATURE_SUPP] &= FUNC1(~(1 << 8));

	return 0;
}