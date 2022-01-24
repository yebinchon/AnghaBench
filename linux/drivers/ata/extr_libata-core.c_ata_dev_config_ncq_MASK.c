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
struct ata_port {int flags; TYPE_2__* scsi_host; } ;
struct ata_device {int horkage; int /*<<< orphan*/  id; int /*<<< orphan*/  flags; TYPE_1__* link; } ;
struct TYPE_4__ {int /*<<< orphan*/  can_queue; } ;
struct TYPE_3__ {struct ata_port* ap; } ;

/* Variables and functions */
 unsigned int AC_ERR_DEV ; 
 int /*<<< orphan*/  ATA_DFLAG_NCQ ; 
 int ATA_FLAG_FPDMA_AA ; 
 int ATA_FLAG_FPDMA_AUX ; 
 int ATA_FLAG_NCQ ; 
 int ATA_HORKAGE_BROKEN_FPDMA_AA ; 
 int ATA_HORKAGE_NONCQ ; 
 int /*<<< orphan*/  ATA_MAX_QUEUE ; 
 int EIO ; 
 int /*<<< orphan*/  SATA_FPDMA_AA ; 
 int /*<<< orphan*/  SETFEATURES_SATA_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,char*,unsigned int) ; 
 unsigned int FUNC4 (struct ata_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t,char*,...) ; 

__attribute__((used)) static int FUNC13(struct ata_device *dev,
			       char *desc, size_t desc_sz)
{
	struct ata_port *ap = dev->link->ap;
	int hdepth = 0, ddepth = FUNC10(dev->id);
	unsigned int err_mask;
	char *aa_desc = "";

	if (!FUNC6(dev->id)) {
		desc[0] = '\0';
		return 0;
	}
	if (dev->horkage & ATA_HORKAGE_NONCQ) {
		FUNC12(desc, desc_sz, "NCQ (not used)");
		return 0;
	}
	if (ap->flags & ATA_FLAG_NCQ) {
		hdepth = FUNC11(ap->scsi_host->can_queue, ATA_MAX_QUEUE);
		dev->flags |= ATA_DFLAG_NCQ;
	}

	if (!(dev->horkage & ATA_HORKAGE_BROKEN_FPDMA_AA) &&
		(ap->flags & ATA_FLAG_FPDMA_AA) &&
		FUNC5(dev->id)) {
		err_mask = FUNC4(dev, SETFEATURES_SATA_ENABLE,
			SATA_FPDMA_AA);
		if (err_mask) {
			FUNC3(dev,
				    "failed to enable AA (error_mask=0x%x)\n",
				    err_mask);
			if (err_mask != AC_ERR_DEV) {
				dev->horkage |= ATA_HORKAGE_BROKEN_FPDMA_AA;
				return -EIO;
			}
		} else
			aa_desc = ", AA";
	}

	if (hdepth >= ddepth)
		FUNC12(desc, desc_sz, "NCQ (depth %d)%s", ddepth, aa_desc);
	else
		FUNC12(desc, desc_sz, "NCQ (depth %d/%d)%s", hdepth,
			ddepth, aa_desc);

	if ((ap->flags & ATA_FLAG_FPDMA_AUX)) {
		if (FUNC9(dev->id))
			FUNC2(dev);
		if (FUNC7(dev->id))
			FUNC0(dev);
		if (FUNC8(dev->id))
			FUNC1(dev);
	}

	return 0;
}