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
struct TYPE_4__ {int in_dpm_list; int /*<<< orphan*/  entry; int /*<<< orphan*/  completion; } ;
struct device {TYPE_2__ power; TYPE_1__* bus; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC10(struct device *dev)
{
	if (FUNC3(dev))
		return;

	FUNC9("Removing info for %s:%s\n",
		 dev->bus ? dev->bus->name : "No Bus", FUNC1(dev));
	FUNC0(&dev->power.completion);
	FUNC6(&dpm_list_mtx);
	FUNC5(&dev->power.entry);
	dev->power.in_dpm_list = false;
	FUNC7(&dpm_list_mtx);
	FUNC4(dev);
	FUNC8(dev);
	FUNC2(dev);
}