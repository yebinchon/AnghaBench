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
 int /*<<< orphan*/  aborted ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fill_active_slot ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int is_running_queue ; 
 scalar_t__ request_queue_head ; 

__attribute__((used)) static void FUNC3(void)
{
#ifdef USE_CURL_MULTI
	is_running_queue = 1;
	fill_active_slots();
	add_fill_function(NULL, fill_active_slot);
#endif
	do {
		FUNC2();
#ifdef USE_CURL_MULTI
		fill_active_slots();
#endif
	} while (request_queue_head && !aborted);

#ifdef USE_CURL_MULTI
	is_running_queue = 0;
#endif
}