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
struct ipmi_file_private {int default_retries; scalar_t__ default_retry_time_ms; int /*<<< orphan*/  recv_mutex; int /*<<< orphan*/ * fasync_queue; int /*<<< orphan*/  wait; int /*<<< orphan*/  recv_msgs; int /*<<< orphan*/  recv_msg_lock; int /*<<< orphan*/  user; } ;
struct inode {int dummy; } ;
struct file {struct ipmi_file_private* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,struct ipmi_file_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipmi_hndlrs ; 
 int /*<<< orphan*/  FUNC4 (struct ipmi_file_private*) ; 
 struct ipmi_file_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	int                      if_num = FUNC1(inode);
	int                      rv;
	struct ipmi_file_private *priv;

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	rv = FUNC3(if_num,
			      &ipmi_hndlrs,
			      priv,
			      &priv->user);
	if (rv) {
		FUNC4(priv);
		goto out;
	}

	file->private_data = priv;

	FUNC7(&priv->recv_msg_lock);
	FUNC0(&priv->recv_msgs);
	FUNC2(&priv->wait);
	priv->fasync_queue = NULL;
	FUNC6(&priv->recv_mutex);

	/* Use the low-level defaults. */
	priv->default_retries = -1;
	priv->default_retry_time_ms = 0;

out:
	return rv;
}