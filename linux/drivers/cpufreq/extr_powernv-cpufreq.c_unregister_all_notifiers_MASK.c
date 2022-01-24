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
 int /*<<< orphan*/  OPAL_MSG_OCC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  powernv_cpufreq_opal_nb ; 
 int /*<<< orphan*/  powernv_cpufreq_reboot_nb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(void)
{
	FUNC0(OPAL_MSG_OCC,
					 &powernv_cpufreq_opal_nb);
	FUNC1(&powernv_cpufreq_reboot_nb);
}