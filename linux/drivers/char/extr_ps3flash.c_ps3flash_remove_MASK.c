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
struct ps3_system_bus_device {int /*<<< orphan*/  core; } ;
struct ps3_storage_device {int /*<<< orphan*/  sbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ps3flash_dev ; 
 int /*<<< orphan*/  ps3flash_misc ; 
 int /*<<< orphan*/  FUNC5 (struct ps3_storage_device*) ; 
 struct ps3_storage_device* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ps3_system_bus_device *_dev)
{
	struct ps3_storage_device *dev = FUNC6(&_dev->core);

	FUNC2(NULL);
	FUNC1(&ps3flash_misc);
	FUNC5(dev);
	FUNC0(FUNC3(&dev->sbd));
	FUNC4(&dev->sbd, NULL);
	ps3flash_dev = NULL;
	return 0;
}