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
struct fs_dev {struct fs_dev* next; int /*<<< orphan*/  flags; struct atm_dev* atm_dev; struct pci_dev* pci_dev; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FS_DEBUG_ALLOC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct atm_dev*) ; 
 struct atm_dev* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct fs_dev* fs_boards ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct fs_dev*,int) ; 
 scalar_t__ FUNC3 (struct fs_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_dev*) ; 
 struct fs_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ops ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pci_dev,
			       const struct pci_device_id *ent)
{
	struct atm_dev *atm_dev;
	struct fs_dev *fs_dev;
	
	if (FUNC6(pci_dev)) 
		goto err_out;

	fs_dev = FUNC5 (sizeof (struct fs_dev), GFP_KERNEL);
	FUNC2 (FS_DEBUG_ALLOC, "Alloc fs-dev: %p(%zd)\n",
		    fs_dev, sizeof (struct fs_dev));
	if (!fs_dev)
		goto err_out;
	atm_dev = FUNC1("fs", &pci_dev->dev, &ops, -1, NULL);
	if (!atm_dev)
		goto err_out_free_fs_dev;
  
	fs_dev->pci_dev = pci_dev;
	fs_dev->atm_dev = atm_dev;
	fs_dev->flags = ent->driver_data;

	if (FUNC3(fs_dev))
		goto err_out_free_atm_dev;

	fs_dev->next = fs_boards;
	fs_boards = fs_dev;
	return 0;

 err_out_free_atm_dev:
	FUNC0(atm_dev);
 err_out_free_fs_dev:
 	FUNC4(fs_dev);
 err_out:
	return -ENODEV;
}