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
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 unsigned long FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  stram_pool ; 

void FUNC7(void *addr)
{
	unsigned long start = FUNC0(addr);
	struct resource *res;
	unsigned long size;

	res = FUNC2(&stram_pool, start);
	if (!res) {
		FUNC4("atari_stram_free: trying to free nonexistent region "
		       "at %p\n", addr);
		return;
	}

	size = FUNC6(res);
	FUNC3("atari_stram_free: free %lu bytes at %p\n", size, addr);
	FUNC5(res);
	FUNC1(res);
}