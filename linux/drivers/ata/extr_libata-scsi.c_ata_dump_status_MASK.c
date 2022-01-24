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
typedef  int u8 ;
struct ata_taskfile {int command; int feature; } ;

/* Variables and functions */
 int ATA_ABORTED ; 
 int ATA_AMNF ; 
 int ATA_BUSY ; 
 int ATA_CORR ; 
 int ATA_DF ; 
 int ATA_DRDY ; 
 int ATA_DRQ ; 
 int ATA_DSC ; 
 int ATA_ERR ; 
 int ATA_ICRC ; 
 int ATA_IDNF ; 
 int ATA_SENSE ; 
 int ATA_TRK0NF ; 
 int ATA_UNC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 

__attribute__((used)) static void FUNC2(unsigned id, struct ata_taskfile *tf)
{
	u8 stat = tf->command, err = tf->feature;

	FUNC1("ata%u: status=0x%02x { ", id, stat);
	if (stat & ATA_BUSY) {
		FUNC0("Busy }\n");	/* Data is not valid in this case */
	} else {
		if (stat & ATA_DRDY)	FUNC0("DriveReady ");
		if (stat & ATA_DF)	FUNC0("DeviceFault ");
		if (stat & ATA_DSC)	FUNC0("SeekComplete ");
		if (stat & ATA_DRQ)	FUNC0("DataRequest ");
		if (stat & ATA_CORR)	FUNC0("CorrectedError ");
		if (stat & ATA_SENSE)	FUNC0("Sense ");
		if (stat & ATA_ERR)	FUNC0("Error ");
		FUNC0("}\n");

		if (err) {
			FUNC1("ata%u: error=0x%02x { ", id, err);
			if (err & ATA_ABORTED)	FUNC0("DriveStatusError ");
			if (err & ATA_ICRC) {
				if (err & ATA_ABORTED)
						FUNC0("BadCRC ");
				else		FUNC0("Sector ");
			}
			if (err & ATA_UNC)	FUNC0("UncorrectableError ");
			if (err & ATA_IDNF)	FUNC0("SectorIdNotFound ");
			if (err & ATA_TRK0NF)	FUNC0("TrackZeroNotFound ");
			if (err & ATA_AMNF)	FUNC0("AddrMarkNotFound ");
			FUNC0("}\n");
		}
	}
}