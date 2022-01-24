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
struct pci_dev {int dummy; } ;
struct pci_bits {int member_0; int member_1; int member_2; int member_3; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ata_link*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct pci_bits const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ata_link *link, unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	static const struct pci_bits hpt37x_enable_bits[] = {
		{ 0x50, 1, 0x04, 0x04 },
		{ 0x54, 1, 0x04, 0x04 }
	};

	if (!FUNC1(pdev, &hpt37x_enable_bits[ap->port_no]))
		return -ENOENT;

	/* Reset the state machine */
	FUNC2(pdev, 0x50 + 4 * ap->port_no, 0x37);
	FUNC4(100);

	return FUNC0(link, deadline);
}