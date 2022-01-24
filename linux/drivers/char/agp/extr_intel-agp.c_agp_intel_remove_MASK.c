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
struct agp_bridge_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agp_bridge_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct agp_bridge_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct agp_bridge_data* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct agp_bridge_data *bridge = FUNC3(pdev);

	FUNC1(bridge);

	FUNC2();

	FUNC0(bridge);
}