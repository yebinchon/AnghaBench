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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_SCSI_RBUF_SIZE ; 
 int /*<<< orphan*/  ata_scsi_rbuf ; 
 int /*<<< orphan*/  ata_scsi_rbuf_lock ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct scsi_cmnd *cmd, bool copy_out,
				     unsigned long *flags)
{
	if (copy_out)
		FUNC2(FUNC1(cmd), FUNC0(cmd),
				    ata_scsi_rbuf, ATA_SCSI_RBUF_SIZE);
	FUNC3(&ata_scsi_rbuf_lock, *flags);
}