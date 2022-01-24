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
struct ata_taskfile {int /*<<< orphan*/  ctl; } ;
struct ata_port {struct ahci_port_priv* private_data; TYPE_1__* host; } ;
struct ata_link {int /*<<< orphan*/  device; struct ata_port* ap; } ;
struct ahci_port_priv {scalar_t__ fbs_enabled; } ;
struct ahci_host_priv {int flags; } ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;

/* Variables and functions */
 int AHCI_CMD_CLR_BUSY ; 
 int AHCI_CMD_RESET ; 
 int AHCI_HFLAG_SRST_TOUT_IS_OFFLINE ; 
 unsigned int ATA_DEV_NONE ; 
 int /*<<< orphan*/  ATA_SRST ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 unsigned int FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 scalar_t__ FUNC4 (struct ata_port*,int,struct ata_taskfile*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int FUNC5 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct ata_link*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_link*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ata_link*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ata_taskfile*) ; 
 int FUNC12 (struct ata_link*,unsigned long,int (*) (struct ata_link*)) ; 
 unsigned long jiffies ; 
 unsigned long FUNC13 (unsigned long) ; 
 scalar_t__ FUNC14 (unsigned long,unsigned long) ; 

int FUNC15(struct ata_link *link, unsigned int *class,
		      int pmp, unsigned long deadline,
		      int (*check_ready)(struct ata_link *link))
{
	struct ata_port *ap = link->ap;
	struct ahci_host_priv *hpriv = ap->host->private_data;
	struct ahci_port_priv *pp = ap->private_data;
	const char *reason = NULL;
	unsigned long now, msecs;
	struct ata_taskfile tf;
	bool fbs_disabled = false;
	int rc;

	FUNC0("ENTER\n");

	/* prepare for SRST (AHCI-1.1 10.4.1) */
	rc = FUNC5(ap);
	if (rc && rc != -EOPNOTSUPP)
		FUNC9(link, "failed to reset engine (errno=%d)\n", rc);

	/*
	 * According to AHCI-1.2 9.3.9: if FBS is enable, software shall
	 * clear PxFBS.EN to '0' prior to issuing software reset to devices
	 * that is attached to port multiplier.
	 */
	if (!FUNC6(link) && pp->fbs_enabled) {
		FUNC2(ap);
		fbs_disabled = true;
	}

	FUNC11(link->device, &tf);

	/* issue the first H2D Register FIS */
	msecs = 0;
	now = jiffies;
	if (FUNC14(deadline, now))
		msecs = FUNC13(deadline - now);

	tf.ctl |= ATA_SRST;
	if (FUNC4(ap, pmp, &tf, 0,
				 AHCI_CMD_RESET | AHCI_CMD_CLR_BUSY, msecs)) {
		rc = -EIO;
		reason = "1st FIS failed";
		goto fail;
	}

	/* spec says at least 5us, but be generous and sleep for 1ms */
	FUNC10(ap, 1);

	/* issue the second H2D Register FIS */
	tf.ctl &= ~ATA_SRST;
	FUNC4(ap, pmp, &tf, 0, 0, 0);

	/* wait for link to become ready */
	rc = FUNC12(link, deadline, check_ready);
	if (rc == -EBUSY && hpriv->flags & AHCI_HFLAG_SRST_TOUT_IS_OFFLINE) {
		/*
		 * Workaround for cases where link online status can't
		 * be trusted.  Treat device readiness timeout as link
		 * offline.
		 */
		FUNC8(link, "device not ready, treating as offline\n");
		*class = ATA_DEV_NONE;
	} else if (rc) {
		/* link occupied, -ENODEV too is an error */
		reason = "device not ready";
		goto fail;
	} else
		*class = FUNC1(ap);

	/* re-enable FBS if disabled before */
	if (fbs_disabled)
		FUNC3(ap);

	FUNC0("EXIT, class=%u\n", *class);
	return 0;

 fail:
	FUNC7(link, "softreset failed (%s)\n", reason);
	return rc;
}