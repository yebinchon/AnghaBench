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
 int /*<<< orphan*/  AMD64_GARTAPERTUREBASE ; 
 int /*<<< orphan*/  AMD_NB_GART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int aperture_alloc ; 
 int /*<<< orphan*/  aperture_order ; 
 int /*<<< orphan*/  fix_up_north_bridges ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;

	if (!fix_up_north_bridges)
		return;

	if (!FUNC0(AMD_NB_GART))
		return;

	FUNC5("PCI-DMA: Restoring GART aperture settings\n");

	for (i = 0; i < FUNC1(); i++) {
		struct pci_dev *dev = FUNC3(i)->misc;

		/*
		 * Don't enable translations just yet.  That is the next
		 * step.  Restore the pre-suspend aperture settings.
		 */
		FUNC2(dev, aperture_order);
		FUNC4(dev, AMD64_GARTAPERTUREBASE, aperture_alloc >> 25);
	}
}