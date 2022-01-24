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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (void*,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,char const*) ; 

__attribute__((used)) static int FUNC2(void *fdt, const char *node_path,
			const char *property, uint32_t val)
{
	int offset = FUNC1(fdt, node_path);
	if (offset < 0)
		return offset;
	return FUNC0(fdt, offset, property, val);
}