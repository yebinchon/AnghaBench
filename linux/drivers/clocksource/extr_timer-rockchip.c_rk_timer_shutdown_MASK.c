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
struct rk_timer {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 struct rk_timer* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_timer*) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *ce)
{
	struct rk_timer *timer = FUNC0(ce);

	FUNC1(timer);
	return 0;
}