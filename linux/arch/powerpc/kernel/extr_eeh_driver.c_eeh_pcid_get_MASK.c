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
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;
struct pci_driver {TYPE_1__ driver; } ;
struct pci_dev {struct pci_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct pci_driver *FUNC1(struct pci_dev *pdev)
{
	if (!pdev || !pdev->driver)
		return NULL;

	if (!FUNC0(pdev->driver->driver.owner))
		return NULL;

	return pdev->driver;
}