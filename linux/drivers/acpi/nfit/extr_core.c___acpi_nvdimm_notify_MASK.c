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
typedef  scalar_t__ u32 ;
struct nfit_mem {scalar_t__ flags_attr; } ;
struct device {struct device* parent; } ;
struct acpi_nfit_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFIT_NOTIFY_DIMM_HEALTH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct device *dev, u32 event)
{
	struct nfit_mem *nfit_mem;
	struct acpi_nfit_desc *acpi_desc;

	FUNC0(dev->parent, "%s: event: %d\n", FUNC2(dev),
			event);

	if (event != NFIT_NOTIFY_DIMM_HEALTH) {
		FUNC0(dev->parent, "%s: unknown event: %d\n", FUNC2(dev),
				event);
		return;
	}

	acpi_desc = FUNC1(dev->parent);
	if (!acpi_desc)
		return;

	/*
	 * If we successfully retrieved acpi_desc, then we know nfit_mem data
	 * is still valid.
	 */
	nfit_mem = FUNC1(dev);
	if (nfit_mem && nfit_mem->flags_attr)
		FUNC3(nfit_mem->flags_attr);
}