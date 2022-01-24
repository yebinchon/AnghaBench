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
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_LEVEL ; 
 int THERM_LOG_THRESHOLD0 ; 
 int THERM_LOG_THRESHOLD1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(__u64 msr_val)
{
	/* check whether the interrupt handler is defined;
	 * otherwise simply return
	 */
	if (!&platform_thermal_notify)
		return;

	/* lower threshold reached */
	if ((msr_val & THERM_LOG_THRESHOLD0) &&
			FUNC1(CORE_LEVEL, 0))
		FUNC0(msr_val);
	/* higher threshold reached */
	if ((msr_val & THERM_LOG_THRESHOLD1) &&
			FUNC1(CORE_LEVEL, 1))
		FUNC0(msr_val);
}