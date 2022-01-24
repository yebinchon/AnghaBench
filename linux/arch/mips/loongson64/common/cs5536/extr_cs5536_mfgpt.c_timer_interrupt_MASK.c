#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* event_handler ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DIVIL_LBAR_MFGPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MFGPT0_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfgpt_base ; 
 TYPE_1__ mfgpt_clockevent ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	u32 basehi;

	/*
	 * get MFGPT base address
	 *
	 * NOTE: do not remove me, it's need for the value of mfgpt_base is
	 * variable
	 */
	FUNC1(FUNC0(DIVIL_LBAR_MFGPT), &basehi, &mfgpt_base);

	/* ack */
	FUNC3(FUNC2(MFGPT0_SETUP) | 0x4000, MFGPT0_SETUP);

	mfgpt_clockevent.event_handler(&mfgpt_clockevent);

	return IRQ_HANDLED;
}