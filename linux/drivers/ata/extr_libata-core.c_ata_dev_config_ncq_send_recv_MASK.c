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
typedef  int /*<<< orphan*/  u8 ;
struct ata_port {int /*<<< orphan*/  sector_buf; } ;
struct ata_device {int horkage; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ncq_send_recv_cmds; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DFLAG_NCQ_SEND_RECV ; 
 int ATA_HORKAGE_NO_NCQ_TRIM ; 
 int /*<<< orphan*/  ATA_LOG_NCQ_SEND_RECV ; 
 size_t ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET ; 
 int /*<<< orphan*/  ATA_LOG_NCQ_SEND_RECV_DSM_TRIM ; 
 int /*<<< orphan*/  ATA_LOG_NCQ_SEND_RECV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct ata_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_device *dev)
{
	struct ata_port *ap = dev->link->ap;
	unsigned int err_mask;

	if (!FUNC2(dev, ATA_LOG_NCQ_SEND_RECV)) {
		FUNC1(dev, "NCQ Send/Recv Log not supported\n");
		return;
	}
	err_mask = FUNC3(dev, ATA_LOG_NCQ_SEND_RECV,
				     0, ap->sector_buf, 1);
	if (err_mask) {
		FUNC0(dev,
			    "failed to get NCQ Send/Recv Log Emask 0x%x\n",
			    err_mask);
	} else {
		u8 *cmds = dev->ncq_send_recv_cmds;

		dev->flags |= ATA_DFLAG_NCQ_SEND_RECV;
		FUNC4(cmds, ap->sector_buf, ATA_LOG_NCQ_SEND_RECV_SIZE);

		if (dev->horkage & ATA_HORKAGE_NO_NCQ_TRIM) {
			FUNC0(dev, "disabling queued TRIM support\n");
			cmds[ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET] &=
				~ATA_LOG_NCQ_SEND_RECV_DSM_TRIM;
		}
	}
}