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
struct pnv_phb {scalar_t__ type; } ;
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
struct npu_link {scalar_t__* fn_desired_actags; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PNV_PHB_NPU_OCAPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct npu_link* FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,int,int*) ; 
 int FUNC5 (struct pci_dev*,int*) ; 
 int /*<<< orphan*/  links_list_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct pci_controller* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernv ; 

__attribute__((used)) static void FUNC10(struct pci_dev *dev)
{
	struct pci_controller *hose = FUNC9(dev->bus);
	struct pnv_phb *phb = hose->private_data;
	struct npu_link *link;
	int rc, afu_idx = -1, i, actag;

	if (!FUNC6(powernv))
		return;

	if (phb->type != PNV_PHB_NPU_OCAPI)
		return;

	FUNC7(&links_list_lock);

	link = FUNC3(dev);
	if (!link) {
		FUNC2(&dev->dev, "couldn't update actag information\n");
		FUNC8(&links_list_lock);
		return;
	}

	/*
	 * Check how many actags are desired for the AFUs under that
	 * function and add it to the count for the link
	 */
	rc = FUNC5(dev, &afu_idx);
	if (rc) {
		/* Most likely an invalid config space */
		FUNC1(&dev->dev, "couldn't find AFU information\n");
		afu_idx = -1;
	}

	link->fn_desired_actags[FUNC0(dev->devfn)] = 0;
	for (i = 0; i <= afu_idx; i++) {
		/*
		 * AFU index 'holes' are allowed. So don't fail if we
		 * can't read the actag info for an index
		 */
		rc = FUNC4(dev, i, &actag);
		if (rc)
			continue;
		link->fn_desired_actags[FUNC0(dev->devfn)] += actag;
	}
	FUNC1(&dev->dev, "total actags for function: %d\n",
		link->fn_desired_actags[FUNC0(dev->devfn)]);

	FUNC8(&links_list_lock);
}