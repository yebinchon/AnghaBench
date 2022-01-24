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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
#define  DW_EH_PE_absptr 131 
#define  DW_EH_PE_pcrel 130 
#define  DW_EH_PE_sdata4 129 
#define  DW_EH_PE_udata4 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char) ; 

__attribute__((used)) static int FUNC4(char *addr, unsigned long *val,
				    char encoding)
{
	unsigned long decoded_addr = 0;
	int count = 0;

	switch (encoding & 0x70) {
	case DW_EH_PE_absptr:
		break;
	case DW_EH_PE_pcrel:
		decoded_addr = (unsigned long)addr;
		break;
	default:
		FUNC3("encoding=0x%x\n", (encoding & 0x70));
		FUNC0();
	}

	if ((encoding & 0x07) == 0x00)
		encoding |= DW_EH_PE_udata4;

	switch (encoding & 0x0f) {
	case DW_EH_PE_sdata4:
	case DW_EH_PE_udata4:
		count += 4;
		decoded_addr += FUNC2((u32 *)addr);
		FUNC1(decoded_addr, val);
		break;
	default:
		FUNC3("encoding=0x%x\n", encoding);
		FUNC0();
	}

	return count;
}