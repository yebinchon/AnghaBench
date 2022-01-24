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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int* cpu_do_resume ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* idmap_pgd ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int*) ; 

void FUNC5(u32 *ptr, u32 ptrsz, u32 sp, u32 *save_ptr)
{
	u32 *ctx = ptr;

	*save_ptr = FUNC4(ptr);

	/* This must correspond to the LDM in cpu_resume() assembly */
	*ptr++ = FUNC4(idmap_pgd);
	*ptr++ = sp;
	*ptr++ = FUNC4(cpu_do_resume);

	FUNC1(ptr);

	FUNC2();

	/*
	 * flush_cache_louis does not guarantee that
	 * save_ptr and ptr are cleaned to main memory,
	 * just up to the Level of Unification Inner Shareable.
	 * Since the context pointer and context itself
	 * are to be retrieved with the MMU off that
	 * data must be cleaned from all cache levels
	 * to main memory using "area" cache primitives.
	*/
	FUNC0(ctx, ptrsz);
	FUNC0(save_ptr, sizeof(*save_ptr));

	FUNC3(*save_ptr, *save_ptr + ptrsz);
	FUNC3(FUNC4(save_ptr),
			  FUNC4(save_ptr) + sizeof(*save_ptr));
}