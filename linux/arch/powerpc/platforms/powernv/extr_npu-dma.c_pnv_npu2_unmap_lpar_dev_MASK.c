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
struct pnv_phb {int /*<<< orphan*/  opal_id; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC7(struct pci_dev *gpdev)
{
	int ret;
	struct pci_dev *npdev = FUNC6(gpdev, 0);
	struct pci_controller *hose;
	struct pnv_phb *nphb;

	if (!npdev)
		return -ENODEV;

	hose = FUNC4(npdev->bus);
	nphb = hose->private_data;

	FUNC0(&gpdev->dev, "destroy context opalid=%llu\n",
			nphb->opal_id);
	ret = FUNC2(nphb->opal_id, 0/*__unused*/,
				       FUNC5(gpdev));
	if (ret < 0) {
		FUNC1(&gpdev->dev, "Failed to destroy context: %d\n", ret);
		return ret;
	}

	/* Set LPID to 0 anyway, just to be safe */
	FUNC0(&gpdev->dev, "Map LPAR opalid=%llu lparid=0\n", nphb->opal_id);
	ret = FUNC3(nphb->opal_id, FUNC5(gpdev), 0 /*LPID*/,
				0 /* LPCR bits */);
	if (ret)
		FUNC1(&gpdev->dev, "Error %d mapping device to LPAR\n", ret);

	return ret;
}