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
typedef  int u64 ;
struct pnv_phb {int /*<<< orphan*/  opal_id; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  OPAL_PCI_GET_PBCQ_TUNNEL_BAR ; 
 int /*<<< orphan*/  OPAL_PCI_SET_PBCQ_TUNNEL_BAR ; 
 int OPAL_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct pci_controller* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tunnel_mutex ; 

int FUNC8(struct pci_dev *dev, u64 addr, int enable)
{
	__be64 val;
	struct pci_controller *hose;
	struct pnv_phb *phb;
	u64 tunnel_bar;
	int rc;

	if (!FUNC3(OPAL_PCI_GET_PBCQ_TUNNEL_BAR))
		return -ENXIO;
	if (!FUNC3(OPAL_PCI_SET_PBCQ_TUNNEL_BAR))
		return -ENXIO;

	hose = FUNC7(dev->bus);
	phb = hose->private_data;

	FUNC1(&tunnel_mutex);
	rc = FUNC5(phb->opal_id, &val);
	if (rc != OPAL_SUCCESS) {
		rc = -EIO;
		goto out;
	}
	tunnel_bar = FUNC0(val);
	if (enable) {
		/*
		* Only one device per PHB can use atomics.
		* Our policy is first-come, first-served.
		*/
		if (tunnel_bar) {
			if (tunnel_bar != addr)
				rc = -EBUSY;
			else
				rc = 0;	/* Setting same address twice is ok */
			goto out;
		}
	} else {
		/*
		* The device that owns atomics and wants to release
		* them must pass the same address with enable == 0.
		*/
		if (tunnel_bar != addr) {
			rc = -EPERM;
			goto out;
		}
		addr = 0x0ULL;
	}
	rc = FUNC6(phb->opal_id, addr);
	rc = FUNC4(rc);
out:
	FUNC2(&tunnel_mutex);
	return rc;
}