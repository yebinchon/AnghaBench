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
struct sa1111_dev {unsigned int skpcr_mask; int /*<<< orphan*/  devid; } ;
struct sa1111 {int /*<<< orphan*/  lock; scalar_t__ base; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* enable ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ SA1111_SKPCR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct sa1111* FUNC1 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

int FUNC6(struct sa1111_dev *sadev)
{
	struct sa1111 *sachip = FUNC1(sadev);
	unsigned long flags;
	unsigned int val;
	int ret = 0;

	if (sachip->pdata && sachip->pdata->enable)
		ret = sachip->pdata->enable(sachip->pdata->data, sadev->devid);

	if (ret == 0) {
		FUNC2(&sachip->lock, flags);
		val = FUNC0(sachip->base + SA1111_SKPCR);
		FUNC5(val | sadev->skpcr_mask, sachip->base + SA1111_SKPCR);
		FUNC3(&sachip->lock, flags);
	}
	return ret;
}