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
typedef  unsigned long u32 ;
struct dw_apb_clock_event_device {int /*<<< orphan*/  timer; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 unsigned long APBTMR_CONTROL_ENABLE ; 
 int /*<<< orphan*/  APBTMR_N_CONTROL ; 
 int /*<<< orphan*/  APBTMR_N_LOAD_COUNT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 struct dw_apb_clock_event_device* FUNC2 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC3(unsigned long delta,
			   struct clock_event_device *evt)
{
	u32 ctrl;
	struct dw_apb_clock_event_device *dw_ced = FUNC2(evt);

	/* Disable timer */
	ctrl = FUNC0(&dw_ced->timer, APBTMR_N_CONTROL);
	ctrl &= ~APBTMR_CONTROL_ENABLE;
	FUNC1(&dw_ced->timer, ctrl, APBTMR_N_CONTROL);
	/* write new count */
	FUNC1(&dw_ced->timer, delta, APBTMR_N_LOAD_COUNT);
	ctrl |= APBTMR_CONTROL_ENABLE;
	FUNC1(&dw_ced->timer, ctrl, APBTMR_N_CONTROL);

	return 0;
}