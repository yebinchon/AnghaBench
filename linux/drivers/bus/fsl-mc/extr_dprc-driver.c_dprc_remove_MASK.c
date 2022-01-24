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
struct fsl_mc_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * mc_io; int /*<<< orphan*/  mc_handle; } ;
struct fsl_mc_bus {int /*<<< orphan*/  irq_resources; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  __fsl_mc_device_remove ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_mc_bus*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct fsl_mc_device*) ; 
 struct fsl_mc_bus* FUNC12 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC13(struct fsl_mc_device *mc_dev)
{
	int error;
	struct fsl_mc_bus *mc_bus = FUNC12(mc_dev);

	if (!FUNC11(mc_dev))
		return -EINVAL;
	if (!mc_dev->mc_io)
		return -EINVAL;

	if (!mc_bus->irq_resources)
		return -EINVAL;

	if (FUNC1(&mc_dev->dev))
		FUNC6(mc_dev);

	FUNC4(&mc_dev->dev, NULL, __fsl_mc_device_remove);

	if (FUNC1(&mc_dev->dev)) {
		FUNC9(mc_bus);
		FUNC3(&mc_dev->dev, NULL);
	}

	FUNC8(mc_dev);

	error = FUNC5(mc_dev->mc_io, 0, mc_dev->mc_handle);
	if (error < 0)
		FUNC0(&mc_dev->dev, "dprc_close() failed: %d\n", error);

	if (!FUNC10(&mc_dev->dev)) {
		FUNC7(mc_dev->mc_io);
		mc_dev->mc_io = NULL;
	}

	FUNC2(&mc_dev->dev, "DPRC device unbound from driver");
	return 0;
}