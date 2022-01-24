#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct ace_device {int id; scalar_t__ bus_width; int media_change; scalar_t__ physaddr; int /*<<< orphan*/  dev; int /*<<< orphan*/  baseaddr; int /*<<< orphan*/  tag_set; TYPE_2__* queue; TYPE_1__* gd; scalar_t__ irq; int /*<<< orphan*/ * reg_ops; int /*<<< orphan*/  stall_timer; int /*<<< orphan*/  fsm_tasklet; int /*<<< orphan*/  rq_list; int /*<<< orphan*/  id_completion; int /*<<< orphan*/  lock; } ;
struct TYPE_12__ {struct ace_device* queuedata; } ;
struct TYPE_11__ {int first_minor; TYPE_2__* queue; int /*<<< orphan*/  disk_name; struct ace_device* private_data; int /*<<< orphan*/  events; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_BUSMODE ; 
 scalar_t__ ACE_BUS_WIDTH_16 ; 
 int /*<<< orphan*/  ACE_CTRL ; 
 int ACE_CTRL_DATABUFRDYIRQ ; 
 int ACE_CTRL_ERRORIRQ ; 
 int ACE_CTRL_FORCECFGMODE ; 
 int ACE_NUM_MINORS ; 
 int /*<<< orphan*/  ACE_VERSION ; 
 int /*<<< orphan*/  BLK_BOUNCE_HIGH ; 
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int /*<<< orphan*/  DISK_EVENT_MEDIA_CHANGE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ace_fops ; 
 int /*<<< orphan*/  ace_fsm_tasklet ; 
 int FUNC3 (struct ace_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ace_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ace_interrupt ; 
 int /*<<< orphan*/  ace_major ; 
 int /*<<< orphan*/  ace_mq_ops ; 
 int /*<<< orphan*/  FUNC5 (struct ace_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ace_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ace_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ace_reg_8_ops ; 
 int /*<<< orphan*/  ace_reg_be16_ops ; 
 int /*<<< orphan*/  ace_reg_le16_ops ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  ace_stall_timer ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ace_device*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*,char) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct ace_device *ace)
{
	u16 version;
	u16 val;
	int rc;

	FUNC16(ace->dev, "ace_setup(ace=0x%p)\n", ace);
	FUNC16(ace->dev, "physaddr=0x%llx irq=%i\n",
		(unsigned long long)ace->physaddr, ace->irq);

	FUNC25(&ace->lock);
	FUNC19(&ace->id_completion);
	FUNC0(&ace->rq_list);

	/*
	 * Map the device
	 */
	ace->baseaddr = FUNC20(ace->physaddr, 0x80);
	if (!ace->baseaddr)
		goto err_ioremap;

	/*
	 * Initialize the state machine tasklet and stall timer
	 */
	FUNC26(&ace->fsm_tasklet, ace_fsm_tasklet, (unsigned long)ace);
	FUNC27(&ace->stall_timer, ace_stall_timer, 0);

	/*
	 * Initialize the request queue
	 */
	ace->queue = FUNC13(&ace->tag_set, &ace_mq_ops, 2,
						BLK_MQ_F_SHOULD_MERGE);
	if (FUNC1(ace->queue)) {
		rc = FUNC2(ace->queue);
		ace->queue = NULL;
		goto err_blk_initq;
	}
	ace->queue->queuedata = ace;

	FUNC15(ace->queue, 512);
	FUNC14(ace->queue, BLK_BOUNCE_HIGH);

	/*
	 * Allocate and initialize GD structure
	 */
	ace->gd = FUNC10(ACE_NUM_MINORS);
	if (!ace->gd)
		goto err_alloc_disk;

	ace->gd->major = ace_major;
	ace->gd->first_minor = ace->id * ACE_NUM_MINORS;
	ace->gd->fops = &ace_fops;
	ace->gd->events = DISK_EVENT_MEDIA_CHANGE;
	ace->gd->queue = ace->queue;
	ace->gd->private_data = ace;
	FUNC24(ace->gd->disk_name, 32, "xs%c", ace->id + 'a');

	/* set bus width */
	if (ace->bus_width == ACE_BUS_WIDTH_16) {
		/* 0x0101 should work regardless of endianess */
		FUNC7(ace, ACE_BUSMODE, 0x0101);

		/* read it back to determine endianess */
		if (FUNC4(ace, ACE_BUSMODE) == 0x0001)
			ace->reg_ops = &ace_reg_le16_ops;
		else
			ace->reg_ops = &ace_reg_be16_ops;
	} else {
		FUNC6(ace, ACE_BUSMODE, 0x00);
		ace->reg_ops = &ace_reg_8_ops;
	}

	/* Make sure version register is sane */
	version = FUNC3(ace, ACE_VERSION);
	if ((version == 0) || (version == 0xFFFF))
		goto err_read;

	/* Put sysace in a sane state by clearing most control reg bits */
	FUNC5(ace, ACE_CTRL, ACE_CTRL_FORCECFGMODE |
		ACE_CTRL_DATABUFRDYIRQ | ACE_CTRL_ERRORIRQ);

	/* Now we can hook up the irq handler */
	if (ace->irq) {
		rc = FUNC23(ace->irq, ace_interrupt, 0, "systemace", ace);
		if (rc) {
			/* Failure - fall back to polled mode */
			FUNC17(ace->dev, "request_irq failed\n");
			ace->irq = 0;
		}
	}

	/* Enable interrupts */
	val = FUNC3(ace, ACE_CTRL);
	val |= ACE_CTRL_DATABUFRDYIRQ | ACE_CTRL_ERRORIRQ;
	FUNC5(ace, ACE_CTRL, val);

	/* Print the identification */
	FUNC18(ace->dev, "Xilinx SystemACE revision %i.%i.%i\n",
		 (version >> 12) & 0xf, (version >> 8) & 0x0f, version & 0xff);
	FUNC16(ace->dev, "physaddr 0x%llx, mapped to 0x%p, irq=%i\n",
		(unsigned long long) ace->physaddr, ace->baseaddr, ace->irq);

	ace->media_change = 1;
	FUNC8(ace->gd);

	/* Make the sysace device 'live' */
	FUNC9(ace->gd);

	return 0;

err_read:
	/* prevent double queue cleanup */
	ace->gd->queue = NULL;
	FUNC22(ace->gd);
err_alloc_disk:
	FUNC11(ace->queue);
	FUNC12(&ace->tag_set);
err_blk_initq:
	FUNC21(ace->baseaddr);
err_ioremap:
	FUNC18(ace->dev, "xsysace: error initializing device at 0x%llx\n",
		 (unsigned long long) ace->physaddr);
	return -ENOMEM;
}