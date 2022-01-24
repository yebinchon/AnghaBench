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

/* Variables and functions */
 int REPORT_BRIGHTNESS_KEY_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int report_key_events ; 
 int /*<<< orphan*/  video_bus_head ; 
 int /*<<< orphan*/  video_list_lock ; 

bool FUNC3(void)
{
	bool have_video_busses;

	FUNC1(&video_list_lock);
	have_video_busses = !FUNC0(&video_bus_head);
	FUNC2(&video_list_lock);

	return have_video_busses &&
	       (report_key_events & REPORT_BRIGHTNESS_KEY_EVENTS);
}