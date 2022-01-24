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
struct apm_user {scalar_t__ suspend_state; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ SUSPEND_PENDING ; 
 scalar_t__ SUSPEND_READ ; 
 int /*<<< orphan*/  apm_suspend_waitqueue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct apm_user*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_lock ; 
 int /*<<< orphan*/  suspend_acks_pending ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_list_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode * inode, struct file * filp)
{
	struct apm_user *as = filp->private_data;

	filp->private_data = NULL;

	FUNC1(&user_list_lock);
	FUNC3(&as->list);
	FUNC6(&user_list_lock);

	/*
	 * We are now unhooked from the chain.  As far as new
	 * events are concerned, we no longer exist.
	 */
	FUNC4(&state_lock);
	if (as->suspend_state == SUSPEND_PENDING ||
	    as->suspend_state == SUSPEND_READ)
		FUNC0(&suspend_acks_pending);
	FUNC5(&state_lock);

	FUNC7(&apm_suspend_waitqueue);

	FUNC2(as);
	return 0;
}