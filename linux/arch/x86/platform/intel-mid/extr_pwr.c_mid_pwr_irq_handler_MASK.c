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
typedef  int u32 ;
struct mid_pwr {int /*<<< orphan*/  dev; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PM_ICS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PM_ICS_IP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct mid_pwr *pwr = dev_id;
	u32 ics;

	ics = FUNC2(pwr->regs + PM_ICS);
	if (!(ics & PM_ICS_IP))
		return IRQ_NONE;

	FUNC3(ics | PM_ICS_IP, pwr->regs + PM_ICS);

	FUNC1(pwr->dev, "Unexpected IRQ: %#x\n", FUNC0(ics));
	return IRQ_HANDLED;
}