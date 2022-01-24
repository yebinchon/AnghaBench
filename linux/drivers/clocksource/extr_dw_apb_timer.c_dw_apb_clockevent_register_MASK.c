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
struct dw_apb_clock_event_device {int /*<<< orphan*/  timer; int /*<<< orphan*/  ced; } ;

/* Variables and functions */
 int /*<<< orphan*/  APBTMR_N_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dw_apb_clock_event_device *dw_ced)
{
	FUNC1(&dw_ced->timer, 0, APBTMR_N_CONTROL);
	FUNC2(&dw_ced->ced);
	FUNC0(&dw_ced->timer);
}