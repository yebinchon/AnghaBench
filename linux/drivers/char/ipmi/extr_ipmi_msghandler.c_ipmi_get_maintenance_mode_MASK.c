#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipmi_user {TYPE_1__* intf; } ;
struct TYPE_2__ {int maintenance_mode; int /*<<< orphan*/  maintenance_mode_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ipmi_user* FUNC0 (struct ipmi_user*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_user*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ipmi_user *user)
{
	int mode, index;
	unsigned long flags;

	user = FUNC0(user, &index);
	if (!user)
		return -ENODEV;

	FUNC2(&user->intf->maintenance_mode_lock, flags);
	mode = user->intf->maintenance_mode;
	FUNC3(&user->intf->maintenance_mode_lock, flags);
	FUNC1(user, index);

	return mode;
}