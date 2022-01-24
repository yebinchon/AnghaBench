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
struct moxtet_device {int idx; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct moxtet {int count; int /*<<< orphan*/  dev; int /*<<< orphan*/ * modules; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (struct moxtet_device*) ; 
 struct moxtet_device* FUNC2 (struct moxtet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct moxtet *moxtet)
{
	struct moxtet_device *dev;
	int i, ret;

	for (i = 0; i < moxtet->count; ++i) {
		dev = FUNC2(moxtet);
		if (!dev) {
			FUNC0(moxtet->dev, "Moxtet device %u alloc error\n",
				i);
			continue;
		}

		dev->idx = i;
		dev->id = moxtet->modules[i];

		ret = FUNC1(dev);
		if (ret && ret != -EBUSY) {
			FUNC3(&dev->dev);
			FUNC0(moxtet->dev,
				"Moxtet device %u register error: %i\n", i,
				ret);
		}
	}
}