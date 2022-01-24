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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ mmp_timer_base ; 

__attribute__((used)) static inline uint32_t FUNC4(void)
{
	int delay = 100;

	FUNC2(1, mmp_timer_base + FUNC0(1));

	while (delay--)
		FUNC3();

	return FUNC1(mmp_timer_base + FUNC0(1));
}