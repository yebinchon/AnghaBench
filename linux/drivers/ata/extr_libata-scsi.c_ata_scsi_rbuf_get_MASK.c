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
 void* ata_scsi_rbuf ; 
 int /*<<< orphan*/  ata_scsi_rbuf_lock ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void *FUNC5(struct scsi_cmnd *cmd, bool copy_in,
			       unsigned long *flags)
{
	FUNC4(&ata_scsi_rbuf_lock, *flags);

	FUNC0(ata_scsi_rbuf, 0, ATA_SCSI_RBUF_SIZE);
	if (copy_in)
		FUNC3(FUNC2(cmd), FUNC1(cmd),
				  ata_scsi_rbuf, ATA_SCSI_RBUF_SIZE);
	return ata_scsi_rbuf;
}