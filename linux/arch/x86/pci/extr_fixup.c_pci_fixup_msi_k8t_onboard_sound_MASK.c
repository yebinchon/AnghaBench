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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_k8t_dmi_table ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,unsigned char) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	unsigned char val;
	if (!FUNC1(msi_k8t_dmi_table))
		return; /* only applies to MSI K8T Neo2-FIR */

	FUNC2(dev, 0x50, &val);
	if (val & 0x40) {
		FUNC3(dev, 0x50, val & (~0x40));

		/* verify the change for status output */
		FUNC2(dev, 0x50, &val);
		if (val & 0x40)
			FUNC0(&dev->dev, "Detected MSI K8T Neo2-FIR; "
					"can't enable onboard soundcard!\n");
		else
			FUNC0(&dev->dev, "Detected MSI K8T Neo2-FIR; "
					"enabled onboard soundcard\n");
	}
}