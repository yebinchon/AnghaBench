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
struct opal_dev {int supported; int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct opal_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct opal_dev*) ; 

__attribute__((used)) static int FUNC4(struct opal_dev *dev)
{
	int ret;

	FUNC0(&dev->dev_lock);
	FUNC3(dev);
	ret = FUNC2(dev);
	dev->supported = !ret;
	FUNC1(&dev->dev_lock);

	return ret;
}