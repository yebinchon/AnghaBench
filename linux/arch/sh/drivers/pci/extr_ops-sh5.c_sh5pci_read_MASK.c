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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned int,int) ; 
 int /*<<< orphan*/  PAR ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus, unsigned int devfn, int where,
			int size, u32 *val)
{
	FUNC4(PAR, FUNC0(bus, devfn, where));

	switch (size) {
		case 1:
			*val = (u8)FUNC2(PDR + (where & 3));
			break;
		case 2:
			*val = (u16)FUNC3(PDR + (where & 2));
			break;
		case 4:
			*val = FUNC1(PDR);
			break;
	}

	return PCIBIOS_SUCCESSFUL;
}