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
struct zpci_dev {int /*<<< orphan*/  fid; int /*<<< orphan*/  entry; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 struct zpci_dev* FUNC0 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct zpci_dev*) ; 
 int /*<<< orphan*/  zpci_list_lock ; 

void FUNC10(struct pci_bus *bus)
{
	struct zpci_dev *zdev = FUNC0(bus);

	FUNC8(zdev);
	FUNC5(zdev);
	FUNC7(zdev);
	FUNC9(zdev);

	FUNC3(&zpci_list_lock);
	FUNC2(&zdev->entry);
	FUNC4(&zpci_list_lock);

	FUNC6(3, "rem fid:%x\n", zdev->fid);
	FUNC1(zdev);
}