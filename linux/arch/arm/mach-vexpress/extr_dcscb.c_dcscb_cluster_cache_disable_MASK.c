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
 int /*<<< orphan*/  all ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	/* Flush all cache levels for this cluster. */
	FUNC2(all);

	/*
	 * A full outer cache flush could be needed at this point
	 * on platforms with such a cache, depending on where the
	 * outer cache sits. In some cases the notion of a "last
	 * cluster standing" would need to be implemented if the
	 * outer cache is shared across clusters. In any case, when
	 * the outer cache needs flushing, there is no concurrent
	 * access to the cache controller to worry about and no
	 * special locking besides what is already provided by the
	 * MCPM state machinery is needed.
	 */

	/*
	 * Disable cluster-level coherency by masking
	 * incoming snoops and DVM messages:
	 */
	FUNC0(FUNC1());
}