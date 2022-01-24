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
typedef  int /*<<< orphan*/  (* phys_reset_t ) (unsigned long,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cpu_reset ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *addr)
{
	phys_reset_t phys_reset;

	/* Take out a flat memory mapping. */
	FUNC4();

	/* Clean and invalidate caches */
	FUNC2();

	/* Turn off caching */
	FUNC1();

	/* Push out any further dirty data, and ensure cache is empty */
	FUNC2();

	/* Switch to the identity mapping. */
	phys_reset = (phys_reset_t)FUNC5(cpu_reset);

	/* original stub should be restored by kvm */
	phys_reset((unsigned long)addr, FUNC3());

	/* Should never get here. */
	FUNC0();
}