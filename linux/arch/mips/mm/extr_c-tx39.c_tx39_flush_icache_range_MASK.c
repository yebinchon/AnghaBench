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
 unsigned long TX39_CONF_ICE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long dcache_size ; 
 unsigned long icache_size ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

__attribute__((used)) static void FUNC9(unsigned long start, unsigned long end)
{
	if (end - start > dcache_size)
		FUNC6();
	else
		FUNC3(start, end);

	if (end - start > icache_size)
		FUNC7();
	else {
		unsigned long flags, config;
		/* disable icache (set ICE#) */
		FUNC2(flags);
		config = FUNC5();
		FUNC8(config & ~TX39_CONF_ICE);
		FUNC0();
		FUNC4(start, end);
		FUNC8(config);
		FUNC1(flags);
	}
}