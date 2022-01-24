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
struct ata_port {int flags; } ;
struct TYPE_4__ {int flags; } ;
struct ata_eh_context {TYPE_2__ i; } ;
struct ata_device {int horkage; scalar_t__ xfer_shift; int* id; scalar_t__ pio_mode; scalar_t__ dma_mode; scalar_t__ xfer_mode; int /*<<< orphan*/  flags; TYPE_1__* link; } ;
struct TYPE_3__ {struct ata_eh_context eh_context; struct ata_port* ap; } ;

/* Variables and functions */
 unsigned int AC_ERR_DEV ; 
 int /*<<< orphan*/  ATA_DEV_UNKNOWN ; 
 int /*<<< orphan*/  ATA_DFLAG_PIO ; 
 int ATA_EHI_DID_HARDRESET ; 
 int ATA_EHI_POST_SETMODE ; 
 int ATA_EHI_QUIET ; 
 int ATA_FLAG_SATA ; 
 int ATA_HORKAGE_NOSETXFER ; 
 scalar_t__ ATA_SHIFT_MWDMA ; 
 scalar_t__ ATA_SHIFT_PIO ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int EIO ; 
 scalar_t__ XFER_MW_DMA_0 ; 
 scalar_t__ XFER_PIO_2 ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (struct ata_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int*) ; 
 scalar_t__ FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct ata_device *dev)
{
	struct ata_port *ap = dev->link->ap;
	struct ata_eh_context *ehc = &dev->link->eh_context;
	const bool nosetxfer = dev->horkage & ATA_HORKAGE_NOSETXFER;
	const char *dev_err_whine = "";
	int ign_dev_err = 0;
	unsigned int err_mask = 0;
	int rc;

	dev->flags &= ~ATA_DFLAG_PIO;
	if (dev->xfer_shift == ATA_SHIFT_PIO)
		dev->flags |= ATA_DFLAG_PIO;

	if (nosetxfer && ap->flags & ATA_FLAG_SATA && FUNC8(dev->id))
		dev_err_whine = " (SET_XFERMODE skipped)";
	else {
		if (nosetxfer)
			FUNC5(dev,
				     "NOSETXFER but PATA detected - can't "
				     "skip SETXFER, might malfunction\n");
		err_mask = FUNC4(dev);
	}

	if (err_mask & ~AC_ERR_DEV)
		goto fail;

	/* revalidate */
	ehc->i.flags |= ATA_EHI_POST_SETMODE;
	rc = FUNC3(dev, ATA_DEV_UNKNOWN, 0);
	ehc->i.flags &= ~ATA_EHI_POST_SETMODE;
	if (rc)
		return rc;

	if (dev->xfer_shift == ATA_SHIFT_PIO) {
		/* Old CFA may refuse this command, which is just fine */
		if (FUNC7(dev->id))
			ign_dev_err = 1;
		/* Catch several broken garbage emulations plus some pre
		   ATA devices */
		if (FUNC9(dev->id) == 0 &&
					dev->pio_mode <= XFER_PIO_2)
			ign_dev_err = 1;
		/* Some very old devices and some bad newer ones fail
		   any kind of SET_XFERMODE request but support PIO0-2
		   timings and no IORDY */
		if (!FUNC6(dev->id) && dev->pio_mode <= XFER_PIO_2)
			ign_dev_err = 1;
	}
	/* Early MWDMA devices do DMA but don't allow DMA mode setting.
	   Don't fail an MWDMA0 set IFF the device indicates it is in MWDMA0 */
	if (dev->xfer_shift == ATA_SHIFT_MWDMA &&
	    dev->dma_mode == XFER_MW_DMA_0 &&
	    (dev->id[63] >> 8) & 1)
		ign_dev_err = 1;

	/* if the device is actually configured correctly, ignore dev err */
	if (dev->xfer_mode == FUNC12(FUNC10(dev->id)))
		ign_dev_err = 1;

	if (err_mask & AC_ERR_DEV) {
		if (!ign_dev_err)
			goto fail;
		else
			dev_err_whine = " (device error ignored)";
	}

	FUNC0("xfer_shift=%u, xfer_mode=0x%x\n",
		dev->xfer_shift, (int)dev->xfer_mode);

	if (!(ehc->i.flags & ATA_EHI_QUIET) ||
	    ehc->i.flags & ATA_EHI_DID_HARDRESET)
		FUNC2(dev, "configured for %s%s\n",
			     FUNC11(FUNC13(dev->xfer_mode)),
			     dev_err_whine);

	return 0;

 fail:
	FUNC1(dev, "failed to set xfermode (err_mask=0x%x)\n", err_mask);
	return -EIO;
}