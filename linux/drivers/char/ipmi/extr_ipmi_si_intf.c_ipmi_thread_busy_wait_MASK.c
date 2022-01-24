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
struct timespec {int dummy; } ;
struct smi_info {size_t si_num; } ;
typedef  enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;

/* Variables and functions */
 unsigned int NSEC_PER_USEC ; 
 int SI_SM_CALL_WITH_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 
 unsigned int* kipmid_max_busy_us ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 size_t num_max_busy_us ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,unsigned int) ; 
 scalar_t__ FUNC4 (struct timespec*,struct timespec*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline bool FUNC6(enum si_sm_result smi_result,
					 const struct smi_info *smi_info,
					 struct timespec *busy_until)
{
	unsigned int max_busy_us = 0;

	if (smi_info->si_num < num_max_busy_us)
		max_busy_us = kipmid_max_busy_us[smi_info->si_num];
	if (max_busy_us == 0 || smi_result != SI_SM_CALL_WITH_DELAY)
		FUNC1(busy_until);
	else if (!FUNC0(busy_until)) {
		FUNC2(busy_until);
		FUNC3(busy_until, max_busy_us * NSEC_PER_USEC);
	} else {
		struct timespec now;

		FUNC2(&now);
		if (FUNC5(FUNC4(&now, busy_until) > 0)) {
			FUNC1(busy_until);
			return false;
		}
	}
	return true;
}