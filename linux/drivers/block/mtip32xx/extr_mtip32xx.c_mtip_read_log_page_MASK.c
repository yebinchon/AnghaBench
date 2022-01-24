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
struct host_to_dev_fis {int type; int opts; unsigned int sect_count; unsigned int sect_cnt_ex; int /*<<< orphan*/  device; scalar_t__ lba_mid; int /*<<< orphan*/  lba_low; int /*<<< orphan*/  command; } ;
typedef  struct host_to_dev_fis u16 ;
struct mtip_port {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_READ_LOG_EXT ; 
 int /*<<< orphan*/  ATA_DEVICE_OBS ; 
 unsigned int ATA_SECT_SIZE ; 
 int /*<<< orphan*/  MTIP_INT_CMD_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct host_to_dev_fis*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct mtip_port*,struct host_to_dev_fis*,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mtip_port *port, u8 page, u16 *buffer,
				dma_addr_t buffer_dma, unsigned int sectors)
{
	struct host_to_dev_fis fis;

	FUNC0(&fis, 0, sizeof(struct host_to_dev_fis));
	fis.type	= 0x27;
	fis.opts	= 1 << 7;
	fis.command	= ATA_CMD_READ_LOG_EXT;
	fis.sect_count	= sectors & 0xFF;
	fis.sect_cnt_ex	= (sectors >> 8) & 0xFF;
	fis.lba_low	= page;
	fis.lba_mid	= 0;
	fis.device	= ATA_DEVICE_OBS;

	FUNC0(buffer, 0, sectors * ATA_SECT_SIZE);

	return FUNC1(port,
					&fis,
					5,
					buffer_dma,
					sectors * ATA_SECT_SIZE,
					0,
					MTIP_INT_CMD_TIMEOUT_MS);
}