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
 int /*<<< orphan*/  MALLOCX_TCACHE_NONE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(size_t sz) {
	void *ptr = FUNC2(1, 0);
	FUNC1(ptr);
	ptr = FUNC2(1, 0);
	FUNC1(ptr);
	ptr = FUNC2(1, MALLOCX_TCACHE_NONE);
	FUNC0(ptr, MALLOCX_TCACHE_NONE);
}