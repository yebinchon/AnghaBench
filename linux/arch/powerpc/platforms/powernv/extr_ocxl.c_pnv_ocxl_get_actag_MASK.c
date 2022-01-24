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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  dev; } ;
struct npu_link {int /*<<< orphan*/ * fn_desired_actags; TYPE_1__* fn_actags; int /*<<< orphan*/  assignment_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENODEV ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct npu_link*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct npu_link* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  links_list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct pci_dev *dev, u16 *base, u16 *enabled,
		u16 *supported)
{
	struct npu_link *link;

	FUNC4(&links_list_lock);

	link = FUNC3(dev);
	if (!link) {
		FUNC2(&dev->dev, "actag information not found\n");
		FUNC5(&links_list_lock);
		return -ENODEV;
	}
	/*
	 * On p9, we only have 64 actags per link, so they must be
	 * shared by all the functions of the same adapter. We counted
	 * the desired actag counts during PCI enumeration, so that we
	 * can allocate a pro-rated number of actags to each function.
	 */
	if (!link->assignment_done)
		FUNC1(link);

	*base      = link->fn_actags[FUNC0(dev->devfn)].start;
	*enabled   = link->fn_actags[FUNC0(dev->devfn)].count;
	*supported = link->fn_desired_actags[FUNC0(dev->devfn)];

	FUNC5(&links_list_lock);
	return 0;
}