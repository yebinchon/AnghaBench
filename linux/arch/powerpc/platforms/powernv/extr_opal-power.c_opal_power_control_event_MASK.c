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
typedef  unsigned long uint64_t ;
struct opal_msg {int /*<<< orphan*/ * params; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  OPAL_MSG_DPO 132 
#define  OPAL_MSG_EPOW 131 
#define  OPAL_MSG_SHUTDOWN 130 
#define  SOFT_OFF 129 
#define  SOFT_REBOOT 128 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *nb,
					unsigned long msg_type, void *msg)
{
	uint64_t type;

	switch (msg_type) {
	case OPAL_MSG_EPOW:
		if (FUNC1()) {
			FUNC5("EPOW msg received. Powering off system\n");
			FUNC2(true);
		}
		break;
	case OPAL_MSG_DPO:
		FUNC5("DPO msg received. Powering off system\n");
		FUNC2(true);
		break;
	case OPAL_MSG_SHUTDOWN:
		type = FUNC0(((struct opal_msg *)msg)->params[0]);
		switch (type) {
		case SOFT_REBOOT:
			FUNC5("Reboot requested\n");
			FUNC3();
			break;
		case SOFT_OFF:
			FUNC5("Poweroff requested\n");
			FUNC2(true);
			break;
		default:
			FUNC4("Unknown power-control type %llu\n", type);
		}
		break;
	default:
		FUNC4("Unknown OPAL message type %lu\n", msg_type);
	}

	return 0;
}