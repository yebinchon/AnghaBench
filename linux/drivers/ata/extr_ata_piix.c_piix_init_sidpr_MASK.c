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
typedef  int u32 ;
struct piix_host_priv {scalar_t__* map; int /*<<< orphan*/  sidpr; } ;
struct pci_dev {int dummy; } ;
struct ata_link {int dummy; } ;
struct ata_port {int flags; int /*<<< orphan*/ * ops; struct ata_link link; } ;
struct ata_host {struct ata_port** ports; int /*<<< orphan*/  dev; struct piix_host_priv* private_data; } ;

/* Variables and functions */
 int ATA_FLAG_SLAVE_POSS ; 
 int /*<<< orphan*/  DRV_NAME ; 
 scalar_t__ IDE ; 
 int PIIX_FLAG_SIDPR ; 
 int PIIX_SIDPR_BAR ; 
 scalar_t__ PIIX_SIDPR_LEN ; 
 int /*<<< orphan*/  SCR_CONTROL ; 
 int FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct ata_host*) ; 
 int /*<<< orphan*/  piix_sidpr_sata_ops ; 
 int /*<<< orphan*/  FUNC7 (struct ata_link*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_link*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ata_host *host)
{
	struct pci_dev *pdev = FUNC9(host->dev);
	struct piix_host_priv *hpriv = host->private_data;
	struct ata_link *link0 = &host->ports[0]->link;
	u32 scontrol;
	int i, rc;

	/* check for availability */
	for (i = 0; i < 4; i++)
		if (hpriv->map[i] == IDE)
			return 0;

	/* is it blacklisted? */
	if (FUNC6(host))
		return 0;

	if (!(host->ports[0]->flags & PIIX_FLAG_SIDPR))
		return 0;

	if (FUNC3(pdev, PIIX_SIDPR_BAR) == 0 ||
	    FUNC2(pdev, PIIX_SIDPR_BAR) != PIIX_SIDPR_LEN)
		return 0;

	if (FUNC4(pdev, 1 << PIIX_SIDPR_BAR, DRV_NAME))
		return 0;

	hpriv->sidpr = FUNC5(pdev)[PIIX_SIDPR_BAR];

	/* SCR access via SIDPR doesn't work on some configurations.
	 * Give it a test drive by inhibiting power save modes which
	 * we'll do anyway.
	 */
	FUNC7(link0, SCR_CONTROL, &scontrol);

	/* if IPM is already 3, SCR access is probably working.  Don't
	 * un-inhibit power save modes as BIOS might have inhibited
	 * them for a reason.
	 */
	if ((scontrol & 0xf00) != 0x300) {
		scontrol |= 0x300;
		FUNC8(link0, SCR_CONTROL, scontrol);
		FUNC7(link0, SCR_CONTROL, &scontrol);

		if ((scontrol & 0xf00) != 0x300) {
			FUNC1(host->dev,
				 "SCR access via SIDPR is available but doesn't work\n");
			return 0;
		}
	}

	/* okay, SCRs available, set ops and ask libata for slave_link */
	for (i = 0; i < 2; i++) {
		struct ata_port *ap = host->ports[i];

		ap->ops = &piix_sidpr_sata_ops;

		if (ap->flags & ATA_FLAG_SLAVE_POSS) {
			rc = FUNC0(ap);
			if (rc)
				return rc;
		}
	}

	return 0;
}