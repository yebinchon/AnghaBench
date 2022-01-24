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
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_link {int /*<<< orphan*/ * device; struct ata_port* ap; } ;
struct ata_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct ata_link*,struct ata_device**) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ata_link *link, struct ata_device **r_failed)
{
	struct ata_port *ap = link->ap;
	u8 r;
	int nybble = 4 * ap->port_no;
	struct pci_dev *pdev = FUNC4(ap->host->dev);
	int rc  = FUNC0(link, r_failed);
	if (rc == 0) {
		FUNC2(pdev, 0x43, &r);

		r &= (0x0F << nybble);
		r |= (FUNC1(&link->device[0]) +
		     (FUNC1(&link->device[0]) << 2)) << nybble;
		FUNC3(pdev, 0x43, r);
	}
	return rc;
}