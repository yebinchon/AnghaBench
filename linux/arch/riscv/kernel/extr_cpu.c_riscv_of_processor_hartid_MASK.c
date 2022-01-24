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
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(struct device_node *node)
{
	const char *isa;
	u32 hart;

	if (!FUNC1(node, "riscv")) {
		FUNC5("Found incompatible CPU\n");
		return -ENODEV;
	}

	if (FUNC3(node, "reg", &hart)) {
		FUNC5("Found CPU without hart ID\n");
		return -ENODEV;
	}

	if (!FUNC0(node)) {
		FUNC4("CPU with hartid=%d is not available\n", hart);
		return -ENODEV;
	}

	if (FUNC2(node, "riscv,isa", &isa)) {
		FUNC5("CPU with hartid=%d has no \"riscv,isa\" property\n", hart);
		return -ENODEV;
	}
	if (isa[0] != 'r' || isa[1] != 'v') {
		FUNC5("CPU with hartid=%d has an invalid ISA of \"%s\"\n", hart, isa);
		return -ENODEV;
	}

	return hart;
}