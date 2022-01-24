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
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct pci_bus *bus, unsigned int devfn,
				int where, int size, u32 val)
{
	unsigned long flags;
	u32 data;
	int s;

	FUNC2(&pci_lock, flags);

	FUNC4(FUNC0(bus, devfn, where));
	data = FUNC1();

	switch (size) {
	case 1:
		s = ((where & 3) << 3);
		data &= ~(0xff << s);
		data |= ((val & 0xff) << s);
		break;
	case 2:
		s = ((where & 2) << 4);
		data &= ~(0xffff << s);
		data |= ((val & 0xffff) << s);
		break;
	case 4:
		data = val;
		break;
	}

	FUNC5(data);

	FUNC3(&pci_lock, flags);

	return PCIBIOS_SUCCESSFUL;
}