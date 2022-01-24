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
struct smi_info {int msg_flags; int /*<<< orphan*/  si_state; scalar_t__ (* oem_data_avail_handler ) (struct smi_info*) ;void* curr_msg; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int EVENT_MSG_BUFFER_FULL ; 
 int OEM_DATA_AVAIL ; 
 int RECEIVE_MSG_AVAIL ; 
 int /*<<< orphan*/  SI_NORMAL ; 
 int WDT_PRE_TIMEOUT_INT ; 
 void* FUNC0 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct smi_info*) ; 
 scalar_t__ FUNC6 (struct smi_info*) ; 
 int /*<<< orphan*/  watchdog_pretimeouts ; 

__attribute__((used)) static void FUNC7(struct smi_info *smi_info)
{
retry:
	if (smi_info->msg_flags & WDT_PRE_TIMEOUT_INT) {
		/* Watchdog pre-timeout */
		FUNC2(smi_info, watchdog_pretimeouts);

		FUNC3(smi_info);
		smi_info->msg_flags &= ~WDT_PRE_TIMEOUT_INT;
		FUNC1(smi_info->intf);
	} else if (smi_info->msg_flags & RECEIVE_MSG_AVAIL) {
		/* Messages available. */
		smi_info->curr_msg = FUNC0(smi_info);
		if (!smi_info->curr_msg)
			return;

		FUNC5(smi_info);
	} else if (smi_info->msg_flags & EVENT_MSG_BUFFER_FULL) {
		/* Events available. */
		smi_info->curr_msg = FUNC0(smi_info);
		if (!smi_info->curr_msg)
			return;

		FUNC4(smi_info);
	} else if (smi_info->msg_flags & OEM_DATA_AVAIL &&
		   smi_info->oem_data_avail_handler) {
		if (smi_info->oem_data_avail_handler(smi_info))
			goto retry;
	} else
		smi_info->si_state = SI_NORMAL;
}