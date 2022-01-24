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
struct hpet_dev {unsigned long hd_irqdata; int /*<<< orphan*/  hd_waitqueue; int /*<<< orphan*/  hd_ireqfreq; } ;
struct file {struct hpet_dev* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  hpet_lock ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, poll_table * wait)
{
	unsigned long v;
	struct hpet_dev *devp;

	devp = file->private_data;

	if (!devp->hd_ireqfreq)
		return 0;

	FUNC0(file, &devp->hd_waitqueue, wait);

	FUNC1(&hpet_lock);
	v = devp->hd_irqdata;
	FUNC2(&hpet_lock);

	if (v != 0)
		return EPOLLIN | EPOLLRDNORM;

	return 0;
}