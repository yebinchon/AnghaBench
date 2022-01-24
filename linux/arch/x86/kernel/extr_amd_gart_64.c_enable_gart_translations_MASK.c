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
struct TYPE_2__ {struct pci_dev* misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_NB_GART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  agp_gatt_table ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;

	if (!FUNC2(AMD_NB_GART))
		return;

	for (i = 0; i < FUNC3(); i++) {
		struct pci_dev *dev = FUNC5(i)->misc;

		FUNC4(dev, FUNC0(agp_gatt_table));
	}

	/* Flush the GART-TLB to remove stale entries */
	FUNC1();
}