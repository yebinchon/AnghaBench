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
typedef  int /*<<< orphan*/  vm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
#define  OP_EQ 137 
#define  OP_GEI 136 
#define  OP_GEU 135 
#define  OP_GTI 134 
#define  OP_GTU 133 
#define  OP_LEI 132 
#define  OP_LEU 131 
#define  OP_LTI 130 
#define  OP_LTU 129 
#define  OP_NE 128 

void FUNC2(vm_t *vm, int op)
{
	switch(op)
	{
	case OP_EQ:
		FUNC1(vm, "0F 84", FUNC0());	// je 0x12345678
	break;
	case OP_NE:
		FUNC1(vm, "0F 85", FUNC0());	// jne 0x12345678
	break;
	case OP_LTI:
		FUNC1(vm, "0F 8C", FUNC0());	// jl 0x12345678
	break;
	case OP_LEI:
		FUNC1(vm, "0F 8E", FUNC0());	// jle 0x12345678
	break;
	case OP_GTI:
		FUNC1(vm, "0F 8F", FUNC0());	// jg 0x12345678
	break;
	case OP_GEI:
		FUNC1(vm, "0F 8D", FUNC0());	// jge 0x12345678
	break;
	case OP_LTU:
		FUNC1(vm, "0F 82", FUNC0());	// jb 0x12345678
	break;
	case OP_LEU:
		FUNC1(vm, "0F 86", FUNC0());	// jbe 0x12345678
	break;
	case OP_GTU:
		FUNC1(vm, "0F 87", FUNC0());	// ja 0x12345678
	break;
	case OP_GEU:
		FUNC1(vm, "0F 83", FUNC0());	// jae 0x12345678
	break;
	}
}