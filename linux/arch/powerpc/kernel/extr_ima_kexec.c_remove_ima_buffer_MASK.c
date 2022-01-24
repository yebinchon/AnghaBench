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
 int FUNC0 (void*,unsigned long,size_t) ; 
 int FUNC1 (void const*,int,unsigned long*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,char*) ; 
 void* FUNC3 (void*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void *fdt, int chosen_node)
{
	int ret, len;
	unsigned long addr;
	size_t size;
	const void *prop;

	prop = FUNC3(fdt, chosen_node, "linux,ima-kexec-buffer", &len);
	if (!prop)
		return;

	ret = FUNC1(prop, len, &addr, &size);
	FUNC2(fdt, chosen_node, "linux,ima-kexec-buffer");
	if (ret)
		return;

	ret = FUNC0(fdt, addr, size);
	if (!ret)
		FUNC4("Removed old IMA buffer reservation.\n");
}