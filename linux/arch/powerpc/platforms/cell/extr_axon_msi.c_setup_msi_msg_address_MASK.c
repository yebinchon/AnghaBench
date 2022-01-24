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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct msi_msg {int /*<<< orphan*/  address_lo; int /*<<< orphan*/  address_hi; } ;
struct TYPE_2__ {scalar_t__ is_64; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct msi_desc* FUNC1 (struct pci_dev*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,int*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *dev, struct msi_msg *msg)
{
	struct device_node *dn;
	struct msi_desc *entry;
	int len;
	const u32 *prop;

	dn = FUNC4(FUNC6(dev));
	if (!dn) {
		FUNC0(&dev->dev, "axon_msi: no pci_dn found\n");
		return -ENODEV;
	}

	entry = FUNC1(dev);

	for (; dn; dn = FUNC2(dn)) {
		if (entry->msi_attrib.is_64) {
			prop = FUNC3(dn, "msi-address-64", &len);
			if (prop)
				break;
		}

		prop = FUNC3(dn, "msi-address-32", &len);
		if (prop)
			break;
	}

	if (!prop) {
		FUNC0(&dev->dev,
			"axon_msi: no msi-address-(32|64) properties found\n");
		return -ENOENT;
	}

	switch (len) {
	case 8:
		msg->address_hi = prop[0];
		msg->address_lo = prop[1];
		break;
	case 4:
		msg->address_hi = 0;
		msg->address_lo = prop[0];
		break;
	default:
		FUNC0(&dev->dev,
			"axon_msi: malformed msi-address-(32|64) property\n");
		FUNC5(dn);
		return -EINVAL;
	}

	FUNC5(dn);

	return 0;
}