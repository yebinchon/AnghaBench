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
struct nvdimm {int dummy; } ;
struct nfit_mem {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_memory_map {int dummy; } ;

/* Variables and functions */
 struct acpi_nfit_memory_map* FUNC0 (struct nfit_mem*) ; 
 struct nfit_mem* FUNC1 (struct nvdimm*) ; 
 struct nvdimm* FUNC2 (struct device*) ; 

__attribute__((used)) static struct acpi_nfit_memory_map *FUNC3(struct device *dev)
{
	struct nvdimm *nvdimm = FUNC2(dev);
	struct nfit_mem *nfit_mem = FUNC1(nvdimm);

	return FUNC0(nfit_mem);
}