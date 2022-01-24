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
struct fsl_mc_obj_desc {int /*<<< orphan*/  type; } ;
struct fsl_mc_device {int dummy; } ;
struct fsl_mc_child_objs {int child_count; struct fsl_mc_obj_desc* child_array; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fsl_mc_device*,struct fsl_mc_obj_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_mc_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct fsl_mc_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	int i;
	struct fsl_mc_child_objs *objs;
	struct fsl_mc_device *mc_dev;

	mc_dev = FUNC3(dev);
	objs = data;

	for (i = 0; i < objs->child_count; i++) {
		struct fsl_mc_obj_desc *obj_desc = &objs->child_array[i];

		if (FUNC2(obj_desc->type) != 0 &&
		    FUNC0(mc_dev, obj_desc))
			break;
	}

	if (i == objs->child_count)
		FUNC1(mc_dev);

	return 0;
}