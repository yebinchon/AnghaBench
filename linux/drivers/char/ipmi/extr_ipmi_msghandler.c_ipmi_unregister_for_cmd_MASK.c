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
struct ipmi_user {struct ipmi_smi* intf; } ;
struct ipmi_smi {int /*<<< orphan*/  cmd_rcvrs_mutex; } ;
struct cmd_rcvr {unsigned int chans; struct cmd_rcvr* next; int /*<<< orphan*/  link; struct ipmi_user* user; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int IPMI_NUM_CHANNELS ; 
 int /*<<< orphan*/  IPMI_WATCH_MASK_CHECK_COMMANDS ; 
 struct ipmi_user* FUNC0 (struct ipmi_user*,int*) ; 
 struct cmd_rcvr* FUNC1 (struct ipmi_smi*,unsigned char,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_rcvr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ipmi_user*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ipmi_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct ipmi_user *user,
			    unsigned char netfn,
			    unsigned char cmd,
			    unsigned int  chans)
{
	struct ipmi_smi *intf = user->intf;
	struct cmd_rcvr *rcvr;
	struct cmd_rcvr *rcvrs = NULL;
	int i, rv = -ENOENT, index;

	user = FUNC0(user, &index);
	if (!user)
		return -ENODEV;

	FUNC4(&intf->cmd_rcvrs_mutex);
	for (i = 0; i < IPMI_NUM_CHANNELS; i++) {
		if (((1 << i) & chans) == 0)
			continue;
		rcvr = FUNC1(intf, netfn, cmd, i);
		if (rcvr == NULL)
			continue;
		if (rcvr->user == user) {
			rv = 0;
			rcvr->chans &= ~chans;
			if (rcvr->chans == 0) {
				FUNC3(&rcvr->link);
				rcvr->next = rcvrs;
				rcvrs = rcvr;
			}
		}
	}
	FUNC5(&intf->cmd_rcvrs_mutex);
	FUNC8();
	FUNC6(user, index);
	while (rcvrs) {
		FUNC7(intf, IPMI_WATCH_MASK_CHECK_COMMANDS);
		rcvr = rcvrs;
		rcvrs = rcvr->next;
		FUNC2(rcvr);
	}

	return rv;
}