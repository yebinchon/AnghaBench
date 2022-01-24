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
struct scsi_host_template {int dummy; } ;
struct ata_host {int n_ports; int /*<<< orphan*/  dev; int /*<<< orphan*/ * ports; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ata_host*,struct scsi_host_template*) ; 
 int FUNC2 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct ata_host*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long,char*,struct ata_host*) ; 

int FUNC9(struct ata_host *host, int irq,
		      irq_handler_t irq_handler, unsigned long irq_flags,
		      struct scsi_host_template *sht)
{
	int i, rc;
	char *irq_desc;

	rc = FUNC2(host);
	if (rc)
		return rc;

	/* Special case for polling mode */
	if (!irq) {
		FUNC0(irq_handler);
		return FUNC1(host, sht);
	}

	irq_desc = FUNC7(host->dev, GFP_KERNEL, "%s[%s]",
				  FUNC4(host->dev),
				  FUNC5(host->dev));
	if (!irq_desc)
		return -ENOMEM;

	rc = FUNC8(host->dev, irq, irq_handler, irq_flags,
			      irq_desc, host);
	if (rc)
		return rc;

	for (i = 0; i < host->n_ports; i++)
		FUNC3(host->ports[i], "irq %d", irq);

	rc = FUNC1(host, sht);
	/* if failed, just free the IRQ and leave ports alone */
	if (rc)
		FUNC6(host->dev, irq, host);

	return rc;
}