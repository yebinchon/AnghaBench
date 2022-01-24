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
struct nfit_table_prev {int /*<<< orphan*/  flushes; int /*<<< orphan*/  idts; int /*<<< orphan*/  bdws; int /*<<< orphan*/  dcrs; int /*<<< orphan*/  memdevs; int /*<<< orphan*/  spas; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {struct device* dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct acpi_nfit_desc *acpi_desc,
		struct nfit_table_prev *prev)
{
	struct device *dev = acpi_desc->dev;

	if (!FUNC1(&prev->spas) ||
			!FUNC1(&prev->memdevs) ||
			!FUNC1(&prev->dcrs) ||
			!FUNC1(&prev->bdws) ||
			!FUNC1(&prev->idts) ||
			!FUNC1(&prev->flushes)) {
		FUNC0(dev, "new nfit deletes entries (unsupported)\n");
		return -ENXIO;
	}
	return 0;
}