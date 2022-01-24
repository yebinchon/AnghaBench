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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  allocedmemory ; 
 void* FUNC2 (unsigned long) ; 

void *FUNC3(unsigned long size)
{
	void *ptr;
	ptr = FUNC2(size);
	if (!ptr) FUNC0("out of memory");
	allocedmemory += FUNC1(ptr);
	return ptr;
}