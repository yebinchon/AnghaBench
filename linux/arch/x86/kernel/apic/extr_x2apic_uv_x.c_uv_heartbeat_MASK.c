#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_2__ {unsigned char state; } ;

/* Variables and functions */
 unsigned char SCIR_CPU_ACTIVITY ; 
 scalar_t__ SCIR_CPU_HB_INTERVAL ; 
 unsigned char SCIR_CPU_HEARTBEAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* uv_scir_info ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 

__attribute__((used)) static void FUNC4(struct timer_list *timer)
{
	unsigned char bits = uv_scir_info->state;

	/* Flip heartbeat bit: */
	bits ^= SCIR_CPU_HEARTBEAT;

	/* Is this CPU idle? */
	if (FUNC0(FUNC2()))
		bits &= ~SCIR_CPU_ACTIVITY;
	else
		bits |= SCIR_CPU_ACTIVITY;

	/* Update system controller interface reg: */
	FUNC3(bits);

	/* Enable next timer period: */
	FUNC1(timer, jiffies + SCIR_CPU_HB_INTERVAL);
}