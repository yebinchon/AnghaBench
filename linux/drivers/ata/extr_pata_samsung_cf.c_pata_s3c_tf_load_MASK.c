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
struct ata_ioports {int /*<<< orphan*/  device_addr; int /*<<< orphan*/  lbah_addr; int /*<<< orphan*/  lbam_addr; int /*<<< orphan*/  lbal_addr; int /*<<< orphan*/  nsect_addr; int /*<<< orphan*/  feature_addr; int /*<<< orphan*/  ctl_addr; } ;
struct ata_port {scalar_t__ last_ctl; int /*<<< orphan*/  host; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_TFLAG_DEVICE ; 
 unsigned int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap,
				const struct ata_taskfile *tf)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;
	unsigned int is_addr = tf->flags & ATA_TFLAG_ISADDR;

	if (tf->ctl != ap->last_ctl) {
		FUNC0(ap->host, tf->ctl, ioaddr->ctl_addr);
		ap->last_ctl = tf->ctl;
		FUNC1(ap);
	}

	if (is_addr && (tf->flags & ATA_TFLAG_LBA48)) {
		FUNC0(ap->host, tf->hob_feature, ioaddr->feature_addr);
		FUNC0(ap->host, tf->hob_nsect, ioaddr->nsect_addr);
		FUNC0(ap->host, tf->hob_lbal, ioaddr->lbal_addr);
		FUNC0(ap->host, tf->hob_lbam, ioaddr->lbam_addr);
		FUNC0(ap->host, tf->hob_lbah, ioaddr->lbah_addr);
	}

	if (is_addr) {
		FUNC0(ap->host, tf->feature, ioaddr->feature_addr);
		FUNC0(ap->host, tf->nsect, ioaddr->nsect_addr);
		FUNC0(ap->host, tf->lbal, ioaddr->lbal_addr);
		FUNC0(ap->host, tf->lbam, ioaddr->lbam_addr);
		FUNC0(ap->host, tf->lbah, ioaddr->lbah_addr);
	}

	if (tf->flags & ATA_TFLAG_DEVICE)
		FUNC0(ap->host, tf->device, ioaddr->device_addr);

	FUNC1(ap);
}