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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,scalar_t__*,int) ; 
 scalar_t__ ibm4xx_memstart ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	void *memory;
	u32 reg[3];

	memory = FUNC1("/memory");
	if (!memory)
		FUNC0("Can't find memory node\n");
	/* This assumes #address-cells = 2, #size-cells =1 and that */
	FUNC2(memory, "reg", reg, sizeof(reg));
	if (reg[2])
		/* If the device tree specifies the memory range, use it */
		ibm4xx_memstart = reg[1];
	else
		/* othersize, read it from the SDRAM controller */
		FUNC3();
}