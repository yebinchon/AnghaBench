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
typedef  int u8 ;
struct pci_device_id {unsigned int driver_data; } ;
struct device {int dummy; } ;
struct pci_dev {int vendor; int device; int revision; struct device dev; } ;
typedef  struct ata_port_info {int flags; scalar_t__ private_data; } const ata_port_info ;
struct ata_port {int port_no; int flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  em_message_type; } ;
struct ata_host {int n_ports; struct ata_port** ports; int /*<<< orphan*/  flags; struct ahci_host_priv* private_data; } ;
struct ahci_host_priv {unsigned long flags; int cap; int port_map; int /*<<< orphan*/  em_msg_type; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_handler; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 unsigned long AHCI_HFLAG_32BIT_ONLY ; 
 unsigned long AHCI_HFLAG_IGN_SERR_INTERNAL ; 
 unsigned long AHCI_HFLAG_NO_DEVSLP ; 
 int AHCI_HFLAG_NO_FPDMA_AA ; 
 unsigned long AHCI_HFLAG_NO_MSI ; 
 int AHCI_HFLAG_NO_SUSPEND ; 
 int AHCI_HFLAG_SRST_TOUT_IS_OFFLINE ; 
 int AHCI_MAX_CMDS ; 
 int AHCI_PCI_BAR_CAVIUM ; 
 int AHCI_PCI_BAR_CAVIUM_GEN5 ; 
 int AHCI_PCI_BAR_ENMOTUS ; 
 int AHCI_PCI_BAR_STA2X11 ; 
 int AHCI_PCI_BAR_STANDARD ; 
 int ATA_FLAG_EM ; 
 int ATA_FLAG_FPDMA_AA ; 
 int ATA_FLAG_FPDMA_AUX ; 
 int ATA_FLAG_NCQ ; 
 int ATA_FLAG_NO_LPM ; 
 int ATA_FLAG_NO_POWEROFF_SPINDOWN ; 
 int ATA_FLAG_PMP ; 
 int /*<<< orphan*/  ATA_HOST_PARALLEL_SCAN ; 
 scalar_t__ ATA_MAX_QUEUE ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HOST_CAP_64 ; 
 int HOST_CAP_NCQ ; 
 int HOST_CAP_PMP ; 
 int HOST_CAP_SSS ; 
 int /*<<< orphan*/  ICH_MAP ; 
 int PCI_VENDOR_ID_CAVIUM ; 
 int PCI_VENDOR_ID_INTEL ; 
 int PCI_VENDOR_ID_MARVELL ; 
 int PCI_VENDOR_ID_PROMISE ; 
 int PCI_VENDOR_ID_STMICRO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_host_priv*,struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ata_host*) ; 
 int FUNC10 (struct ata_host*,int /*<<< orphan*/ *) ; 
 scalar_t__ ahci_ignore_sss ; 
 scalar_t__ FUNC11 (struct pci_dev*,int,struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,struct ahci_host_priv*) ; 
 struct ata_port_info const* ahci_port_info ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int,struct ahci_host_priv*) ; 
 int FUNC20 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC21 (struct ata_host*) ; 
 scalar_t__ FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct ahci_host_priv*,struct ata_port_info const*) ; 
 int /*<<< orphan*/  ahci_sht ; 
 int /*<<< orphan*/  ahci_thunderx_irq_handler ; 
 int /*<<< orphan*/  FUNC24 (struct ata_port*,struct ahci_host_priv*) ; 
 int /*<<< orphan*/  ata_dummy_port_ops ; 
 struct ata_host* FUNC25 (struct device*,struct ata_port_info const**,int) ; 
 int /*<<< orphan*/  FUNC26 (struct ata_port*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*,int /*<<< orphan*/ ) ; 
 unsigned int board_ahci_mcp65 ; 
 unsigned int board_ahci_sb700 ; 
 int /*<<< orphan*/  FUNC28 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC29 (struct device*,char*) ; 
 struct ahci_host_priv* FUNC30 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 scalar_t__ FUNC32 (struct pci_dev*) ; 
 int /*<<< orphan*/  marvell_enable ; 
 int FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC37 (struct pci_dev*) ; 
 int FUNC38 (struct pci_dev*) ; 
 int FUNC39 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC40 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC41 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC42 (struct device*) ; 

__attribute__((used)) static int FUNC43(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	unsigned int board_id = ent->driver_data;
	struct ata_port_info pi = ahci_port_info[board_id];
	const struct ata_port_info *ppi[] = { &pi, NULL };
	struct device *dev = &pdev->dev;
	struct ahci_host_priv *hpriv;
	struct ata_host *host;
	int n_ports, i, rc;
	int ahci_pci_bar = AHCI_PCI_BAR_STANDARD;

	FUNC0("ENTER\n");

	FUNC1((int)ATA_MAX_QUEUE > AHCI_MAX_CMDS);

	FUNC27(&pdev->dev, DRV_VERSION);

	/* The AHCI driver can only drive the SATA ports, the PATA driver
	   can drive them all so if both drivers are selected make sure
	   AHCI stays out of the way */
	if (pdev->vendor == PCI_VENDOR_ID_MARVELL && !marvell_enable)
		return -ENODEV;

	/* Apple BIOS on MCP89 prevents us using AHCI */
	if (FUNC32(pdev))
		FUNC13(pdev);

	/* Promise's PDC42819 is a SAS/SATA controller that has an AHCI mode.
	 * At the moment, we can only use the AHCI mode. Let the users know
	 * that for SAS drives they're out of luck.
	 */
	if (pdev->vendor == PCI_VENDOR_ID_PROMISE)
		FUNC28(&pdev->dev,
			 "PDC42819 can only drive SATA devices with this driver\n");

	/* Some devices use non-standard BARs */
	if (pdev->vendor == PCI_VENDOR_ID_STMICRO && pdev->device == 0xCC06)
		ahci_pci_bar = AHCI_PCI_BAR_STA2X11;
	else if (pdev->vendor == 0x1c44 && pdev->device == 0x8000)
		ahci_pci_bar = AHCI_PCI_BAR_ENMOTUS;
	else if (pdev->vendor == PCI_VENDOR_ID_CAVIUM) {
		if (pdev->device == 0xa01c)
			ahci_pci_bar = AHCI_PCI_BAR_CAVIUM;
		if (pdev->device == 0xa084)
			ahci_pci_bar = AHCI_PCI_BAR_CAVIUM_GEN5;
	}

	/* acquire resources */
	rc = FUNC38(pdev);
	if (rc)
		return rc;

	if (pdev->vendor == PCI_VENDOR_ID_INTEL &&
	    (pdev->device == 0x2652 || pdev->device == 0x2653)) {
		u8 map;

		/* ICH6s share the same PCI ID for both piix and ahci
		 * modes.  Enabling ahci mode while MAP indicates
		 * combined mode is a bad idea.  Yield to ata_piix.
		 */
		FUNC36(pdev, ICH_MAP, &map);
		if (map & 0x3) {
			FUNC28(&pdev->dev,
				 "controller is in combined mode, can't enable AHCI mode\n");
			return -ENODEV;
		}
	}

	/* AHCI controllers often implement SFF compatible interface.
	 * Grab all PCI BARs just in case.
	 */
	rc = FUNC39(pdev, 1 << ahci_pci_bar, DRV_NAME);
	if (rc == -EBUSY)
		FUNC41(pdev);
	if (rc)
		return rc;

	hpriv = FUNC30(dev, sizeof(*hpriv), GFP_KERNEL);
	if (!hpriv)
		return -ENOMEM;
	hpriv->flags |= (unsigned long)pi.private_data;

	/* MCP65 revision A1 and A2 can't do MSI */
	if (board_id == board_ahci_mcp65 &&
	    (pdev->revision == 0xa1 || pdev->revision == 0xa2))
		hpriv->flags |= AHCI_HFLAG_NO_MSI;

	/* SB800 does NOT need the workaround to ignore SERR_INTERNAL */
	if (board_id == board_ahci_sb700 && pdev->revision >= 0x40)
		hpriv->flags &= ~AHCI_HFLAG_IGN_SERR_INTERNAL;

	/* only some SB600s can do 64bit DMA */
	if (FUNC22(pdev))
		hpriv->flags &= ~AHCI_HFLAG_32BIT_ONLY;

	hpriv->mmio = FUNC40(pdev)[ahci_pci_bar];

	/* detect remapped nvme devices */
	FUNC19(pdev, ahci_pci_bar, hpriv);

	/* must set flag prior to save config in order to take effect */
	if (FUNC3(pdev))
		hpriv->flags |= AHCI_HFLAG_NO_DEVSLP;

#ifdef CONFIG_ARM64
	if (pdev->vendor == 0x177d && pdev->device == 0xa01c)
		hpriv->irq_handler = ahci_thunderx_irq_handler;
#endif

	/* save initial config */
	FUNC18(pdev, hpriv);

	/*
	 * If platform firmware failed to enable ports, try to enable
	 * them here.
	 */
	FUNC12(pdev, hpriv);

	/* prepare host */
	if (hpriv->cap & HOST_CAP_NCQ) {
		pi.flags |= ATA_FLAG_NCQ;
		/*
		 * Auto-activate optimization is supposed to be
		 * supported on all AHCI controllers indicating NCQ
		 * capability, but it seems to be broken on some
		 * chipsets including NVIDIAs.
		 */
		if (!(hpriv->flags & AHCI_HFLAG_NO_FPDMA_AA))
			pi.flags |= ATA_FLAG_FPDMA_AA;

		/*
		 * All AHCI controllers should be forward-compatible
		 * with the new auxiliary field. This code should be
		 * conditionalized if any buggy AHCI controllers are
		 * encountered.
		 */
		pi.flags |= ATA_FLAG_FPDMA_AUX;
	}

	if (hpriv->cap & HOST_CAP_PMP)
		pi.flags |= ATA_FLAG_PMP;

	FUNC23(hpriv, &pi);

	if (FUNC7(pdev)) {
		pi.flags |= ATA_FLAG_NO_POWEROFF_SPINDOWN;
		FUNC28(&pdev->dev,
			"quirky BIOS, skipping spindown on poweroff\n");
	}

	if (FUNC4(pdev)) {
		pi.flags |= ATA_FLAG_NO_LPM;
		FUNC29(&pdev->dev,
			 "BIOS update required for Link Power Management support\n");
	}

	if (FUNC6(pdev)) {
		hpriv->flags |= AHCI_HFLAG_NO_SUSPEND;
		FUNC29(&pdev->dev,
			 "BIOS update required for suspend/resume\n");
	}

	if (FUNC5(pdev)) {
		hpriv->flags |= AHCI_HFLAG_SRST_TOUT_IS_OFFLINE;
		FUNC28(&pdev->dev,
			 "online status unreliable, applying workaround\n");
	}


	/* Acer SA5-271 workaround modifies private_data */
	FUNC2(hpriv, pdev);

	/* CAP.NP sometimes indicate the index of the last enabled
	 * port, at other times, that of the last possible port, so
	 * determining the maximum port number requires looking at
	 * both CAP.NP and port_map.
	 */
	n_ports = FUNC33(FUNC14(hpriv->cap), FUNC31(hpriv->port_map));

	host = FUNC25(&pdev->dev, ppi, n_ports);
	if (!host)
		return -ENOMEM;
	host->private_data = hpriv;

	if (FUNC11(pdev, n_ports, hpriv) < 0) {
		/* legacy intx interrupts */
		FUNC34(pdev, 1);
	}
	hpriv->irq = FUNC35(pdev, 0);

	if (!(hpriv->cap & HOST_CAP_SSS) || ahci_ignore_sss)
		host->flags |= ATA_HOST_PARALLEL_SCAN;
	else
		FUNC28(&pdev->dev, "SSS flag set, parallel bus scan disabled\n");

	if (pi.flags & ATA_FLAG_EM)
		FUNC21(host);

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];

		FUNC26(ap, ahci_pci_bar, -1, "abar");
		FUNC26(ap, ahci_pci_bar,
				   0x100 + ap->port_no * 0x80, "port");

		/* set enclosure management message type */
		if (ap->flags & ATA_FLAG_EM)
			ap->em_message_type = hpriv->em_msg_type;

		FUNC24(ap, hpriv);

		/* disabled/not-implemented port */
		if (!(hpriv->port_map & (1 << i)))
			ap->ops = &ata_dummy_port_ops;
	}

	/* apply workaround for ASUS P5W DH Deluxe mainboard */
	FUNC15(host);

	/* apply gtf filter quirk */
	FUNC9(host);

	/* initialize adapter */
	rc = FUNC8(pdev, hpriv->cap & HOST_CAP_64);
	if (rc)
		return rc;

	rc = FUNC20(host);
	if (rc)
		return rc;

	FUNC16(host);
	FUNC17(host);

	FUNC37(pdev);

	rc = FUNC10(host, &ahci_sht);
	if (rc)
		return rc;

	FUNC42(&pdev->dev);
	return 0;
}