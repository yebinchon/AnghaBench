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

/* Variables and functions */
 unsigned int FUNC0 (unsigned long**) ; 
 unsigned long EFI_INVALID_TABLE_ADDR ; 
 unsigned long** efi_tables ; 

bool FUNC1(unsigned long phys_addr)
{
	unsigned int i;

	if (phys_addr == EFI_INVALID_TABLE_ADDR)
		return false;

	for (i = 0; i < FUNC0(efi_tables); i++)
		if (*(efi_tables[i]) == phys_addr)
			return true;

	return false;
}