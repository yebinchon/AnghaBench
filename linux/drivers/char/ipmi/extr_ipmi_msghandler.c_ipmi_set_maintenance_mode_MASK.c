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
struct ipmi_smi {int maintenance_mode; int maintenance_mode_enable; int /*<<< orphan*/  maintenance_mode_lock; int /*<<< orphan*/  auto_maintenance_timeout; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  IPMI_MAINTENANCE_MODE_AUTO 130 
#define  IPMI_MAINTENANCE_MODE_OFF 129 
#define  IPMI_MAINTENANCE_MODE_ON 128 
 struct ipmi_user* FUNC0 (struct ipmi_user*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_smi*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_user*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ipmi_user *user, int mode)
{
	int rv = 0, index;
	unsigned long flags;
	struct ipmi_smi *intf = user->intf;

	user = FUNC0(user, &index);
	if (!user)
		return -ENODEV;

	FUNC3(&intf->maintenance_mode_lock, flags);
	if (intf->maintenance_mode != mode) {
		switch (mode) {
		case IPMI_MAINTENANCE_MODE_AUTO:
			intf->maintenance_mode_enable
				= (intf->auto_maintenance_timeout > 0);
			break;

		case IPMI_MAINTENANCE_MODE_OFF:
			intf->maintenance_mode_enable = false;
			break;

		case IPMI_MAINTENANCE_MODE_ON:
			intf->maintenance_mode_enable = true;
			break;

		default:
			rv = -EINVAL;
			goto out_unlock;
		}
		intf->maintenance_mode = mode;

		FUNC1(intf);
	}
 out_unlock:
	FUNC4(&intf->maintenance_mode_lock, flags);
	FUNC2(user, index);

	return rv;
}