#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t size; } ;
struct vhost_user_msg {int /*<<< orphan*/  payload; TYPE_1__ header; } ;

/* Variables and functions */
 int EPROTO ; 
 int FUNC0 (int,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int,struct vhost_user_msg*) ; 

__attribute__((used)) static int FUNC2(int fd, struct vhost_user_msg *msg,
			   size_t max_payload_size)
{
	size_t size;
	int rc = FUNC1(fd, msg);

	if (rc)
		return rc;
	size = msg->header.size;
	if (size > max_payload_size)
		return -EPROTO;
	return FUNC0(fd, &msg->payload, size);
}