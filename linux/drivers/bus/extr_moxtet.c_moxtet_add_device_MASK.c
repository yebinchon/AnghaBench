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
struct moxtet_device {scalar_t__ idx; int id; TYPE_1__* moxtet; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TURRIS_MOX_MAX_MODULES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct moxtet_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  moxtet_bus_type ; 
 int /*<<< orphan*/  moxtet_dev_check ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct moxtet_device *dev)
{
	static DEFINE_MUTEX(add_mutex);
	int ret;

	if (dev->idx >= TURRIS_MOX_MAX_MODULES || dev->id > 0xf)
		return -EINVAL;

	FUNC3(&dev->dev, "moxtet-%s.%u", FUNC5(dev->id),
		     dev->idx);

	FUNC6(&add_mutex);

	ret = FUNC0(&moxtet_bus_type, NULL, dev,
			       moxtet_dev_check);
	if (ret)
		goto done;

	ret = FUNC4(&dev->dev);
	if (ret < 0)
		FUNC1(dev->moxtet->dev, "can't add %s, status %d\n",
			FUNC2(dev->moxtet->dev), ret);

done:
	FUNC7(&add_mutex);
	return ret;
}