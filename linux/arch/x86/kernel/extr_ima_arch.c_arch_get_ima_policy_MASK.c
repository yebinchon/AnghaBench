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
 int /*<<< orphan*/  CONFIG_IMA_ARCH_POLICY ; 
 int /*<<< orphan*/  CONFIG_MODULE_SIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 char const* const* sb_arch_rules ; 
 int /*<<< orphan*/  FUNC2 () ; 

const char * const *FUNC3(void)
{
	if (FUNC0(CONFIG_IMA_ARCH_POLICY) && FUNC1()) {
		if (FUNC0(CONFIG_MODULE_SIG))
			FUNC2();
		return sb_arch_rules;
	}
	return NULL;
}