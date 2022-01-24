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
struct opal_msg {int /*<<< orphan*/ * params; } ;
struct notifier_block {int dummy; } ;
struct OpalHmiEvtNode {int /*<<< orphan*/  list; int /*<<< orphan*/  hmi_evt; } ;
struct OpalHMIEvent {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long OPAL_MSG_HMI_EVT ; 
 int /*<<< orphan*/  hmi_event_work ; 
 struct OpalHmiEvtNode* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct OpalHMIEvent*,int) ; 
 int /*<<< orphan*/  opal_hmi_evt_list ; 
 int /*<<< orphan*/  opal_hmi_evt_lock ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct notifier_block *nb,
			  unsigned long msg_type, void *msg)
{
	unsigned long flags;
	struct OpalHMIEvent *hmi_evt;
	struct opal_msg *hmi_msg = msg;
	struct OpalHmiEvtNode *msg_node;

	/* Sanity Checks */
	if (msg_type != OPAL_MSG_HMI_EVT)
		return 0;

	/* HMI event info starts from param[0] */
	hmi_evt = (struct OpalHMIEvent *)&hmi_msg->params[0];

	/* Delay the logging of HMI events to workqueue. */
	msg_node = FUNC0(sizeof(*msg_node), GFP_ATOMIC);
	if (!msg_node) {
		FUNC3("HMI: out of memory, Opal message event not handled\n");
		return -ENOMEM;
	}
	FUNC2(&msg_node->hmi_evt, hmi_evt, sizeof(*hmi_evt));

	FUNC5(&opal_hmi_evt_lock, flags);
	FUNC1(&msg_node->list, &opal_hmi_evt_list);
	FUNC6(&opal_hmi_evt_lock, flags);

	FUNC4(&hmi_event_work);
	return 0;
}