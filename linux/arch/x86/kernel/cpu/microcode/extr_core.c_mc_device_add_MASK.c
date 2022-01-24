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
struct subsys_interface {int dummy; } ;
struct device {int id; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UCODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mc_attr_group ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct subsys_interface *sif)
{
	int err, cpu = dev->id;

	if (!FUNC0(cpu))
		return 0;

	FUNC2("CPU%d added\n", cpu);

	err = FUNC3(&dev->kobj, &mc_attr_group);
	if (err)
		return err;

	if (FUNC1(cpu, true) == UCODE_ERROR)
		return -EINVAL;

	return err;
}