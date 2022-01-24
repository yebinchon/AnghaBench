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
struct active_request_slot {int /*<<< orphan*/ * curl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct active_request_slot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ curl_session_count ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ min_curl_sessions ; 
 int /*<<< orphan*/  FUNC3 (struct active_request_slot*) ; 

__attribute__((used)) static void FUNC4(struct active_request_slot *slot)
{
	FUNC0(slot);
	if (slot->curl) {
		FUNC3(slot);
		if (curl_session_count > min_curl_sessions) {
			FUNC1(slot->curl);
			slot->curl = NULL;
			curl_session_count--;
		}
	}
#ifdef USE_CURL_MULTI
	fill_active_slots();
#endif
}