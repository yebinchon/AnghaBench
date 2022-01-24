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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NWBUTTON_REBOOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  bcount ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  button_output_buffer ; 
 scalar_t__ button_press_count ; 
 int /*<<< orphan*/  button_wait_queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ reboot_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *unused)
{
	if (FUNC0(CONFIG_NWBUTTON_REBOOT) &&
	    button_press_count == reboot_count)
		FUNC2(SIGINT, 1);	/* Ask init to reboot us */
	FUNC1 (button_press_count);
	bcount = FUNC3 (button_output_buffer, "%d\n", button_press_count);
	button_press_count = 0;		/* Reset the button press counter */
	FUNC4 (&button_wait_queue);
}