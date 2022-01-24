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
 void* FUNC0 (void*) ; 
 scalar_t__ EXTRA ; 
 size_t* FUNC1 (void*) ; 
 char const** FUNC2 (void*) ; 
 int /*<<< orphan*/  allocations ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 

void *FUNC5(size_t size, const char *type)
{
	void *out;

	out = FUNC3(EXTRA + size);
	*FUNC1(out) = size;
	*FUNC2(out) = type;
	FUNC4(allocations, out);
	return FUNC0(out);
}