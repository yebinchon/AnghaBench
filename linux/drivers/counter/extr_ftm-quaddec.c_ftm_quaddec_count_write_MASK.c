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
typedef  scalar_t__ u32 ;
struct ftm_quaddec {TYPE_1__* pdev; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count_write_value {int dummy; } ;
struct counter_count {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTER_COUNT_POSITION ; 
 int EINVAL ; 
 int FUNC0 (scalar_t__*,int /*<<< orphan*/ ,struct counter_count_write_value*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_quaddec* const) ; 

__attribute__((used)) static int FUNC3(struct counter_device *counter,
				   struct counter_count *count,
				   struct counter_count_write_value *val)
{
	struct ftm_quaddec *const ftm = counter->priv;
	u32 cnt;
	int err;

	err = FUNC0(&cnt, COUNTER_COUNT_POSITION, val);
	if (err)
		return err;

	if (cnt != 0) {
		FUNC1(&ftm->pdev->dev, "Can only accept '0' as new counter value\n");
		return -EINVAL;
	}

	FUNC2(ftm);

	return 0;
}