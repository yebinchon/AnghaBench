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
struct ata_queued_cmd {int tag; int hw_tag; struct ata_device* dev; struct ata_port* ap; int /*<<< orphan*/ * scsicmd; } ;
struct ata_port {int pflags; int flags; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;

/* Variables and functions */
 int ATA_FLAG_SAS_HOST ; 
 int ATA_PFLAG_FROZEN ; 
 struct ata_queued_cmd* FUNC0 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 
 int FUNC2 (struct ata_port*) ; 
 scalar_t__ FUNC3 (int) ; 

struct ata_queued_cmd *FUNC4(struct ata_device *dev, int tag)
{
	struct ata_port *ap = dev->link->ap;
	struct ata_queued_cmd *qc;

	/* no command while frozen */
	if (FUNC3(ap->pflags & ATA_PFLAG_FROZEN))
		return NULL;

	/* libsas case */
	if (ap->flags & ATA_FLAG_SAS_HOST) {
		tag = FUNC2(ap);
		if (tag < 0)
			return NULL;
	}

	qc = FUNC0(ap, tag);
	qc->tag = qc->hw_tag = tag;
	qc->scsicmd = NULL;
	qc->ap = ap;
	qc->dev = dev;

	FUNC1(qc);

	return qc;
}