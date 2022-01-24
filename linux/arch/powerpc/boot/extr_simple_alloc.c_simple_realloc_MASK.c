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
struct alloc_info {unsigned long size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,unsigned long) ; 
 struct alloc_info* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (unsigned long) ; 

__attribute__((used)) static void *FUNC4(void *ptr, unsigned long size)
{
	struct alloc_info *p;
	void *new;

	if (size == 0) {
		FUNC2(ptr);
		return NULL;
	}

	if (ptr == NULL)
		return FUNC3(size);

	p = FUNC1(ptr);
	if (p == NULL) /* ptr not from simple_malloc/simple_realloc */
		return NULL;
	if (size <= p->size) /* fits in current block */
		return ptr;

	new = FUNC3(size);
	FUNC0(new, ptr, p->size);
	FUNC2(ptr);
	return new;
}