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
typedef  int /*<<< orphan*/  u32 ;
struct zpci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int ZPCI_DEVFN ; 
 struct zpci_dev* FUNC0 (struct pci_bus*) ; 
 int FUNC1 (struct zpci_dev*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct pci_bus *bus, unsigned int devfn, int where,
		    int size, u32 *val)
{
	struct zpci_dev *zdev = FUNC0(bus);
	int ret;

	if (!zdev || devfn != ZPCI_DEVFN)
		ret = -ENODEV;
	else
		ret = FUNC1(zdev, where, val, size);

	return ret;
}