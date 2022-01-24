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
typedef  void* u32 ;
struct skd_device {void* last_mtd; int proto_ver; int dev_max_queue_depth; void* devno; int connect_time_stamp; int drive_jiffies; TYPE_1__* pdev; int /*<<< orphan*/  cq_dma_address; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIT_MSG_FROM_DEVICE ; 
 int /*<<< orphan*/  FIT_MSG_TO_DEVICE ; 
 int /*<<< orphan*/  FIT_MSG_TO_DEVICE_ARG ; 
#define  FIT_MTD_ARM_QUEUE 135 
#define  FIT_MTD_CMD_LOG_HOST_ID 134 
#define  FIT_MTD_CMD_LOG_TIME_STAMP_HI 133 
#define  FIT_MTD_CMD_LOG_TIME_STAMP_LO 132 
#define  FIT_MTD_FITFW_INIT 131 
#define  FIT_MTD_GET_CMDQ_DEPTH 130 
#define  FIT_MTD_SET_COMPQ_ADDR 129 
#define  FIT_MTD_SET_COMPQ_DEPTH 128 
 void* FUNC0 (int,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FIT_PROTOCOL_VERSION_1 ; 
 int /*<<< orphan*/  SKD_DRVR_STATE_PROTOCOL_MISMATCH ; 
 void* SKD_N_COMPLETION_ENTRY ; 
 void* FUNC4 (struct skd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skd_device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct skd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct skd_device*) ; 

__attribute__((used)) static void FUNC12(struct skd_device *skdev)
{
	u32 mfd;
	u32 mtd;
	u32 data;

	mfd = FUNC4(skdev, FIT_MSG_FROM_DEVICE);

	FUNC7(&skdev->pdev->dev, "mfd=0x%x last_mtd=0x%x\n", mfd,
		skdev->last_mtd);

	/* ignore any mtd that is an ack for something we didn't send */
	if (FUNC2(mfd) != FUNC2(skdev->last_mtd))
		return;

	switch (FUNC2(mfd)) {
	case FIT_MTD_FITFW_INIT:
		skdev->proto_ver = FUNC3(mfd);

		if (skdev->proto_ver != FIT_PROTOCOL_VERSION_1) {
			FUNC8(&skdev->pdev->dev, "protocol mismatch\n");
			FUNC8(&skdev->pdev->dev, "  got=%d support=%d\n",
				skdev->proto_ver, FIT_PROTOCOL_VERSION_1);
			FUNC8(&skdev->pdev->dev, "  please upgrade driver\n");
			skdev->state = SKD_DRVR_STATE_PROTOCOL_MISMATCH;
			FUNC11(skdev);
			break;
		}
		mtd = FUNC0(FIT_MTD_GET_CMDQ_DEPTH, 0, 0);
		FUNC5(skdev, mtd, FIT_MSG_TO_DEVICE);
		skdev->last_mtd = mtd;
		break;

	case FIT_MTD_GET_CMDQ_DEPTH:
		skdev->dev_max_queue_depth = FUNC1(mfd);
		mtd = FUNC0(FIT_MTD_SET_COMPQ_DEPTH, 0,
				   SKD_N_COMPLETION_ENTRY);
		FUNC5(skdev, mtd, FIT_MSG_TO_DEVICE);
		skdev->last_mtd = mtd;
		break;

	case FIT_MTD_SET_COMPQ_DEPTH:
		FUNC6(skdev, skdev->cq_dma_address, FIT_MSG_TO_DEVICE_ARG);
		mtd = FUNC0(FIT_MTD_SET_COMPQ_ADDR, 0, 0);
		FUNC5(skdev, mtd, FIT_MSG_TO_DEVICE);
		skdev->last_mtd = mtd;
		break;

	case FIT_MTD_SET_COMPQ_ADDR:
		FUNC10(skdev);
		mtd = FUNC0(FIT_MTD_CMD_LOG_HOST_ID, 0, skdev->devno);
		FUNC5(skdev, mtd, FIT_MSG_TO_DEVICE);
		skdev->last_mtd = mtd;
		break;

	case FIT_MTD_CMD_LOG_HOST_ID:
		/* hardware interface overflows in y2106 */
		skdev->connect_time_stamp = (u32)FUNC9();
		data = skdev->connect_time_stamp & 0xFFFF;
		mtd = FUNC0(FIT_MTD_CMD_LOG_TIME_STAMP_LO, 0, data);
		FUNC5(skdev, mtd, FIT_MSG_TO_DEVICE);
		skdev->last_mtd = mtd;
		break;

	case FIT_MTD_CMD_LOG_TIME_STAMP_LO:
		skdev->drive_jiffies = FUNC1(mfd);
		data = (skdev->connect_time_stamp >> 16) & 0xFFFF;
		mtd = FUNC0(FIT_MTD_CMD_LOG_TIME_STAMP_HI, 0, data);
		FUNC5(skdev, mtd, FIT_MSG_TO_DEVICE);
		skdev->last_mtd = mtd;
		break;

	case FIT_MTD_CMD_LOG_TIME_STAMP_HI:
		skdev->drive_jiffies |= (FUNC1(mfd) << 16);
		mtd = FUNC0(FIT_MTD_ARM_QUEUE, 0, 0);
		FUNC5(skdev, mtd, FIT_MSG_TO_DEVICE);
		skdev->last_mtd = mtd;

		FUNC8(&skdev->pdev->dev, "Time sync driver=0x%x device=0x%x\n",
			skdev->connect_time_stamp, skdev->drive_jiffies);
		break;

	case FIT_MTD_ARM_QUEUE:
		skdev->last_mtd = 0;
		/*
		 * State should be, or soon will be, FIT_SR_DRIVE_ONLINE.
		 */
		break;

	default:
		break;
	}
}