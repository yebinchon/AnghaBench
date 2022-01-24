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
struct pci_dev {int dummy; } ;
struct agp_bridge_data {size_t aperture_size_idx; int /*<<< orphan*/  gatt_table_real; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  agp_bridges_found ; 
 int /*<<< orphan*/  FUNC0 (struct agp_bridge_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct agp_bridge_data*) ; 
 TYPE_1__* amd64_aperture_sizes ; 
 struct agp_bridge_data* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct agp_bridge_data *bridge = FUNC2(pdev);

	FUNC3(FUNC4(bridge->gatt_table_real),
			   amd64_aperture_sizes[bridge->aperture_size_idx].size);
	FUNC1(bridge);
	FUNC0(bridge);

	agp_bridges_found--;
}