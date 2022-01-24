#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct fsl_mc_device {TYPE_2__ dev; TYPE_1__ obj_desc; } ;
struct fsl_mc_bus {int dummy; } ;
typedef  enum fsl_mc_pool_type { ____Placeholder_fsl_mc_pool_type } fsl_mc_pool_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_mc_device*) ; 
 int FUNC3 (struct fsl_mc_bus*,int,struct fsl_mc_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 struct fsl_mc_bus* FUNC5 (struct fsl_mc_device*) ; 
 struct fsl_mc_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fsl_mc_device *mc_dev)
{
	enum fsl_mc_pool_type pool_type;
	struct fsl_mc_device *mc_bus_dev;
	struct fsl_mc_bus *mc_bus;
	int error;

	if (!FUNC2(mc_dev))
		return -EINVAL;

	mc_bus_dev = FUNC6(mc_dev->dev.parent);
	if (!FUNC1(&mc_bus_dev->dev))
		return -EINVAL;

	mc_bus = FUNC5(mc_bus_dev);
	error = FUNC4(mc_dev->obj_desc.type, &pool_type);
	if (error < 0)
		return error;

	error = FUNC3(mc_bus, pool_type, mc_dev);
	if (error < 0)
		return error;

	FUNC0(&mc_dev->dev,
		"Allocatable fsl-mc device bound to fsl_mc_allocator driver");
	return 0;
}