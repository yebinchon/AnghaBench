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
struct file {int f_mode; struct apm_user* private_data; } ;
struct apm_user {int writer; int reader; struct apm_user* next; int /*<<< orphan*/  suser; scalar_t__ standbys_read; scalar_t__ suspends_read; scalar_t__ standbys_pending; scalar_t__ suspends_pending; scalar_t__ event_head; scalar_t__ event_tail; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  APM_BIOS_MAGIC ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct apm_user* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct apm_user* user_list ; 
 int /*<<< orphan*/  user_list_lock ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct apm_user *as;

	as = FUNC1(sizeof(*as), GFP_KERNEL);
	if (as == NULL)
		return -ENOMEM;

	as->magic = APM_BIOS_MAGIC;
	as->event_tail = as->event_head = 0;
	as->suspends_pending = as->standbys_pending = 0;
	as->suspends_read = as->standbys_read = 0;
	/*
	 * XXX - this is a tiny bit broken, when we consider BSD
	 * process accounting. If the device is opened by root, we
	 * instantly flag that we used superuser privs. Who knows,
	 * we might close the device immediately without doing a
	 * privileged operation -- cevans
	 */
	as->suser = FUNC0(CAP_SYS_ADMIN);
	as->writer = (filp->f_mode & FMODE_WRITE) == FMODE_WRITE;
	as->reader = (filp->f_mode & FMODE_READ) == FMODE_READ;
	FUNC2(&user_list_lock);
	as->next = user_list;
	user_list = as;
	FUNC3(&user_list_lock);
	filp->private_data = as;
	return 0;
}