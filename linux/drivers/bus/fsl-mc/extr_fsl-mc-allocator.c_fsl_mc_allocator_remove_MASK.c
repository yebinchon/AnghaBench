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
struct fsl_mc_device {int /*<<< orphan*/  dev; scalar_t__ resource; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_mc_device*) ; 
 int FUNC2 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC3(struct fsl_mc_device *mc_dev)
{
	int error;

	if (!FUNC1(mc_dev))
		return -EINVAL;

	if (mc_dev->resource) {
		error = FUNC2(mc_dev);
		if (error < 0)
			return error;
	}

	FUNC0(&mc_dev->dev,
		"Allocatable fsl-mc device unbound from fsl_mc_allocator driver");
	return 0;
}