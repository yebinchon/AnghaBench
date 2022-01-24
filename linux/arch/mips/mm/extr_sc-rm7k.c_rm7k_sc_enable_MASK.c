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
 int RM7K_CONF_SE ; 
 int /*<<< orphan*/  __rm7k_sc_enable ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ rm7k_tcache_init ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (FUNC1() & RM7K_CONF_SE)
		return;

	FUNC0("Enabling secondary cache...\n");
	FUNC3(__rm7k_sc_enable);

	if (rm7k_tcache_init)
		FUNC2();
}