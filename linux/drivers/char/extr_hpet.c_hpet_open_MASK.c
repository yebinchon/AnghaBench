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
struct hpets {int hp_ntimer; struct hpet_dev* hp_dev; struct hpets* hp_next; } ;
struct hpet_dev {int hd_flags; scalar_t__ hd_irqdata; } ;
struct file {int f_mode; struct hpet_dev* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FMODE_WRITE ; 
 int HPET_OPEN ; 
 int /*<<< orphan*/  hpet_lock ; 
 int /*<<< orphan*/  hpet_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct hpet_dev*) ; 
 struct hpets* hpets ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct hpet_dev *devp;
	struct hpets *hpetp;
	int i;

	if (file->f_mode & FMODE_WRITE)
		return -EINVAL;

	FUNC1(&hpet_mutex);
	FUNC3(&hpet_lock);

	for (devp = NULL, hpetp = hpets; hpetp && !devp; hpetp = hpetp->hp_next)
		for (i = 0; i < hpetp->hp_ntimer; i++)
			if (hpetp->hp_dev[i].hd_flags & HPET_OPEN)
				continue;
			else {
				devp = &hpetp->hp_dev[i];
				break;
			}

	if (!devp) {
		FUNC4(&hpet_lock);
		FUNC2(&hpet_mutex);
		return -EBUSY;
	}

	file->private_data = devp;
	devp->hd_irqdata = 0;
	devp->hd_flags |= HPET_OPEN;
	FUNC4(&hpet_lock);
	FUNC2(&hpet_mutex);

	FUNC0(devp);

	return 0;
}