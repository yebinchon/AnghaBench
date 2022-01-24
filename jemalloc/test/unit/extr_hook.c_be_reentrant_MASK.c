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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4() {
	/* Let's make sure the tcache is non-empty if enabled. */
	FUNC0(1);
	FUNC0(1024);
	FUNC0(64 * 1024);
	FUNC0(256 * 1024);
	FUNC0(1024 * 1024);

	/* Some reallocation. */
	void *ptr = FUNC2(129, 0);
	ptr = FUNC3(ptr, 130, 0);
	FUNC1(ptr);

	ptr = FUNC2(2 * 1024 * 1024, 0);
	FUNC1(ptr);
	ptr = FUNC2(1 * 1024 * 1024, 0);
	ptr = FUNC3(ptr, 2 * 1024 * 1024, 0);
	FUNC1(ptr);

	ptr = FUNC2(1, 0);
	ptr = FUNC3(ptr, 1000, 0);
	FUNC1(ptr);
}