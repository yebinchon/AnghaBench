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
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ FUNC0 (int,int*) ; 
 scalar_t__ FUNC1 (int,int*) ; 

__attribute__((used)) static int FUNC2(void *addr, int where, int size, u32 value)
{
	u32 cf, shift, mask, smask;

	if ((where >= 0x14 && where < 0x40) || (where >= 0x48))
		return PCIBIOS_SUCCESSFUL;

	if (FUNC0(cf, (u32 *)addr))
		return PCIBIOS_DEVICE_NOT_FOUND;

	shift = ((where & 3) << 3);
	mask = (0xffffffffU >> ((4 - size) << 3));
	smask = mask << shift;

	cf = (cf & ~smask) | ((value & mask) << shift);
	if (FUNC1(cf, (u32 *)addr))
		return PCIBIOS_DEVICE_NOT_FOUND;

	return PCIBIOS_SUCCESSFUL;
}