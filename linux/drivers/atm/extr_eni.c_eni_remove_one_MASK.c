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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct eni_zero {int /*<<< orphan*/  dma; int /*<<< orphan*/  addr; } ;
struct eni_dev {struct eni_zero zero; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 struct eni_dev* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  ENI_ZEROES_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct eni_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct atm_dev* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct atm_dev *dev = FUNC6(pdev);
	struct eni_dev *ed = FUNC0(dev);
	struct eni_zero *zero = &ed->zero;

	FUNC3(dev);
	FUNC1(dev);
	FUNC2(&pdev->dev, ENI_ZEROES_SIZE, zero->addr, zero->dma);
	FUNC4(ed);
	FUNC5(pdev);
}