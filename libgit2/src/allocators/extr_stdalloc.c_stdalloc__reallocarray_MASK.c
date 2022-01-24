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
 scalar_t__ FUNC0 (size_t*,size_t,size_t) ; 
 void* FUNC1 (void*,size_t,char const*,int) ; 

__attribute__((used)) static void *FUNC2(void *ptr, size_t nelem, size_t elsize, const char *file, int line)
{
	size_t newsize;

	if (FUNC0(&newsize, nelem, elsize))
		return NULL;

	return FUNC1(ptr, newsize, file, line);
}