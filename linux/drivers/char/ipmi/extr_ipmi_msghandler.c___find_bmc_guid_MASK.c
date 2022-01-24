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
struct device {int /*<<< orphan*/ * type; } ;
struct bmc_device {int /*<<< orphan*/  usecount; int /*<<< orphan*/  guid; scalar_t__ dyn_guid_set; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  bmc_device_type ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct bmc_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, const void *data)
{
	const guid_t *guid = data;
	struct bmc_device *bmc;
	int rv;

	if (dev->type != &bmc_device_type)
		return 0;

	bmc = FUNC2(dev);
	rv = bmc->dyn_guid_set && FUNC0(&bmc->guid, guid);
	if (rv)
		rv = FUNC1(&bmc->usecount);
	return rv;
}