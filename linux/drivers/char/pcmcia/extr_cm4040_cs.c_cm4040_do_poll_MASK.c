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
struct timer_list {int dummy; } ;
struct reader_dev {int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  poll_wait; scalar_t__ buffer_status; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {scalar_t__ start; } ;

/* Variables and functions */
 unsigned int BSR_BULK_IN_FULL ; 
 unsigned int BSR_BULK_OUT_FULL ; 
 int /*<<< orphan*/  BS_READABLE ; 
 int /*<<< orphan*/  BS_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int,struct reader_dev*,char*) ; 
 scalar_t__ POLL_PERIOD ; 
 scalar_t__ REG_OFFSET_BUFFER_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct reader_dev* dev ; 
 struct reader_dev* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  poll_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct reader_dev *dev = FUNC2(dev, t, poll_timer);
	unsigned int obs = FUNC6(dev->p_dev->resource[0]->start
				+ REG_OFFSET_BUFFER_STATUS);

	if ((obs & BSR_BULK_IN_FULL)) {
		FUNC4(BS_READABLE, &dev->buffer_status);
		FUNC0(4, dev, "waking up read_wait\n");
		FUNC5(&dev->read_wait);
	} else
		FUNC1(BS_READABLE, &dev->buffer_status);

	if (!(obs & BSR_BULK_OUT_FULL)) {
		FUNC4(BS_WRITABLE, &dev->buffer_status);
		FUNC0(4, dev, "waking up write_wait\n");
		FUNC5(&dev->write_wait);
	} else
		FUNC1(BS_WRITABLE, &dev->buffer_status);

	if (dev->buffer_status)
		FUNC5(&dev->poll_wait);

	FUNC3(&dev->poll_timer, jiffies + POLL_PERIOD);
}