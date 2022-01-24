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
struct property {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,size_t*) ; 
 int FUNC1 (unsigned long,size_t) ; 
 int /*<<< orphan*/  of_chosen ; 
 struct property* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct property*) ; 

int FUNC4(void)
{
	int ret;
	unsigned long addr;
	size_t size;
	struct property *prop;

	prop = FUNC2(of_chosen, "linux,ima-kexec-buffer", NULL);
	if (!prop)
		return -ENOENT;

	ret = FUNC0(prop->value, prop->length, &addr, &size);
	if (ret)
		return ret;

	ret = FUNC3(of_chosen, prop);
	if (ret)
		return ret;

	return FUNC1(addr, size);

}