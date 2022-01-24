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

/* Variables and functions */
 int FUNC0 (struct fsl_mc_device*) ; 
 int FUNC1 (struct fsl_mc_device*) ; 
 int FUNC2 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_mc_device*) ; 
 int FUNC4 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC5(struct fsl_mc_device *mc_dev)
{
	int error;

	error = FUNC2(mc_dev);
	if (error < 0)
		return error;

	error = FUNC0(mc_dev);
	if (error < 0)
		goto error_free_irqs;

	error = FUNC4(mc_dev);
	if (error < 0)
		goto error_free_irqs;

	error = FUNC1(mc_dev);
	if (error < 0)
		goto error_free_irqs;

	return 0;

error_free_irqs:
	FUNC3(mc_dev);
	return error;
}