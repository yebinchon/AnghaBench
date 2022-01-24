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
struct ipmi_smi {int /*<<< orphan*/  cmd_rcvrs_mutex; int /*<<< orphan*/  cmd_rcvrs; } ;
struct cmd_rcvr {unsigned char cmd; unsigned char netfn; unsigned int chans; int /*<<< orphan*/  link; struct ipmi_user* user; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPMI_WATCH_MASK_CHECK_COMMANDS ; 
 struct ipmi_user* FUNC0 (struct ipmi_user*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_smi*,unsigned char,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_rcvr*) ; 
 struct cmd_rcvr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ipmi_user*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ipmi_smi*,int /*<<< orphan*/ ) ; 

int FUNC9(struct ipmi_user *user,
			  unsigned char netfn,
			  unsigned char cmd,
			  unsigned int  chans)
{
	struct ipmi_smi *intf = user->intf;
	struct cmd_rcvr *rcvr;
	int rv = 0, index;

	user = FUNC0(user, &index);
	if (!user)
		return -ENODEV;

	rcvr = FUNC3(sizeof(*rcvr), GFP_KERNEL);
	if (!rcvr) {
		rv = -ENOMEM;
		goto out_release;
	}
	rcvr->cmd = cmd;
	rcvr->netfn = netfn;
	rcvr->chans = chans;
	rcvr->user = user;

	FUNC5(&intf->cmd_rcvrs_mutex);
	/* Make sure the command/netfn is not already registered. */
	if (!FUNC1(intf, netfn, cmd, chans)) {
		rv = -EBUSY;
		goto out_unlock;
	}

	FUNC8(intf, IPMI_WATCH_MASK_CHECK_COMMANDS);

	FUNC4(&rcvr->link, &intf->cmd_rcvrs);

out_unlock:
	FUNC6(&intf->cmd_rcvrs_mutex);
	if (rv)
		FUNC2(rcvr);
out_release:
	FUNC7(user, index);

	return rv;
}