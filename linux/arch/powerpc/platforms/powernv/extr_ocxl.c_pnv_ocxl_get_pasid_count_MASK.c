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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; } ;
struct npu_link {scalar_t__* fn_desired_actags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PNV_OCXL_PASID_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct npu_link* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  links_list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct pci_dev *dev, int *count)
{
	struct npu_link *link;
	int i, rc = -EINVAL;

	/*
	 * The number of PASIDs (process address space ID) which can
	 * be used by a function depends on how many functions exist
	 * on the device. The NPU needs to be configured to know how
	 * many bits are available to PASIDs and how many are to be
	 * used by the function BDF indentifier.
	 *
	 * We only support one AFU-carrying function for now.
	 */
	FUNC4(&links_list_lock);

	link = FUNC3(dev);
	if (!link) {
		FUNC2(&dev->dev, "actag information not found\n");
		FUNC5(&links_list_lock);
		return -ENODEV;
	}

	for (i = 0; i < 8; i++)
		if (link->fn_desired_actags[i] && (i == FUNC0(dev->devfn))) {
			*count = PNV_OCXL_PASID_MAX;
			rc = 0;
			break;
		}

	FUNC5(&links_list_lock);
	FUNC1(&dev->dev, "%d PASIDs available for function\n",
		rc ? 0 : *count);
	return rc;
}