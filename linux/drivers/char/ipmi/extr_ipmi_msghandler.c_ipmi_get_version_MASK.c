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
struct ipmi_user {int /*<<< orphan*/  intf; } ;
struct ipmi_device_id {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ipmi_user* FUNC0 (struct ipmi_user*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ipmi_device_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char FUNC2 (struct ipmi_device_id*) ; 
 unsigned char FUNC3 (struct ipmi_device_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipmi_user*,int) ; 

int FUNC5(struct ipmi_user *user,
		     unsigned char *major,
		     unsigned char *minor)
{
	struct ipmi_device_id id;
	int rv, index;

	user = FUNC0(user, &index);
	if (!user)
		return -ENODEV;

	rv = FUNC1(user->intf, NULL, &id, NULL, NULL);
	if (!rv) {
		*major = FUNC2(&id);
		*minor = FUNC3(&id);
	}
	FUNC4(user, index);

	return rv;
}