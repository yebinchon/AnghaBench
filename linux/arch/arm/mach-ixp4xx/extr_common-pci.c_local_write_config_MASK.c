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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(int where, int size, u32 value)
{
	u32 n, byte_enables, data;
	FUNC2("local_write_config %#x to %d size %d\n", value, where, size);
	n = where % 4;
	byte_enables = FUNC1(n, size);
	if (byte_enables == 0xffffffff)
		return PCIBIOS_BAD_REGISTER_NUMBER;
	data = value << (8*n);
	FUNC0((where & ~3) | byte_enables, data);
	return PCIBIOS_SUCCESSFUL;
}