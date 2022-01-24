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
struct ata_taskfile {int flags; int ctl; void* hob_lbah; void* hob_lbam; void* hob_lbal; void* hob_nsect; void* hob_feature; void* device; void* lbah; void* lbam; void* lbal; void* nsect; void* feature; int /*<<< orphan*/  command; } ;
struct ata_ioports {int /*<<< orphan*/  ctl_addr; int /*<<< orphan*/  lbah_addr; int /*<<< orphan*/  lbam_addr; int /*<<< orphan*/  lbal_addr; int /*<<< orphan*/  nsect_addr; int /*<<< orphan*/  error_addr; int /*<<< orphan*/  device_addr; } ;
struct ata_port {int last_ctl; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_HOB ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ata_port *ap, struct ata_taskfile *tf)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;

	tf->command = FUNC1(ap);
	tf->feature = FUNC2(ioaddr->error_addr);
	tf->nsect = FUNC2(ioaddr->nsect_addr);
	tf->lbal = FUNC2(ioaddr->lbal_addr);
	tf->lbam = FUNC2(ioaddr->lbam_addr);
	tf->lbah = FUNC2(ioaddr->lbah_addr);
	tf->device = FUNC2(ioaddr->device_addr);

	if (tf->flags & ATA_TFLAG_LBA48) {
		if (FUNC4(ioaddr->ctl_addr)) {
			FUNC3(tf->ctl | ATA_HOB, ioaddr->ctl_addr);
			tf->hob_feature = FUNC2(ioaddr->error_addr);
			tf->hob_nsect = FUNC2(ioaddr->nsect_addr);
			tf->hob_lbal = FUNC2(ioaddr->lbal_addr);
			tf->hob_lbam = FUNC2(ioaddr->lbam_addr);
			tf->hob_lbah = FUNC2(ioaddr->lbah_addr);
			FUNC3(tf->ctl, ioaddr->ctl_addr);
			ap->last_ctl = tf->ctl;
		} else
			FUNC0(1);
	}
}