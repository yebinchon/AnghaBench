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
typedef  scalar_t__ AT91PS_DataFlash ;

/* Variables and functions */
 int FUNC0 (scalar_t__,unsigned int,unsigned long,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  DataFlashInst ; 

int FUNC2(unsigned long addr, unsigned long size, char *result)
{
	unsigned int AddrToRead = addr;
	AT91PS_DataFlash pFlash = &DataFlashInst;

	pFlash = FUNC1 (pFlash, &AddrToRead);
	if (pFlash == 0)
		return -1;

	return (FUNC0(pFlash, AddrToRead, size, result));
}