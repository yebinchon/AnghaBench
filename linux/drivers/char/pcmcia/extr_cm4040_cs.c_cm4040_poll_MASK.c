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
struct reader_dev {int /*<<< orphan*/  buffer_status; int /*<<< orphan*/  poll_wait; } ;
struct file {struct reader_dev* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  BS_READABLE ; 
 int /*<<< orphan*/  BS_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int,struct reader_dev*,char*,int) ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *filp, poll_table *wait)
{
	struct reader_dev *dev = filp->private_data;
	__poll_t mask = 0;

	FUNC1(filp, &dev->poll_wait, wait);

	if (FUNC2(BS_READABLE, &dev->buffer_status))
		mask |= EPOLLIN | EPOLLRDNORM;
	if (FUNC2(BS_WRITABLE, &dev->buffer_status))
		mask |= EPOLLOUT | EPOLLWRNORM;

	FUNC0(2, dev, "<- cm4040_poll(%u)\n", mask);

	return mask;
}