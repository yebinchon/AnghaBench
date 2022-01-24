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
struct inode {int dummy; } ;
struct file {struct apm_user* private_data; } ;
struct apm_user {scalar_t__ standbys_pending; scalar_t__ suspends_pending; struct apm_user* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct apm_user*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct apm_user*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ standbys_pending ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ suspends_pending ; 
 struct apm_user* user_list ; 
 int /*<<< orphan*/  user_list_lock ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct apm_user *as;

	as = filp->private_data;
	if (FUNC0(as, "release"))
		return 0;
	filp->private_data = NULL;
	if (as->standbys_pending > 0) {
		standbys_pending -= as->standbys_pending;
		if (standbys_pending <= 0)
			FUNC5();
	}
	if (as->suspends_pending > 0) {
		suspends_pending -= as->suspends_pending;
		if (suspends_pending <= 0)
			(void) FUNC6(1);
	}
	FUNC3(&user_list_lock);
	if (user_list == as)
		user_list = as->next;
	else {
		struct apm_user *as1;

		for (as1 = user_list;
		     (as1 != NULL) && (as1->next != as);
		     as1 = as1->next)
			;
		if (as1 == NULL)
			FUNC2("filp not in user list\n");
		else
			as1->next = as->next;
	}
	FUNC4(&user_list_lock);
	FUNC1(as);
	return 0;
}