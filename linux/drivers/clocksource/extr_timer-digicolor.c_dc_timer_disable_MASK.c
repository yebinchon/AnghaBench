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
struct digicolor_timer {int /*<<< orphan*/  timer_id; scalar_t__ base; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONTROL_DISABLE ; 
 struct digicolor_timer* FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct clock_event_device *ce)
{
	struct digicolor_timer *dt = FUNC1(ce);
	FUNC2(CONTROL_DISABLE, dt->base + FUNC0(dt->timer_id));
}