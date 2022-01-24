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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ecx_plat_data {int /*<<< orphan*/  n_ports; } ;
typedef  struct ata_port_info {int /*<<< orphan*/  flags; scalar_t__ private_data; } const ata_port_info ;
struct ata_port {int port_no; int flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  em_message_type; } ;
struct ata_host {int n_ports; struct ata_port** ports; int /*<<< orphan*/  flags; struct ahci_host_priv* private_data; } ;
struct ahci_host_priv {int irq; unsigned long flags; int cap; int port_map; int /*<<< orphan*/  em_msg_type; struct ecx_plat_data* plat_data; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int ATA_FLAG_EM ; 
 int /*<<< orphan*/  ATA_FLAG_NCQ ; 
 int /*<<< orphan*/  ATA_FLAG_PMP ; 
 int /*<<< orphan*/  ATA_HOST_PARALLEL_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HOST_CAP_64 ; 
 int HOST_CAP_NCQ ; 
 int HOST_CAP_PMP ; 
 int HOST_CAP_SSS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  ahci_highbank_platform_sht ; 
 struct ata_port_info const ahci_highbank_port_info ; 
 int FUNC1 (struct ata_host*,int /*<<< orphan*/ *) ; 
 scalar_t__ ahci_ignore_sss ; 
 int /*<<< orphan*/  FUNC2 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_host*,char*) ; 
 int FUNC5 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct ahci_host_priv*) ; 
 int /*<<< orphan*/  ata_dummy_port_ops ; 
 struct ata_host* FUNC7 (struct device*,struct ata_port_info const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_port*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,struct ahci_host_priv*,struct ata_port_info const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct resource*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ahci_host_priv *hpriv;
	struct ecx_plat_data *pdata;
	struct ata_host *host;
	struct resource *mem;
	int irq;
	int i;
	int rc;
	u32 n_ports;
	struct ata_port_info pi = ahci_highbank_port_info;
	const struct ata_port_info *ppi[] = { &pi, NULL };

	mem = FUNC18(pdev, IORESOURCE_MEM, 0);
	if (!mem) {
		FUNC9(dev, "no mmio space\n");
		return -EINVAL;
	}

	irq = FUNC17(pdev, 0);
	if (irq <= 0) {
		FUNC9(dev, "no irq\n");
		return -EINVAL;
	}

	hpriv = FUNC11(dev, sizeof(*hpriv), GFP_KERNEL);
	if (!hpriv) {
		FUNC9(dev, "can't alloc ahci_host_priv\n");
		return -ENOMEM;
	}
	pdata = FUNC11(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata) {
		FUNC9(dev, "can't alloc ecx_plat_data\n");
		return -ENOMEM;
	}

	hpriv->irq = irq;
	hpriv->flags |= (unsigned long)pi.private_data;

	hpriv->mmio = FUNC10(dev, mem->start, FUNC19(mem));
	if (!hpriv->mmio) {
		FUNC9(dev, "can't map %pR\n", mem);
		return -ENOMEM;
	}

	rc = FUNC14(dev, hpriv->mmio);
	if (rc)
		return rc;


	FUNC6(dev, hpriv);

	/* prepare host */
	if (hpriv->cap & HOST_CAP_NCQ)
		pi.flags |= ATA_FLAG_NCQ;

	if (hpriv->cap & HOST_CAP_PMP)
		pi.flags |= ATA_FLAG_PMP;

	if (hpriv->cap & HOST_CAP_64)
		FUNC12(dev, FUNC0(64));

	/* CAP.NP sometimes indicate the index of the last enabled
	 * port, at other times, that of the last possible port, so
	 * determining the maximum port number requires looking at
	 * both CAP.NP and port_map.
	 */
	n_ports = FUNC16(FUNC3(hpriv->cap), FUNC13(hpriv->port_map));

	pdata->n_ports = n_ports;
	hpriv->plat_data = pdata;
	FUNC15(dev, hpriv, &pi);

	host = FUNC7(dev, ppi, n_ports);
	if (!host) {
		rc = -ENOMEM;
		goto err0;
	}

	host->private_data = hpriv;

	if (!(hpriv->cap & HOST_CAP_SSS) || ahci_ignore_sss)
		host->flags |= ATA_HOST_PARALLEL_SCAN;

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];

		FUNC8(ap, "mmio %pR", mem);
		FUNC8(ap, "port 0x%x", 0x100 + ap->port_no * 0x80);

		/* set enclosure management message type */
		if (ap->flags & ATA_FLAG_EM)
			ap->em_message_type = hpriv->em_msg_type;

		/* disabled/not-implemented port */
		if (!(hpriv->port_map & (1 << i)))
			ap->ops = &ata_dummy_port_ops;
	}

	rc = FUNC5(host);
	if (rc)
		goto err0;

	FUNC2(host);
	FUNC4(host, "platform");

	rc = FUNC1(host, &ahci_highbank_platform_sht);
	if (rc)
		goto err0;

	return 0;
err0:
	return rc;
}