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
struct ata_taskfile {unsigned int flags; scalar_t__ ctl; scalar_t__ hob_feature; scalar_t__ hob_nsect; scalar_t__ hob_lbal; scalar_t__ hob_lbam; scalar_t__ hob_lbah; scalar_t__ feature; scalar_t__ nsect; scalar_t__ lbal; scalar_t__ lbam; scalar_t__ lbah; scalar_t__ device; } ;
struct ata_ioports {scalar_t__ device_addr; scalar_t__ lbah_addr; scalar_t__ lbam_addr; scalar_t__ lbal_addr; scalar_t__ nsect_addr; scalar_t__ feature_addr; scalar_t__ ctl_addr; } ;
struct ata_port {scalar_t__ last_ctl; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_TFLAG_DEVICE ; 
 unsigned int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

void FUNC4(struct ata_port *ap, const struct ata_taskfile *tf)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;
	unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;

	if (tf->ctl != ap->last_ctl) {
		if (ioaddr->ctl_addr)
			FUNC3(tf->ctl, ioaddr->ctl_addr);
		ap->last_ctl = tf->ctl;
		FUNC2(ap);
	}

	if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
		FUNC1(!ioaddr->ctl_addr);
		FUNC3(tf->hob_feature, ioaddr->feature_addr);
		FUNC3(tf->hob_nsect, ioaddr->nsect_addr);
		FUNC3(tf->hob_lbal, ioaddr->lbal_addr);
		FUNC3(tf->hob_lbam, ioaddr->lbam_addr);
		FUNC3(tf->hob_lbah, ioaddr->lbah_addr);
		FUNC0("hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\n",
			tf->hob_feature,
			tf->hob_nsect,
			tf->hob_lbal,
			tf->hob_lbam,
			tf->hob_lbah);
	}

	if (is_addr) {
		FUNC3(tf->feature, ioaddr->feature_addr);
		FUNC3(tf->nsect, ioaddr->nsect_addr);
		FUNC3(tf->lbal, ioaddr->lbal_addr);
		FUNC3(tf->lbam, ioaddr->lbam_addr);
		FUNC3(tf->lbah, ioaddr->lbah_addr);
		FUNC0("feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\n",
			tf->feature,
			tf->nsect,
			tf->lbal,
			tf->lbam,
			tf->lbah);
	}

	if (tf->flags & ATA_TFLAG_DEVICE) {
		FUNC3(tf->device, ioaddr->device_addr);
		FUNC0("device 0x%X\n", tf->device);
	}

	FUNC2(ap);
}