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
typedef  int /*<<< orphan*/  u8 ;
struct moxtet_device {scalar_t__ idx; struct moxtet* moxtet; } ;
struct moxtet {scalar_t__ count; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tx; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 struct moxtet_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct device *dev, u8 val)
{
	struct moxtet_device *mdev = FUNC3(dev);
	struct moxtet *moxtet = mdev->moxtet;
	int ret;

	if (mdev->idx >= moxtet->count)
		return -EINVAL;

	FUNC0(&moxtet->lock);

	moxtet->tx[moxtet->count - mdev->idx] = val;

	ret = FUNC2(FUNC4(moxtet->dev), moxtet->tx,
			moxtet->count + 1);

	FUNC1(&moxtet->lock);

	return ret;
}