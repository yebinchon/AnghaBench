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
struct request {int /*<<< orphan*/  bio; } ;
struct packet_command {int* cmd; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int pending; int transfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  GDROM_BCH_REG ; 
 int /*<<< orphan*/  GDROM_BCL_REG ; 
 int GDROM_COM_PACKET ; 
 int /*<<< orphan*/  GDROM_DATA_REG ; 
 int /*<<< orphan*/  GDROM_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  GDROM_DMA_DIRECTION_REG ; 
 int /*<<< orphan*/  GDROM_DMA_ENABLE_REG ; 
 int /*<<< orphan*/  GDROM_DMA_LENGTH_REG ; 
 int /*<<< orphan*/  GDROM_DMA_STARTADDR_REG ; 
 int /*<<< orphan*/  GDROM_DMA_STATUS_REG ; 
 int /*<<< orphan*/  GDROM_DSEL_REG ; 
 int /*<<< orphan*/  GDROM_ERROR_REG ; 
 int GDROM_HARD_SECTOR ; 
 int /*<<< orphan*/  GDROM_INTSEC_REG ; 
 int /*<<< orphan*/  GDROM_SECNUM_REG ; 
 int /*<<< orphan*/  GDROM_STATUSCOMMAND_REG ; 
 int GD_SESSION_OFFSET ; 
 int GD_TO_BLK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct request*) ; 
 int FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ gd ; 
 scalar_t__ FUNC8 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC9 (struct packet_command*) ; 
 struct packet_command* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int**,int) ; 
 int /*<<< orphan*/  request_queue ; 
 scalar_t__ FUNC12 (int,unsigned long) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC15(struct request *req)
{
	int block, block_cnt;
	blk_status_t err;
	struct packet_command *read_command;
	unsigned long timeout;

	read_command = FUNC10(sizeof(struct packet_command), GFP_KERNEL);
	if (!read_command)
		return BLK_STS_RESOURCE;

	read_command->cmd[0] = 0x30;
	read_command->cmd[1] = 0x20;
	block = FUNC5(req)/GD_TO_BLK + GD_SESSION_OFFSET;
	block_cnt = FUNC6(req)/GD_TO_BLK;
	FUNC2(FUNC13(FUNC3(req->bio)), GDROM_DMA_STARTADDR_REG);
	FUNC2(block_cnt * GDROM_HARD_SECTOR, GDROM_DMA_LENGTH_REG);
	FUNC2(1, GDROM_DMA_DIRECTION_REG);
	FUNC2(1, GDROM_DMA_ENABLE_REG);
	read_command->cmd[2] = (block >> 16) & 0xFF;
	read_command->cmd[3] = (block >> 8) & 0xFF;
	read_command->cmd[4] = block & 0xFF;
	read_command->cmd[8] = (block_cnt >> 16) & 0xFF;
	read_command->cmd[9] = (block_cnt >> 8) & 0xFF;
	read_command->cmd[10] = block_cnt & 0xFF;
	/* set for DMA */
	FUNC1(1, GDROM_ERROR_REG);
	/* other registers */
	FUNC1(0, GDROM_SECNUM_REG);
	FUNC1(0, GDROM_BCL_REG);
	FUNC1(0, GDROM_BCH_REG);
	FUNC1(0, GDROM_DSEL_REG);
	FUNC1(0, GDROM_INTSEC_REG);
	/* Wait for registers to reset after any previous activity */
	timeout = jiffies + HZ / 2;
	while (FUNC8() && FUNC12(jiffies, timeout))
		FUNC7();
	FUNC1(GDROM_COM_PACKET, GDROM_STATUSCOMMAND_REG);
	timeout = jiffies + HZ / 2;
	/* Wait for packet command to finish */
	while (FUNC8() && FUNC12(jiffies, timeout))
		FUNC7();
	gd.pending = 1;
	gd.transfer = 1;
	FUNC11(GDROM_DATA_REG, &read_command->cmd, 6);
	timeout = jiffies + HZ / 2;
	/* Wait for any pending DMA to finish */
	while (FUNC0(GDROM_DMA_STATUS_REG) &&
		FUNC12(jiffies, timeout))
		FUNC7();
	/* start transfer */
	FUNC1(1, GDROM_DMA_STATUS_REG);
	FUNC14(request_queue,
		gd.transfer == 0, GDROM_DEFAULT_TIMEOUT);
	err = gd.transfer ? BLK_STS_IOERR : BLK_STS_OK;
	gd.transfer = 0;
	gd.pending = 0;

	FUNC4(req, err);
	FUNC9(read_command);
	return BLK_STS_OK;
}