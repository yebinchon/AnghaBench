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
typedef  int u32 ;

/* Variables and functions */
 int PCIBIOS_BAD_REGISTER_NUMBER ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_CONF_ADDR ; 
 int PCI_CONF_ADDR_EN ; 
 int FUNC0 (int) ; 
 scalar_t__ PCI_CONF_DATA ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  orion5x_pci_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(int bus, int dev, u32 func,
					u32 where, u32 size, u32 val)
{
	unsigned long flags;
	int ret = PCIBIOS_SUCCESSFUL;

	FUNC7(&orion5x_pci_lock, flags);

	FUNC9(FUNC0(bus) |
		FUNC1(dev) | FUNC3(where) |
		FUNC2(func) | PCI_CONF_ADDR_EN, PCI_CONF_ADDR);

	if (size == 4) {
		FUNC5(val, PCI_CONF_DATA);
	} else if (size == 2) {
		FUNC6(val, PCI_CONF_DATA + (where & 0x3));
	} else if (size == 1) {
		FUNC4(val, PCI_CONF_DATA + (where & 0x3));
	} else {
		ret = PCIBIOS_BAD_REGISTER_NUMBER;
	}

	FUNC8(&orion5x_pci_lock, flags);

	return ret;
}