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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned int,int) ; 
 int /*<<< orphan*/  pci_lock ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus, unsigned int devfn,
				int where, int size, u32 *val)
{
	unsigned long flags;
	u32 data;

	FUNC2(&pci_lock, flags);
	FUNC4(FUNC0(bus, devfn, where));
	data = FUNC1();

	switch (size) {
	case 1:
		if (where & 1)
			data >>= 8;
		if (where & 2)
			data >>= 16;
		data &= 0xff;
		break;
	case 2:
		if (where & 2)
			data >>= 16;
		data &= 0xffff;
		break;
	}

	*val = data;

	FUNC3(&pci_lock, flags);

	return PCIBIOS_SUCCESSFUL;
}