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
struct cpuidle_coupled {int /*<<< orphan*/  ready_waiting_counts; } ;

/* Variables and functions */
 int WAITING_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct cpuidle_coupled *coupled)
{
	int w = FUNC0(&coupled->ready_waiting_counts) & WAITING_MASK;
	return w == 0;
}