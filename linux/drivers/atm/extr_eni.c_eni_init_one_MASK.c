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
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct eni_zero {int /*<<< orphan*/  dma; int /*<<< orphan*/  addr; } ;
struct eni_dev {struct atm_dev* more; int /*<<< orphan*/  asic; struct pci_dev* pci_dev; struct eni_zero zero; } ;
struct atm_dev {struct eni_dev* dev_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_LABEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENI_ZEROES_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct atm_dev*) ; 
 struct atm_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atm_dev* eni_boards ; 
 int FUNC6 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct atm_dev*) ; 
 int FUNC8 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct eni_dev*) ; 
 struct eni_dev* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct atm_dev*) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pci_dev,
			const struct pci_device_id *ent)
{
	struct atm_dev *dev;
	struct eni_dev *eni_dev;
	struct eni_zero *zero;
	int rc;

	rc = FUNC12(pci_dev);
	if (rc < 0)
		goto out;

	rc = FUNC5(&pci_dev->dev, FUNC0(32));
	if (rc < 0)
		goto out;

	rc = -ENOMEM;
	eni_dev = FUNC10(sizeof(struct eni_dev), GFP_KERNEL);
	if (!eni_dev)
		goto err_disable;

	zero = &eni_dev->zero;
	zero->addr = FUNC3(&pci_dev->dev,
					ENI_ZEROES_SIZE, &zero->dma, GFP_KERNEL);
	if (!zero->addr)
		goto err_kfree;

	dev = FUNC2(DEV_LABEL, &pci_dev->dev, &ops, -1, NULL);
	if (!dev)
		goto err_free_consistent;

	dev->dev_data = eni_dev;
	FUNC13(pci_dev, dev);
	eni_dev->pci_dev = pci_dev;
	eni_dev->asic = ent->driver_data;

	rc = FUNC6(dev);
	if (rc < 0)
		goto err_unregister;

	rc = FUNC8(dev);
	if (rc < 0)
		goto err_eni_release;

	eni_dev->more = eni_boards;
	eni_boards = dev;
out:
	return rc;

err_eni_release:
	FUNC7(dev);
err_unregister:
	FUNC1(dev);
err_free_consistent:
	FUNC4(&pci_dev->dev, ENI_ZEROES_SIZE, zero->addr, zero->dma);
err_kfree:
	FUNC9(eni_dev);
err_disable:
	FUNC11(pci_dev);
	goto out;
}