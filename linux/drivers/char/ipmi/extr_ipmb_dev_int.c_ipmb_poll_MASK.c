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
struct ipmb_dev {int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  request_queue_len; int /*<<< orphan*/  wait_queue; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipmb_dev* FUNC4 (struct file*) ; 

__attribute__((used)) static unsigned int FUNC5(struct file *file, poll_table *wait)
{
	struct ipmb_dev *ipmb_dev = FUNC4(file);
	unsigned int mask = POLLOUT;

	FUNC1(&ipmb_dev->file_mutex);
	FUNC3(file, &ipmb_dev->wait_queue, wait);

	if (FUNC0(&ipmb_dev->request_queue_len))
		mask |= POLLIN;
	FUNC2(&ipmb_dev->file_mutex);

	return mask;
}