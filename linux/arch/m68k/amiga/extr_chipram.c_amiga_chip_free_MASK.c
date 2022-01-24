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
struct resource {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  chipavail ; 
 int /*<<< orphan*/  chipram_res ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 unsigned long FUNC7 (struct resource*) ; 

void FUNC8(void *ptr)
{
	unsigned long start = FUNC0(ptr);
	struct resource *res;
	unsigned long size;

	res = FUNC3(&chipram_res, start);
	if (!res) {
		FUNC5("amiga_chip_free: trying to free nonexistent region at "
		       "%p\n", ptr);
		return;
	}

	size = FUNC7(res);
	FUNC4("amiga_chip_free: free %lu bytes at %p\n", size, ptr);
	FUNC1(size, &chipavail);
	FUNC6(res);
	FUNC2(res);
}