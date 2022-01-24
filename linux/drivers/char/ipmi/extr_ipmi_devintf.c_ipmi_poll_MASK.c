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
struct ipmi_file_private {int /*<<< orphan*/  recv_msg_lock; int /*<<< orphan*/  recv_msgs; int /*<<< orphan*/  wait; } ;
struct file {struct ipmi_file_private* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file, poll_table *wait)
{
	struct ipmi_file_private *priv = file->private_data;
	__poll_t             mask = 0;
	unsigned long            flags;

	FUNC1(file, &priv->wait, wait);

	FUNC2(&priv->recv_msg_lock, flags);

	if (!FUNC0(&priv->recv_msgs))
		mask |= (EPOLLIN | EPOLLRDNORM);

	FUNC3(&priv->recv_msg_lock, flags);

	return mask;
}