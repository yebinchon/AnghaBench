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
struct nokia_bt_dev {int rx_enabled; int /*<<< orphan*/  wakeup_host; TYPE_1__* serdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct nokia_bt_dev *btdev = data;
	struct device *dev = &btdev->serdev->dev;
	int wake_state = FUNC0(btdev->wakeup_host);

	if (btdev->rx_enabled == wake_state)
		return IRQ_HANDLED;

	if (wake_state)
		FUNC1(dev);
	else
		FUNC2(dev);

	btdev->rx_enabled = wake_state;

	return IRQ_HANDLED;
}