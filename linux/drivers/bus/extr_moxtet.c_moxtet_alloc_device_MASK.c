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
struct TYPE_2__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; } ;
struct moxtet_device {TYPE_1__ dev; struct moxtet* moxtet; } ;
struct moxtet {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct moxtet_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  moxtet_bus_type ; 
 int /*<<< orphan*/  moxtet_dev_release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct moxtet_device *
FUNC4(struct moxtet *moxtet)
{
	struct moxtet_device *dev;

	if (!FUNC1(moxtet->dev))
		return NULL;

	dev = FUNC2(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		FUNC3(moxtet->dev);
		return NULL;
	}

	dev->moxtet = moxtet;
	dev->dev.parent = moxtet->dev;
	dev->dev.bus = &moxtet_bus_type;
	dev->dev.release = moxtet_dev_release;

	FUNC0(&dev->dev);

	return dev;
}