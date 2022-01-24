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
struct mid_pwr {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 int LSS_PWS_BITS ; 
 scalar_t__ PCI_D0 ; 
 scalar_t__ PCI_D3hot ; 
 int FUNC0 (struct mid_pwr*,struct pci_dev*,scalar_t__,int,int,int) ; 
 int FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mid_pwr *pwr, struct pci_dev *pdev,
				   pci_power_t state)
{
	int id, reg, bit;
	int ret;

	id = FUNC1(pdev);
	if (id < 0)
		return id;

	reg = (id * LSS_PWS_BITS) / 32;
	bit = (id * LSS_PWS_BITS) % 32;

	/* We support states between PCI_D0 and PCI_D3hot */
	if (state < PCI_D0)
		state = PCI_D0;
	if (state > PCI_D3hot)
		state = PCI_D3hot;

	FUNC2(&pwr->lock);
	ret = FUNC0(pwr, pdev, state, id, reg, bit);
	FUNC3(&pwr->lock);
	return ret;
}