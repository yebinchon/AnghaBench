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
struct ssif_info {int msg_flags; int /*<<< orphan*/  ssif_state; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int EVENT_MSG_BUFFER_FULL ; 
 int RECEIVE_MSG_AVAIL ; 
 int /*<<< orphan*/  SSIF_NORMAL ; 
 int WDT_PRE_TIMEOUT_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssif_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  watchdog_pretimeouts ; 

__attribute__((used)) static void FUNC6(struct ssif_info *ssif_info, unsigned long *flags)
{
	if (ssif_info->msg_flags & WDT_PRE_TIMEOUT_INT) {
		/* Watchdog pre-timeout */
		FUNC2(ssif_info, watchdog_pretimeouts);
		FUNC3(ssif_info, flags);
		FUNC0(ssif_info->intf);
	} else if (ssif_info->msg_flags & RECEIVE_MSG_AVAIL)
		/* Messages available. */
		FUNC5(ssif_info, flags);
	else if (ssif_info->msg_flags & EVENT_MSG_BUFFER_FULL)
		/* Events available. */
		FUNC4(ssif_info, flags);
	else {
		ssif_info->ssif_state = SSIF_NORMAL;
		FUNC1(ssif_info, flags);
	}
}