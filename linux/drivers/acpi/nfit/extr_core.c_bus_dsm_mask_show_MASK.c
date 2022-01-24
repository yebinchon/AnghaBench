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
struct nvdimm_bus_descriptor {int /*<<< orphan*/  bus_dsm_mask; } ;
struct nvdimm_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 struct nvdimm_bus_descriptor* FUNC1 (struct nvdimm_bus*) ; 
 struct nvdimm_bus* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nvdimm_bus *nvdimm_bus = FUNC2(dev);
	struct nvdimm_bus_descriptor *nd_desc = FUNC1(nvdimm_bus);

	return FUNC0(buf, "%#lx\n", nd_desc->bus_dsm_mask);
}