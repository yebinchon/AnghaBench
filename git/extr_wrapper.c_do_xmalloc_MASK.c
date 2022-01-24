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
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,size_t) ; 

__attribute__((used)) static void *FUNC5(size_t size, int gentle)
{
	void *ret;

	if (FUNC3(size, gentle))
		return NULL;
	ret = FUNC2(size);
	if (!ret && !size)
		ret = FUNC2(1);
	if (!ret) {
		if (!gentle)
			FUNC0("Out of memory, malloc failed (tried to allocate %lu bytes)",
			    (unsigned long)size);
		else {
			FUNC1("Out of memory, malloc failed (tried to allocate %lu bytes)",
			      (unsigned long)size);
			return NULL;
		}
	}
#ifdef XMALLOC_POISON
	memset(ret, 0xA5, size);
#endif
	return ret;
}