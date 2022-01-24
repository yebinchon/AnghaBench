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
struct pci_bits {int member_0; unsigned int member_1; int member_2; int member_3; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ata_link*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct pci_bits const*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_link *link, unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	static const struct pci_bits oldpiix_enable_bits[] = {
		{ 0x41U, 1U, 0x80UL, 0x80UL },	/* port 0 */
		{ 0x43U, 1U, 0x80UL, 0x80UL },	/* port 1 */
	};

	if (!FUNC1(pdev, &oldpiix_enable_bits[ap->port_no]))
		return -ENOENT;

	return FUNC0(link, deadline);
}