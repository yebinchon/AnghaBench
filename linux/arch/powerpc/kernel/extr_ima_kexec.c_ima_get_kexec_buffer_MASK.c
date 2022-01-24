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
 int ENOENT ; 
 void* FUNC0 (unsigned long) ; 
 int FUNC1 (void const*,int,unsigned long*,size_t*) ; 
 int /*<<< orphan*/  of_chosen ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 

int FUNC3(void **addr, size_t *size)
{
	int ret, len;
	unsigned long tmp_addr;
	size_t tmp_size;
	const void *prop;

	prop = FUNC2(of_chosen, "linux,ima-kexec-buffer", &len);
	if (!prop)
		return -ENOENT;

	ret = FUNC1(prop, len, &tmp_addr, &tmp_size);
	if (ret)
		return ret;

	*addr = FUNC0(tmp_addr);
	*size = tmp_size;

	return 0;
}