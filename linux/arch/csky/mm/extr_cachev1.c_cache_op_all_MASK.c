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
 unsigned int CACHE_CLR ; 
 int CCR2_L2E ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int value, unsigned int l2)
{
	FUNC2("cr17", value | CACHE_CLR);
	FUNC0();

	if (l2 && (FUNC1() & CCR2_L2E)) {
		FUNC2("cr24", value | CACHE_CLR);
		FUNC0();
	}
}