#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  action; } ;
struct ata_eh_context {TYPE_2__ i; } ;
struct TYPE_3__ {struct ata_eh_context eh_context; } ;
struct ata_port {int pflags; TYPE_1__ link; } ;
struct ata_link {struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_EH_RESET ; 
 int ATA_PFLAG_LOADING ; 
 int HZ ; 
 int /*<<< orphan*/  SCR_CONTROL ; 
 int /*<<< orphan*/  SCR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_link*,unsigned long) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct ata_link*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_link*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ata_link *link, unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	struct ata_eh_context *ehc = &ap->link.eh_context;
	unsigned long timeout = jiffies + (HZ * 5);
	u32 sstatus, scontrol;
	int online;

	/* don't do any SCR stuff if we're not loading */
	if (!(ap->pflags & ATA_PFLAG_LOADING))
		goto skip_scr;

	/* Resume phy.  This is the old SATA resume sequence */
	FUNC4(link, SCR_CONTROL, 0x300);
	FUNC3(link, SCR_CONTROL, &scontrol); /* flush */

	/* wait for phy to become ready, if necessary */
	do {
		FUNC0(link->ap, 200);
		FUNC3(link, SCR_STATUS, &sstatus);
		if ((sstatus & 0xf) != 1)
			break;
	} while (FUNC5(jiffies, timeout));

	/* open code sata_print_link_status() */
	FUNC3(link, SCR_STATUS, &sstatus);
	FUNC3(link, SCR_CONTROL, &scontrol);

	online = (sstatus & 0xf) == 0x3;

	FUNC1(ap,
		      "SATA link %s 1.5 Gbps (SStatus %X SControl %X)\n",
		      online ? "up" : "down", sstatus, scontrol);

	/* SStatus is read one more time */
	FUNC3(link, SCR_STATUS, &sstatus);

	if (!online) {
		/* tell EH to bail */
		ehc->i.action &= ~ATA_EH_RESET;
		return 0;
	}

 skip_scr:
	/* wait for !BSY */
	FUNC2(link, deadline);

	return 0;
}