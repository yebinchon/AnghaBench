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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ixp4xx_pata_data {int /*<<< orphan*/  cs1_bits; int /*<<< orphan*/ * cs1_cfg; int /*<<< orphan*/  cs0_bits; int /*<<< orphan*/ * cs0_cfg; void* cs1; void* cs0; } ;
struct ata_port {int /*<<< orphan*/  flags; int /*<<< orphan*/  pio_mask; int /*<<< orphan*/ * ops; } ;
struct ata_host {struct ata_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_FLAG_NO_ATAPI ; 
 int /*<<< orphan*/  ATA_PIO4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int FUNC1 (struct ata_host*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ata_host* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_sff_interrupt ; 
 struct ixp4xx_pata_data* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixp4xx_port_ops ; 
 int /*<<< orphan*/  FUNC8 (struct ata_port*,struct ixp4xx_pata_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixp4xx_sht ; 
 unsigned int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	unsigned int irq;
	struct resource *cs0, *cs1;
	struct ata_host *host;
	struct ata_port *ap;
	struct ixp4xx_pata_data *data = FUNC4(&pdev->dev);
	int ret;

	cs0 = FUNC10(pdev, IORESOURCE_MEM, 0);
	cs1 = FUNC10(pdev, IORESOURCE_MEM, 1);

	if (!cs0 || !cs1)
		return -EINVAL;

	/* allocate host */
	host = FUNC2(&pdev->dev, 1);
	if (!host)
		return -ENOMEM;

	/* acquire resources and fill host */
	ret = FUNC6(&pdev->dev, FUNC0(32));
	if (ret)
		return ret;

	data->cs0 = FUNC5(&pdev->dev, cs0->start, 0x1000);
	data->cs1 = FUNC5(&pdev->dev, cs1->start, 0x1000);

	if (!data->cs0 || !data->cs1)
		return -ENOMEM;

	irq = FUNC9(pdev, 0);
	if (irq)
		FUNC7(irq, IRQ_TYPE_EDGE_RISING);

	/* Setup expansion bus chip selects */
	*data->cs0_cfg = data->cs0_bits;
	*data->cs1_cfg = data->cs1_bits;

	ap = host->ports[0];

	ap->ops	= &ixp4xx_port_ops;
	ap->pio_mask = ATA_PIO4;
	ap->flags |= ATA_FLAG_NO_ATAPI;

	FUNC8(ap, data, cs0->start, cs1->start);

	FUNC3(&pdev->dev, DRV_VERSION);

	/* activate host */
	return FUNC1(host, irq, ata_sff_interrupt, 0, &ixp4xx_sht);
}