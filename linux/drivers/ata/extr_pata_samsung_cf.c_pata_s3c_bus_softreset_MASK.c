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
struct ata_ioports {int /*<<< orphan*/  ctl_addr; } ;
struct ata_port {int ctl; int last_ctl; int /*<<< orphan*/  link; int /*<<< orphan*/  host; struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int ATA_SRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ata_port *ap,
		unsigned long deadline)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;

	/* software reset.  causes dev0 to be selected */
	FUNC0(ap->host, ap->ctl, ioaddr->ctl_addr);
	FUNC2(20);
	FUNC0(ap->host, ap->ctl | ATA_SRST, ioaddr->ctl_addr);
	FUNC2(20);
	FUNC0(ap->host, ap->ctl, ioaddr->ctl_addr);
	ap->last_ctl = ap->ctl;

	return FUNC1(&ap->link, deadline);
}