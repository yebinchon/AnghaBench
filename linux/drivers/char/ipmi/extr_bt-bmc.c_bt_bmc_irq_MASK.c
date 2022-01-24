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
struct bt_bmc {int /*<<< orphan*/  queue; scalar_t__ offset; int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ BT_CR2 ; 
 int BT_CR2_IRQ_H2B ; 
 int BT_CR2_IRQ_HBUSY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct bt_bmc *bt_bmc = arg;
	u32 reg;
	int rc;

	rc = FUNC0(bt_bmc->map, bt_bmc->offset + BT_CR2, &reg);
	if (rc)
		return IRQ_NONE;

	reg &= BT_CR2_IRQ_H2B | BT_CR2_IRQ_HBUSY;
	if (!reg)
		return IRQ_NONE;

	/* ack pending IRQs */
	FUNC1(bt_bmc->map, bt_bmc->offset + BT_CR2, reg);

	FUNC2(&bt_bmc->queue);
	return IRQ_HANDLED;
}