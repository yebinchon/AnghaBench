#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct pci_dn {int busno; int devfn; TYPE_1__* phb; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct ddw_query_response {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_dn* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct device_node* FUNC4 (struct pci_dev*) ; 
 int FUNC5 (int const,int,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, const u32 *ddw_avail,
			struct ddw_query_response *query)
{
	struct device_node *dn;
	struct pci_dn *pdn;
	u32 cfg_addr;
	u64 buid;
	int ret;

	/*
	 * Get the config address and phb buid of the PE window.
	 * Rely on eeh to retrieve this for us.
	 * Retrieve them from the pci device, not the node with the
	 * dma-window property
	 */
	dn = FUNC4(dev);
	pdn = FUNC2(dn);
	buid = pdn->phb->buid;
	cfg_addr = ((pdn->busno << 16) | (pdn->devfn << 8));

	ret = FUNC5(ddw_avail[0], 3, 5, (u32 *)query,
		  cfg_addr, FUNC0(buid), FUNC1(buid));
	FUNC3(&dev->dev, "ibm,query-pe-dma-windows(%x) %x %x %x"
		" returned %d\n", ddw_avail[0], cfg_addr, FUNC0(buid),
		FUNC1(buid), ret);
	return ret;
}