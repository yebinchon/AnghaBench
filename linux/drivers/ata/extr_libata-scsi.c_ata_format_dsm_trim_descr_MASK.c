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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct scsi_device {size_t sector_size; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 size_t ATA_SCSI_RBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ata_scsi_rbuf ; 
 int /*<<< orphan*/  ata_scsi_rbuf_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static size_t FUNC8(struct scsi_cmnd *cmd, u32 trmax,
					u64 sector, u32 count)
{
	struct scsi_device *sdp = cmd->device;
	size_t len = sdp->sector_size;
	size_t r;
	__le64 *buf;
	u32 i = 0;
	unsigned long flags;

	FUNC0(len > ATA_SCSI_RBUF_SIZE);

	if (len > ATA_SCSI_RBUF_SIZE)
		len = ATA_SCSI_RBUF_SIZE;

	FUNC6(&ata_scsi_rbuf_lock, flags);
	buf = ((void *)ata_scsi_rbuf);
	FUNC2(buf, 0, len);
	while (i < trmax) {
		u64 entry = sector |
			((u64)(count > 0xffff ? 0xffff : count) << 48);
		buf[i++] = FUNC1(entry);
		if (count <= 0xffff)
			break;
		count -= 0xffff;
		sector += 0xffff;
	}
	r = FUNC5(FUNC4(cmd), FUNC3(cmd), buf, len);
	FUNC7(&ata_scsi_rbuf_lock, flags);

	return r;
}