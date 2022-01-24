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
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*,int,...) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 

__attribute__((used)) static void FUNC4(int offset, int mask, int data)
{
	int *addr = FUNC0(offset);
	int readd = FUNC2(addr);

	if (mask) {			/* OR in new data */
		int writed = (readd & ~mask) | data;

		FUNC1("UV:PCH: %p = %x & %x | %x (%x)\n",
			addr, readd, ~mask, data, writed);
		FUNC3(writed, addr);
	} else if (readd & data) {	/* clear status bit */
		FUNC1("UV:PCH: %p = %x\n", addr, data);
		FUNC3(data, addr);
	}

	(void)FUNC2(addr);		/* flush write data */
}