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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct scsi_cmnd {int /*<<< orphan*/  sense_buffer; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ata_device *dev,
				       struct scsi_cmnd *cmd, u16 field, u8 bit)
{
	FUNC0(dev, cmd, ILLEGAL_REQUEST, 0x24, 0x0);
	/* "Invalid field in CDB" */
	FUNC1(cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
				     field, bit, 1);
}