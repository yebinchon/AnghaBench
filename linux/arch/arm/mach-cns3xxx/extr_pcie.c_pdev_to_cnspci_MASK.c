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
struct pci_dev {int /*<<< orphan*/  sysdata; } ;
struct cns3xxx_pcie {int dummy; } ;

/* Variables and functions */
 struct cns3xxx_pcie* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cns3xxx_pcie *FUNC1(const struct pci_dev *dev)
{
	return FUNC0(dev->sysdata);
}