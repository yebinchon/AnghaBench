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
typedef  int u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int NP_CMD_CONFIGWRITE ; 
 int PCIBIOS_BAD_REGISTER_NUMBER ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_bus *bus,  unsigned int devfn, int where, int size, u32 value)
{
	u32 n, byte_enables, addr, data;
	u8 bus_num = bus->number;

	FUNC5("write_config_byte %#x to %d size %d dev %d:%d:%d\n", value, where,
		size, bus_num, FUNC1(devfn), FUNC0(devfn));

	n = where % 4;
	byte_enables = FUNC2(n, size);
	if (byte_enables == 0xffffffff)
		return PCIBIOS_BAD_REGISTER_NUMBER;

	addr = FUNC3(bus_num, devfn, where);
	data = value << (8*n);
	if (FUNC4(addr, byte_enables | NP_CMD_CONFIGWRITE, data))
		return PCIBIOS_DEVICE_NOT_FOUND;

	return PCIBIOS_SUCCESSFUL;
}