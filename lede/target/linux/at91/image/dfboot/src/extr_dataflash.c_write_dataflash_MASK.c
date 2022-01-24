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
typedef  int /*<<< orphan*/ * AT91PS_DataFlash ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  DataFlashInst ; 

int FUNC2(unsigned long addr_dest, unsigned int addr_src,
                    unsigned int size)
{
	unsigned int AddrToWrite = addr_dest;
	AT91PS_DataFlash pFlash = &DataFlashInst;

	pFlash = FUNC1(pFlash, &AddrToWrite);
	if (AddrToWrite == -1)
		return -1;

	return FUNC0(pFlash, (unsigned char *) addr_src, AddrToWrite, size);
}