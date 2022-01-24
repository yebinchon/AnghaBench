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
struct mem_pool {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct mem_pool*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (size_t,size_t) ; 

void *FUNC3(struct mem_pool *mem_pool, size_t count, size_t size)
{
	size_t len = FUNC2(count, size);
	void *r = FUNC0(mem_pool, len);
	FUNC1(r, 0, len);
	return r;
}