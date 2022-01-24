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
struct pci_dev {int dummy; } ;
struct agp_bridge_data {int /*<<< orphan*/  agp_in_use; } ;

/* Variables and functions */
 struct agp_bridge_data* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

struct agp_bridge_data *FUNC3(struct pci_dev *pdev)
{
	struct agp_bridge_data *bridge;

	bridge = FUNC0(pdev);

	if (!bridge)
		return NULL;

	if (FUNC2(&bridge->agp_in_use))
		return NULL;
	FUNC1(&bridge->agp_in_use);
	return bridge;
}