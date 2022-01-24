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
struct itimerspec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  event_high_res_timer ; 
 int /*<<< orphan*/  FUNC0 (struct itimerspec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	struct itimerspec its;

	FUNC0(&its, 0, sizeof(struct itimerspec));
	FUNC1(event_high_res_timer, 0, &its, NULL);
}