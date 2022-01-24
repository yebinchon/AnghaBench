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
struct fsl_mc_obj_desc {char* type; int id; int ver_major; scalar_t__ irq_count; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {unsigned int irq_count; } ;
struct fsl_mc_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mc_handle; int /*<<< orphan*/  mc_io; TYPE_1__ obj_desc; } ;
struct fsl_mc_bus {int /*<<< orphan*/  irq_resources; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS ; 
 int /*<<< orphan*/  FSL_MC_OBJ_FLAG_NO_MEM_SHAREABILITY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fsl_mc_obj_desc*) ; 
 struct fsl_mc_obj_desc* FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_mc_device*,struct fsl_mc_obj_desc*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fsl_mc_obj_desc*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_mc_device*,struct fsl_mc_obj_desc*,int) ; 
 int FUNC10 (struct fsl_mc_bus*,unsigned int) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 struct fsl_mc_bus* FUNC12 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC13(struct fsl_mc_device *mc_bus_dev,
			     unsigned int *total_irq_count)
{
	int num_child_objects;
	int dprc_get_obj_failures;
	int error;
	unsigned int irq_count = mc_bus_dev->obj_desc.irq_count;
	struct fsl_mc_obj_desc *child_obj_desc_array = NULL;
	struct fsl_mc_bus *mc_bus = FUNC12(mc_bus_dev);

	error = FUNC8(mc_bus_dev->mc_io,
				   0,
				   mc_bus_dev->mc_handle,
				   &num_child_objects);
	if (error < 0) {
		FUNC1(&mc_bus_dev->dev, "dprc_get_obj_count() failed: %d\n",
			error);
		return error;
	}

	if (num_child_objects != 0) {
		int i;

		child_obj_desc_array =
		    FUNC5(&mc_bus_dev->dev, num_child_objects,
				       sizeof(*child_obj_desc_array),
				       GFP_KERNEL);
		if (!child_obj_desc_array)
			return -ENOMEM;

		/*
		 * Discover objects currently present in the physical DPRC:
		 */
		dprc_get_obj_failures = 0;
		for (i = 0; i < num_child_objects; i++) {
			struct fsl_mc_obj_desc *obj_desc =
			    &child_obj_desc_array[i];

			error = FUNC7(mc_bus_dev->mc_io,
					     0,
					     mc_bus_dev->mc_handle,
					     i, obj_desc);
			if (error < 0) {
				FUNC1(&mc_bus_dev->dev,
					"dprc_get_obj(i=%d) failed: %d\n",
					i, error);
				/*
				 * Mark the obj entry as "invalid", by using the
				 * empty string as obj type:
				 */
				obj_desc->type[0] = '\0';
				obj_desc->id = error;
				dprc_get_obj_failures++;
				continue;
			}

			/*
			 * add a quirk for all versions of dpsec < 4.0...none
			 * are coherent regardless of what the MC reports.
			 */
			if ((FUNC11(obj_desc->type, "dpseci") == 0) &&
			    (obj_desc->ver_major < 4))
				obj_desc->flags |=
					FSL_MC_OBJ_FLAG_NO_MEM_SHAREABILITY;

			irq_count += obj_desc->irq_count;
			FUNC0(&mc_bus_dev->dev,
				"Discovered object: type %s, id %d\n",
				obj_desc->type, obj_desc->id);
		}

		if (dprc_get_obj_failures != 0) {
			FUNC1(&mc_bus_dev->dev,
				"%d out of %d devices could not be retrieved\n",
				dprc_get_obj_failures, num_child_objects);
		}
	}

	/*
	 * Allocate IRQ's before binding the scanned devices with their
	 * respective drivers.
	 */
	if (FUNC2(&mc_bus_dev->dev) && !mc_bus->irq_resources) {
		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
			FUNC3(&mc_bus_dev->dev,
				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
		}

		error = FUNC10(mc_bus,
				FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
		if (error < 0)
			return error;
	}

	if (total_irq_count)
		*total_irq_count = irq_count;

	FUNC9(mc_bus_dev, child_obj_desc_array,
			    num_child_objects);

	FUNC6(mc_bus_dev, child_obj_desc_array,
			     num_child_objects);

	if (child_obj_desc_array)
		FUNC4(&mc_bus_dev->dev, child_obj_desc_array);

	return 0;
}