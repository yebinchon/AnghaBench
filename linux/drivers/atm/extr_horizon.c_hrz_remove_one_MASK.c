#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  iobase; int /*<<< orphan*/  irq; int /*<<< orphan*/  atm_dev; int /*<<< orphan*/  housekeeping; } ;
typedef  TYPE_1__ hrz_dev ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_INFO ; 
 int /*<<< orphan*/  HRZ_IO_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 TYPE_1__* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pci_dev)
{
	hrz_dev *dev;

	dev = FUNC7(pci_dev);

	FUNC0(DBG_INFO, "closing %p (atm_dev = %p)", dev, dev->atm_dev);
	FUNC2(&dev->housekeeping);
	FUNC4(dev);
	FUNC1(dev->atm_dev);
	FUNC3(dev->irq, dev);
	FUNC8(dev->iobase, HRZ_IO_EXTENT);
	FUNC5(dev);

	FUNC6(pci_dev);
}