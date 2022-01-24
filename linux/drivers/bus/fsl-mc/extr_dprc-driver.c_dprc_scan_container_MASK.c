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
struct fsl_mc_device {int dummy; } ;
struct fsl_mc_bus {int /*<<< orphan*/  scan_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct fsl_mc_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fsl_mc_bus* FUNC5 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC6(struct fsl_mc_device *mc_bus_dev)
{
	int error;
	struct fsl_mc_bus *mc_bus = FUNC5(mc_bus_dev);

	FUNC2(mc_bus_dev);

	/*
	 * Discover objects in the DPRC:
	 */
	FUNC3(&mc_bus->scan_mutex);
	error = FUNC0(mc_bus_dev, NULL);
	FUNC4(&mc_bus->scan_mutex);
	if (error < 0) {
		FUNC1(mc_bus_dev);
		return error;
	}

	return 0;
}