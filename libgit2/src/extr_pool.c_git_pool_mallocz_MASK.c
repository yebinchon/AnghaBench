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
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,size_t const) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t const) ; 

void *FUNC3(git_pool *pool, size_t items)
{
	const size_t size = FUNC0(pool, items);
	void *ptr = FUNC2(pool, size);
	if (ptr)
		FUNC1(ptr, 0x0, size);
	return ptr;
}