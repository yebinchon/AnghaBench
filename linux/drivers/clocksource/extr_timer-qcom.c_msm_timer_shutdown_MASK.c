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
typedef  int u32 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TIMER_ENABLE ; 
 int TIMER_ENABLE_CLR_ON_MATCH_EN ; 
 int TIMER_ENABLE_EN ; 
 scalar_t__ event_base ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *evt)
{
	u32 ctrl;

	ctrl = FUNC0(event_base + TIMER_ENABLE);
	ctrl &= ~(TIMER_ENABLE_EN | TIMER_ENABLE_CLR_ON_MATCH_EN);
	FUNC1(ctrl, event_base + TIMER_ENABLE);
	return 0;
}