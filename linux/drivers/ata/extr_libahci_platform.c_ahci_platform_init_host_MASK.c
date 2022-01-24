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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef  struct ata_port_info {int flags; void* private_data; } const ata_port_info ;
struct ata_port {int port_no; int flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  em_message_type; } ;
struct ata_host {int n_ports; struct ata_port** ports; int /*<<< orphan*/  flags; struct ahci_host_priv* private_data; } ;
struct ahci_host_priv {int irq; int cap; int port_map; int /*<<< orphan*/  em_msg_type; scalar_t__ flags; } ;

/* Variables and functions */
 int ATA_FLAG_EM ; 
 int ATA_FLAG_NCQ ; 
 int ATA_FLAG_PMP ; 
 int /*<<< orphan*/  ATA_HOST_PARALLEL_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int HOST_CAP_64 ; 
 int HOST_CAP_NCQ ; 
 int HOST_CAP_PMP ; 
 int HOST_CAP_SSS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int FUNC1 (struct ata_host*,struct scsi_host_template*) ; 
 scalar_t__ ahci_ignore_sss ; 
 int /*<<< orphan*/  FUNC2 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_host*,char*) ; 
 int FUNC5 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahci_host_priv*,struct ata_port_info const*) ; 
 int /*<<< orphan*/  ata_dummy_port_ops ; 
 struct ata_host* FUNC9 (struct device*,struct ata_port_info const**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ata_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC19(struct platform_device *pdev,
			    struct ahci_host_priv *hpriv,
			    const struct ata_port_info *pi_template,
			    struct scsi_host_template *sht)
{
	struct device *dev = &pdev->dev;
	struct ata_port_info pi = *pi_template;
	const struct ata_port_info *ppi[] = { &pi, NULL };
	struct ata_host *host;
	int i, irq, n_ports, rc;

	irq = FUNC17(pdev, 0);
	if (irq <= 0) {
		if (irq != -EPROBE_DEFER)
			FUNC11(dev, "no irq\n");
		return irq;
	}

	hpriv->irq = irq;

	/* prepare host */
	pi.private_data = (void *)(unsigned long)hpriv->flags;

	FUNC7(dev, hpriv);

	if (hpriv->cap & HOST_CAP_NCQ)
		pi.flags |= ATA_FLAG_NCQ;

	if (hpriv->cap & HOST_CAP_PMP)
		pi.flags |= ATA_FLAG_PMP;

	FUNC8(hpriv, &pi);

	/* CAP.NP sometimes indicate the index of the last enabled
	 * port, at other times, that of the last possible port, so
	 * determining the maximum port number requires looking at
	 * both CAP.NP and port_map.
	 */
	n_ports = FUNC16(FUNC3(hpriv->cap), FUNC15(hpriv->port_map));

	host = FUNC9(dev, ppi, n_ports);
	if (!host)
		return -ENOMEM;

	host->private_data = hpriv;

	if (!(hpriv->cap & HOST_CAP_SSS) || ahci_ignore_sss)
		host->flags |= ATA_HOST_PARALLEL_SCAN;
	else
		FUNC12(dev, "SSS flag set, parallel bus scan disabled\n");

	if (pi.flags & ATA_FLAG_EM)
		FUNC6(host);

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];

		FUNC10(ap, "mmio %pR",
			      FUNC18(pdev, IORESOURCE_MEM, 0));
		FUNC10(ap, "port 0x%x", 0x100 + ap->port_no * 0x80);

		/* set enclosure management message type */
		if (ap->flags & ATA_FLAG_EM)
			ap->em_message_type = hpriv->em_msg_type;

		/* disabled/not-implemented port */
		if (!(hpriv->port_map & (1 << i)))
			ap->ops = &ata_dummy_port_ops;
	}

	if (hpriv->cap & HOST_CAP_64) {
		rc = FUNC14(dev, FUNC0(64));
		if (rc) {
			rc = FUNC14(dev,
							  FUNC0(32));
			if (rc) {
				FUNC11(dev, "Failed to enable 64-bit DMA.\n");
				return rc;
			}
			FUNC13(dev, "Enable 32-bit DMA instead of 64-bit.\n");
		}
	}

	rc = FUNC5(host);
	if (rc)
		return rc;

	FUNC2(host);
	FUNC4(host, "platform");

	return FUNC1(host, sht);
}