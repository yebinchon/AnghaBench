#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  versions_zbc ;
typedef  int /*<<< orphan*/  versions ;
typedef  int u8 ;
struct ata_scsi_args {TYPE_3__* dev; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_6__ {scalar_t__ class; TYPE_2__* link; } ;
struct TYPE_5__ {TYPE_1__* ap; } ;
struct TYPE_4__ {int pflags; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ZAC ; 
 scalar_t__ ATA_ID_FW_REV ; 
 scalar_t__ ATA_ID_PROD ; 
 int ATA_PFLAG_EXTERNAL ; 
 int TYPE_DISK ; 
 int TYPE_ZBC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,...) ; 
 scalar_t__ FUNC5 (int*,char*,int) ; 

__attribute__((used)) static unsigned int FUNC6(struct ata_scsi_args *args, u8 *rbuf)
{
	static const u8 versions[] = {
		0x00,
		0x60,	/* SAM-3 (no version claimed) */

		0x03,
		0x20,	/* SBC-2 (no version claimed) */

		0x03,
		0x00	/* SPC-3 (no version claimed) */
	};
	static const u8 versions_zbc[] = {
		0x00,
		0xA0,	/* SAM-5 (no version claimed) */

		0x06,
		0x00,	/* SBC-4 (no version claimed) */

		0x05,
		0xC0,	/* SPC-5 (no version claimed) */

		0x60,
		0x24,   /* ZBC r05 */
	};

	u8 hdr[] = {
		TYPE_DISK,
		0,
		0x5,	/* claim SPC-3 version compatibility */
		2,
		95 - 4,
		0,
		0,
		2
	};

	FUNC0("ENTER\n");

	/* set scsi removable (RMB) bit per ata bit, or if the
	 * AHCI port says it's external (Hotplug-capable, eSATA).
	 */
	if (FUNC1(args->id) ||
	    (args->dev->link->ap->pflags & ATA_PFLAG_EXTERNAL))
		hdr[1] |= (1 << 7);

	if (args->dev->class == ATA_DEV_ZAC) {
		hdr[0] = TYPE_ZBC;
		hdr[2] = 0x7; /* claim SPC-5 version compatibility */
	}

	FUNC4(rbuf, hdr, sizeof(hdr));
	FUNC4(&rbuf[8], "ATA     ", 8);
	FUNC2(args->id, &rbuf[16], ATA_ID_PROD, 16);

	/* From SAT, use last 2 words from fw rev unless they are spaces */
	FUNC2(args->id, &rbuf[32], ATA_ID_FW_REV + 2, 4);
	if (FUNC5(&rbuf[32], "    ", 4) == 0)
		FUNC2(args->id, &rbuf[32], ATA_ID_FW_REV, 4);

	if (rbuf[32] == 0 || rbuf[32] == ' ')
		FUNC4(&rbuf[32], "n/a ", 4);

	if (FUNC3(args->id) || args->dev->class == ATA_DEV_ZAC)
		FUNC4(rbuf + 58, versions_zbc, sizeof(versions_zbc));
	else
		FUNC4(rbuf + 58, versions, sizeof(versions));

	return 0;
}