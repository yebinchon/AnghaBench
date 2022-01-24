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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virt_timer_current ; 
 int /*<<< orphan*/  virt_timer_elapsed ; 
 int /*<<< orphan*/  virt_timer_list ; 

__attribute__((used)) static inline int FUNC5(u64 elapsed)
{
	FUNC0(!FUNC3());

	if (FUNC4(&virt_timer_list))
		return 0;
	elapsed = FUNC1(elapsed, &virt_timer_elapsed);
	return elapsed >= FUNC2(&virt_timer_current);
}