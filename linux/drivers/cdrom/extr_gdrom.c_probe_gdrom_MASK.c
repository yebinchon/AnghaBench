#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct gdromtoc {int dummy; } ;
struct cdrom_device_info {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  events; int /*<<< orphan*/ * fops; } ;
struct TYPE_6__ {void* cd_info; TYPE_3__* disk; int /*<<< orphan*/  tag_set; int /*<<< orphan*/ * gdrom_rq; void* toc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_HIGH ; 
 int BLK_MQ_F_BLOCKING ; 
 int BLK_MQ_F_SHOULD_MERGE ; 
 int /*<<< orphan*/  DISK_EVENT_MEDIA_CHANGE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GDROM_DEV_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HW_EVENT_GDROM_CMD ; 
 int /*<<< orphan*/  HW_EVENT_GDROM_DMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ gd ; 
 int /*<<< orphan*/  gdrom_bdops ; 
 int FUNC10 () ; 
 scalar_t__ gdrom_major ; 
 int /*<<< orphan*/  gdrom_mq_ops ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 () ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (void*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct platform_device *devptr)
{
	int err;
	/* Start the device */
	if (FUNC10() != 1) {
		FUNC16("ATA Probe for GDROM failed\n");
		return -ENODEV;
	}
	/* Print out firmware ID */
	if (FUNC11())
		return -ENOMEM;
	/* Register GDROM */
	gdrom_major = FUNC20(0, GDROM_DEV_NAME);
	if (gdrom_major <= 0)
		return gdrom_major;
	FUNC15("Registered with major number %d\n",
		gdrom_major);
	/* Specify basic properties of drive */
	gd.cd_info = FUNC14(sizeof(struct cdrom_device_info), GFP_KERNEL);
	if (!gd.cd_info) {
		err = -ENOMEM;
		goto probe_fail_no_mem;
	}
	FUNC17();
	gd.disk = FUNC3(1);
	if (!gd.disk) {
		err = -ENODEV;
		goto probe_fail_no_disk;
	}
	FUNC18();
	if (FUNC21(gd.cd_info)) {
		err = -ENODEV;
		goto probe_fail_cdrom_register;
	}
	gd.disk->fops = &gdrom_bdops;
	gd.disk->events = DISK_EVENT_MEDIA_CHANGE;
	/* latch on to the interrupt */
	err = FUNC12();
	if (err)
		goto probe_fail_cmdirq_register;

	gd.gdrom_rq = FUNC6(&gd.tag_set, &gdrom_mq_ops, 1,
				BLK_MQ_F_SHOULD_MERGE | BLK_MQ_F_BLOCKING);
	if (FUNC0(gd.gdrom_rq)) {
		err = FUNC1(gd.gdrom_rq);
		gd.gdrom_rq = NULL;
		goto probe_fail_requestq;
	}

	FUNC7(gd.gdrom_rq, BLK_BOUNCE_HIGH);

	err = FUNC19();
	if (err)
		goto probe_fail_toc;

	gd.toc = FUNC14(sizeof(struct gdromtoc), GFP_KERNEL);
	if (!gd.toc) {
		err = -ENOMEM;
		goto probe_fail_toc;
	}
	FUNC2(gd.disk);
	return 0;

probe_fail_toc:
	FUNC4(gd.gdrom_rq);
	FUNC5(&gd.tag_set);
probe_fail_requestq:
	FUNC9(HW_EVENT_GDROM_DMA, &gd);
	FUNC9(HW_EVENT_GDROM_CMD, &gd);
probe_fail_cmdirq_register:
probe_fail_cdrom_register:
	FUNC8(gd.disk);
probe_fail_no_disk:
	FUNC13(gd.cd_info);
probe_fail_no_mem:
	FUNC22(gdrom_major, GDROM_DEV_NAME);
	gdrom_major = 0;
	FUNC16("Probe failed - error is 0x%X\n", err);
	return err;
}