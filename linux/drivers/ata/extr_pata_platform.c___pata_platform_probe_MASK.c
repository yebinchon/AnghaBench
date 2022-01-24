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
struct scsi_host_template {int dummy; } ;
struct resource {scalar_t__ flags; int start; } ;
struct device {int dummy; } ;
struct TYPE_3__ {void* ctl_addr; void* altstatus_addr; void* cmd_addr; } ;
struct ata_port {int pio_mask; TYPE_1__ ioaddr; int /*<<< orphan*/  flags; TYPE_2__* ops; } ;
struct ata_host {struct ata_port** ports; } ;
struct TYPE_4__ {int /*<<< orphan*/  sff_data_xfer; int /*<<< orphan*/  set_mode; int /*<<< orphan*/  cable_detect; int /*<<< orphan*/ * inherits; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_FLAG_PIO_POLLING ; 
 int /*<<< orphan*/  ATA_FLAG_SLAVE_POSS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IORESOURCE_MEM ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_MASK ; 
 int /*<<< orphan*/  ata_cable_unknown ; 
 int FUNC0 (struct ata_host*,int,int /*<<< orphan*/ *,int,struct scsi_host_template*) ; 
 struct ata_host* FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,char*,...) ; 
 int /*<<< orphan*/  ata_sff_data_xfer ; 
 int /*<<< orphan*/  ata_sff_data_xfer32 ; 
 int /*<<< orphan*/ * ata_sff_interrupt ; 
 int /*<<< orphan*/  ata_sff_port_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pata_platform_set_mode ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

int FUNC9(struct device *dev, struct resource *io_res,
			  struct resource *ctl_res, struct resource *irq_res,
			  unsigned int ioport_shift, int __pio_mask,
			  struct scsi_host_template *sht, bool use16bit)
{
	struct ata_host *host;
	struct ata_port *ap;
	unsigned int mmio;
	int irq = 0;
	int irq_flags = 0;

	/*
	 * Check for MMIO
	 */
	mmio = (( io_res->flags == IORESOURCE_MEM) &&
		(ctl_res->flags == IORESOURCE_MEM));

	/*
	 * And the IRQ
	 */
	if (irq_res && irq_res->start > 0) {
		irq = irq_res->start;
		irq_flags = (irq_res->flags & IRQF_TRIGGER_MASK) | IRQF_SHARED;
	}

	/*
	 * Now that that's out of the way, wire up the port..
	 */
	host = FUNC1(dev, 1);
	if (!host)
		return -ENOMEM;
	ap = host->ports[0];

	ap->ops = FUNC6(dev, sizeof(*ap->ops), GFP_KERNEL);
	ap->ops->inherits = &ata_sff_port_ops;
	ap->ops->cable_detect = ata_cable_unknown;
	ap->ops->set_mode = pata_platform_set_mode;
	if (use16bit)
		ap->ops->sff_data_xfer = ata_sff_data_xfer;
	else
		ap->ops->sff_data_xfer = ata_sff_data_xfer32;

	ap->pio_mask = __pio_mask;
	ap->flags |= ATA_FLAG_SLAVE_POSS;

	/*
	 * Use polling mode if there's no IRQ
	 */
	if (!irq) {
		ap->flags |= ATA_FLAG_PIO_POLLING;
		FUNC2(ap, "no IRQ, using PIO polling");
	}

	/*
	 * Handle the MMIO case
	 */
	if (mmio) {
		ap->ioaddr.cmd_addr = FUNC5(dev, io_res->start,
				FUNC8(io_res));
		ap->ioaddr.ctl_addr = FUNC5(dev, ctl_res->start,
				FUNC8(ctl_res));
	} else {
		ap->ioaddr.cmd_addr = FUNC4(dev, io_res->start,
				FUNC8(io_res));
		ap->ioaddr.ctl_addr = FUNC4(dev, ctl_res->start,
				FUNC8(ctl_res));
	}
	if (!ap->ioaddr.cmd_addr || !ap->ioaddr.ctl_addr) {
		FUNC3(dev, "failed to map IO/CTL base\n");
		return -ENOMEM;
	}

	ap->ioaddr.altstatus_addr = ap->ioaddr.ctl_addr;

	FUNC7(&ap->ioaddr, ioport_shift);

	FUNC2(ap, "%s cmd 0x%llx ctl 0x%llx", mmio ? "mmio" : "ioport",
		      (unsigned long long)io_res->start,
		      (unsigned long long)ctl_res->start);

	/* activate */
	return FUNC0(host, irq, irq ? ata_sff_interrupt : NULL,
				 irq_flags, sht);
}