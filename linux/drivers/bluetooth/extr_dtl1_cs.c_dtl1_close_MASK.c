#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int dummy; } ;
struct dtl1_info {int /*<<< orphan*/  lock; struct hci_dev* hdev; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ UART_IER ; 
 scalar_t__ UART_MCR ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct dtl1_info *info)
{
	unsigned long flags;
	unsigned int iobase = info->p_dev->resource[0]->start;
	struct hci_dev *hdev = info->hdev;

	if (!hdev)
		return -ENODEV;

	FUNC0(hdev);

	FUNC4(&(info->lock), flags);

	/* Reset UART */
	FUNC3(0, iobase + UART_MCR);

	/* Turn off interrupts */
	FUNC3(0, iobase + UART_IER);

	FUNC5(&(info->lock), flags);

	FUNC2(hdev);
	FUNC1(hdev);

	return 0;
}