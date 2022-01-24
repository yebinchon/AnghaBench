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
struct mips_cdmm_driver {int /*<<< orphan*/  id_table; } ;
struct mips_cdmm_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct mips_cdmm_device*) ; 
 struct mips_cdmm_device* FUNC1 (struct device*) ; 
 struct mips_cdmm_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct mips_cdmm_device *cdev = FUNC1(dev);
	struct mips_cdmm_driver *cdrv = FUNC2(drv);

	return FUNC0(cdrv->id_table, cdev) != NULL;
}