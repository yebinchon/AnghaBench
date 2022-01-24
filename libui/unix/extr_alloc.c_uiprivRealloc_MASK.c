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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ EXTRA ; 
 scalar_t__ FALSE ; 
 size_t* FUNC2 (void*) ; 
 int /*<<< orphan*/  allocations ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC7 (size_t,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*) ; 

void *FUNC9(void *p, size_t new, const char *type)
{
	void *out;
	size_t *s;

	if (p == NULL)
		return FUNC7(new, type);
	p = FUNC0(p);
	out = FUNC5(p, EXTRA + new);
	s = FUNC2(out);
	if (new > *s)
		FUNC6(((uint8_t *) FUNC1(out)) + *s, 0, new - *s);
	*s = new;
	if (FUNC4(allocations, p) == FALSE)
		FUNC8("%p not found in allocations array in uiprivRealloc()", p);
	FUNC3(allocations, out);
	return FUNC1(out);
}