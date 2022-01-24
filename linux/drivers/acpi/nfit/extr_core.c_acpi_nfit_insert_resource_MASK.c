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
struct resource {char* name; int /*<<< orphan*/  desc; int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct nd_region_desc {struct resource* res; } ;
struct acpi_nfit_desc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IORES_DESC_PERSISTENT_MEMORY ; 
 int REGION_INTERSECTS ; 
 int /*<<< orphan*/  acpi_nfit_remove_resource ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  iomem_resource ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 

__attribute__((used)) static int FUNC5(struct acpi_nfit_desc *acpi_desc,
		struct nd_region_desc *ndr_desc)
{
	struct resource *res, *nd_res = ndr_desc->res;
	int is_pmem, ret;

	/* No operation if the region is already registered as PMEM */
	is_pmem = FUNC3(nd_res->start, FUNC4(nd_res),
				IORESOURCE_MEM, IORES_DESC_PERSISTENT_MEMORY);
	if (is_pmem == REGION_INTERSECTS)
		return 0;

	res = FUNC1(acpi_desc->dev, sizeof(*res), GFP_KERNEL);
	if (!res)
		return -ENOMEM;

	res->name = "Persistent Memory";
	res->start = nd_res->start;
	res->end = nd_res->end;
	res->flags = IORESOURCE_MEM;
	res->desc = IORES_DESC_PERSISTENT_MEMORY;

	ret = FUNC2(&iomem_resource, res);
	if (ret)
		return ret;

	ret = FUNC0(acpi_desc->dev,
					acpi_nfit_remove_resource,
					res);
	if (ret)
		return ret;

	return 0;
}