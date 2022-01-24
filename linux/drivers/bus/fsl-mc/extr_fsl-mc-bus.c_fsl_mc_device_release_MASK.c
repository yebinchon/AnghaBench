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
struct fsl_mc_device {struct fsl_mc_device* regions; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_mc_device*) ; 
 struct fsl_mc_device* FUNC2 (struct fsl_mc_device*) ; 
 struct fsl_mc_device* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct fsl_mc_device *mc_dev = FUNC3(dev);

	FUNC1(mc_dev->regions);

	if (FUNC0(mc_dev))
		FUNC1(FUNC2(mc_dev));
	else
		FUNC1(mc_dev);
}