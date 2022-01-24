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
struct TYPE_2__ {int cca_seen; unsigned long long coherent_dma; } ;
struct acpi_device {TYPE_1__ flags; int /*<<< orphan*/  handle; struct acpi_device* parent; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_ACPI_CCA_REQUIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct acpi_device *adev)
{
	unsigned long long cca = 0;
	acpi_status status;
	struct acpi_device *parent = adev->parent;

	if (parent && parent->flags.cca_seen) {
		/*
		 * From ACPI spec, OSPM will ignore _CCA if an ancestor
		 * already saw one.
		 */
		adev->flags.cca_seen = 1;
		cca = parent->flags.coherent_dma;
	} else {
		status = FUNC2(adev->handle, "_CCA",
					       NULL, &cca);
		if (FUNC0(status))
			adev->flags.cca_seen = 1;
		else if (!FUNC1(CONFIG_ACPI_CCA_REQUIRED))
			/*
			 * If architecture does not specify that _CCA is
			 * required for DMA-able devices (e.g. x86),
			 * we default to _CCA=1.
			 */
			cca = 1;
		else
			FUNC3(adev->handle,
					  "ACPI device is missing _CCA.\n");
	}

	adev->flags.coherent_dma = cca;
}