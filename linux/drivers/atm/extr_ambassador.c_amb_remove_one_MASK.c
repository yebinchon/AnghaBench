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
struct amb_dev {int /*<<< orphan*/  atm_dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  housekeeping; } ;

/* Variables and functions */
 int DBG_INFO ; 
 int DBG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct amb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amb_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct amb_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct amb_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct amb_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct amb_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 struct amb_dev* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pci_dev)
{
	struct amb_dev *dev;

	dev = FUNC10(pci_dev);

	FUNC0(DBG_INFO|DBG_INIT, "closing %p (atm_dev = %p)", dev, dev->atm_dev);
	FUNC3(&dev->housekeeping);
	// the drain should not be necessary
	FUNC5(dev);
	FUNC7(dev);
	FUNC1(dev, 0);
	FUNC6(dev->irq, dev);
	FUNC9(pci_dev);
	FUNC4(dev);
	FUNC2(dev->atm_dev);
	FUNC8(dev);
	FUNC11(pci_dev, 1);
}