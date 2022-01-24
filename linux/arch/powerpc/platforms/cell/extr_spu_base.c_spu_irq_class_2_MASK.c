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
struct TYPE_2__ {int /*<<< orphan*/  class2_intr; } ;
struct spu {int /*<<< orphan*/  register_lock; TYPE_1__ stats; int /*<<< orphan*/  (* wbox_callback ) (struct spu*) ;int /*<<< orphan*/  (* mfc_callback ) (struct spu*) ;int /*<<< orphan*/  (* stop_callback ) (struct spu*,int) ;int /*<<< orphan*/  (* ibox_callback ) (struct spu*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned long CLASS2_MAILBOX_INTR ; 
 unsigned long CLASS2_MAILBOX_THRESHOLD_INTR ; 
 unsigned long CLASS2_SPU_DMA_TAG_GROUP_COMPLETE_INTR ; 
 unsigned long CLASS2_SPU_HALT_INTR ; 
 unsigned long CLASS2_SPU_STOP_INTR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,int,unsigned long) ; 
 unsigned long FUNC4 (struct spu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct spu*,int,unsigned long) ; 
 unsigned long FUNC6 (struct spu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct spu*) ; 
 int /*<<< orphan*/  FUNC8 (struct spu*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct spu*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct spu*) ; 
 int /*<<< orphan*/  FUNC11 (struct spu*) ; 

__attribute__((used)) static irqreturn_t
FUNC12(int irq, void *data)
{
	struct spu *spu;
	unsigned long stat;
	unsigned long mask;
	const int mailbox_intrs =
		CLASS2_MAILBOX_THRESHOLD_INTR | CLASS2_MAILBOX_INTR;

	spu = data;
	FUNC1(&spu->register_lock);
	stat = FUNC6(spu, 2);
	mask = FUNC4(spu, 2);
	/* ignore interrupts we're not waiting for */
	stat &= mask;
	/* mailbox interrupts are level triggered. mask them now before
	 * acknowledging */
	if (stat & mailbox_intrs)
		FUNC3(spu, 2, ~(stat & mailbox_intrs));
	/* acknowledge all interrupts before the callbacks */
	FUNC5(spu, 2, stat);

	FUNC0("class 2 interrupt %d, %lx, %lx\n", irq, stat, mask);

	if (stat & CLASS2_MAILBOX_INTR)
		spu->ibox_callback(spu);

	if (stat & CLASS2_SPU_STOP_INTR)
		spu->stop_callback(spu, 2);

	if (stat & CLASS2_SPU_HALT_INTR)
		spu->stop_callback(spu, 2);

	if (stat & CLASS2_SPU_DMA_TAG_GROUP_COMPLETE_INTR)
		spu->mfc_callback(spu);

	if (stat & CLASS2_MAILBOX_THRESHOLD_INTR)
		spu->wbox_callback(spu);

	spu->stats.class2_intr++;

	FUNC2(&spu->register_lock);

	return stat ? IRQ_HANDLED : IRQ_NONE;
}