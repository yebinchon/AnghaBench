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
 int FDT_ERR_NOTFOUND ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (void*,char const*) ; 

__attribute__((used)) static int FUNC2(void *fdt, const char *node_path)
{
	int offset = FUNC1(fdt, node_path);
	if (offset == -FDT_ERR_NOTFOUND)
		offset = FUNC0(fdt, 0, node_path);
	return offset;
}