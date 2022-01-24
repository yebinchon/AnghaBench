#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int (* get_state ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 TYPE_2__* eeh_ops ; 
 struct eeh_dev* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct pci_dev *pdev = FUNC3(dev);
	struct eeh_dev *edev = FUNC0(pdev);
	int state;

	if (!edev || !edev->pe)
		return -ENODEV;

	state = eeh_ops->get_state(edev->pe, NULL);
	return FUNC1(buf, "0x%08x 0x%08x\n",
		       state, edev->pe->state);
}