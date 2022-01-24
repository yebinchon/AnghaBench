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
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  allocations ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(void *p)
{
	if (p == NULL)
		FUNC3("attempt to uiprivFree(NULL)");
	p = FUNC0(p);
	FUNC1(p);
	if (FUNC2(allocations, p) == FALSE)
		FUNC3("%p not found in allocations array in uiprivFree()", p);
}