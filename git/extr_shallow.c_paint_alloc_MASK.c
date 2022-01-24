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
typedef  void uint32_t ;
struct paint_info {int pool_count; int end; unsigned int free; unsigned int* pools; int /*<<< orphan*/  nr_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int POOL_SIZE ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int) ; 
 unsigned int FUNC3 (unsigned int) ; 

__attribute__((used)) static uint32_t *FUNC4(struct paint_info *info)
{
	unsigned nr = FUNC1(info->nr_bits, 32);
	unsigned size = nr * sizeof(uint32_t);
	void *p;
	if (!info->pool_count || size > info->end - info->free) {
		if (size > POOL_SIZE)
			FUNC0("pool size too small for %d in paint_alloc()",
			    size);
		info->pool_count++;
		FUNC2(info->pools, info->pool_count);
		info->free = FUNC3(POOL_SIZE);
		info->pools[info->pool_count - 1] = info->free;
		info->end = info->free + POOL_SIZE;
	}
	p = info->free;
	info->free += size;
	return p;
}