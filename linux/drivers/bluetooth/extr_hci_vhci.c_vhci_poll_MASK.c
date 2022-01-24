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
struct vhci_data {int /*<<< orphan*/  readq; int /*<<< orphan*/  read_wait; } ;
struct file {struct vhci_data* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC2(struct file *file, poll_table *wait)
{
	struct vhci_data *data = file->private_data;

	FUNC0(file, &data->read_wait, wait);

	if (!FUNC1(&data->readq))
		return EPOLLIN | EPOLLRDNORM;

	return EPOLLOUT | EPOLLWRNORM;
}