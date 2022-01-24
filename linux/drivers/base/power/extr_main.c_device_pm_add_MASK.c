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
struct TYPE_3__ {int in_dpm_list; int /*<<< orphan*/  entry; scalar_t__ is_prepared; } ;
struct device {TYPE_1__ power; struct device* parent; TYPE_2__* bus; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  dpm_list ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC8(struct device *dev)
{
	/* Skip PM setup/initialization. */
	if (FUNC3(dev))
		return;

	FUNC7("Adding info for %s:%s\n",
		 dev->bus ? dev->bus->name : "No Bus", FUNC0(dev));
	FUNC2(dev);
	FUNC5(&dpm_list_mtx);
	if (dev->parent && dev->parent->power.is_prepared)
		FUNC1(dev, "parent %s should not be sleeping\n",
			FUNC0(dev->parent));
	FUNC4(&dev->power.entry, &dpm_list);
	dev->power.in_dpm_list = true;
	FUNC6(&dpm_list_mtx);
}