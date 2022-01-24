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
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(struct device *dev)
{
	/* For DT, this is always supported.
	 * For ACPI, this depends on CCA, which
	 * is determined by the acpi_dma_supported().
	 */
	if (FUNC1(CONFIG_OF) && dev->of_node)
		return true;

	return FUNC2(FUNC0(dev));
}