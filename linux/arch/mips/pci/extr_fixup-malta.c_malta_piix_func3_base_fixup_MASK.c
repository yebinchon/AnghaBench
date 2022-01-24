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

/* Variables and functions */
 int /*<<< orphan*/  PIIX4_FUNC3_PMBA ; 
 int /*<<< orphan*/  PIIX4_FUNC3_PMREGMISC ; 
 int /*<<< orphan*/  PIIX4_FUNC3_PMREGMISC_EN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	/* Set a sane PM I/O base address */
	FUNC1(dev, PIIX4_FUNC3_PMBA, 0x1000);

	/* Enable access to the PM I/O region */
	FUNC0(dev, PIIX4_FUNC3_PMREGMISC,
			      PIIX4_FUNC3_PMREGMISC_EN);
}