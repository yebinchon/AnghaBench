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
struct clock_event_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  (* set_state_shutdown ) (struct clock_event_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  armada_370_xp_evt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct clock_event_device* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct clock_event_device *evt = FUNC1(armada_370_xp_evt, cpu);

	evt->set_state_shutdown(evt);
	FUNC0(evt->irq);
	return 0;
}