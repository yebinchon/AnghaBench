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
struct ipmi_recv_msg {int /*<<< orphan*/  link; } ;
struct ipmi_file_private {int /*<<< orphan*/  fasync_queue; int /*<<< orphan*/  wait; int /*<<< orphan*/  recv_msg_lock; int /*<<< orphan*/  recv_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ipmi_recv_msg *msg,
				 void                 *handler_data)
{
	struct ipmi_file_private *priv = handler_data;
	int                      was_empty;
	unsigned long            flags;

	FUNC3(&priv->recv_msg_lock, flags);
	was_empty = FUNC2(&priv->recv_msgs);
	FUNC1(&msg->link, &priv->recv_msgs);
	FUNC4(&priv->recv_msg_lock, flags);

	if (was_empty) {
		FUNC5(&priv->wait);
		FUNC0(&priv->fasync_queue, SIGIO, POLL_IN);
	}
}