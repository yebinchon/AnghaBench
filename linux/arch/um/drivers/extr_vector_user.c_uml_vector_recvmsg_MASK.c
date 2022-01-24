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
struct msghdr {int /*<<< orphan*/  msg_iovlen; int /*<<< orphan*/  msg_iov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(int fd, void *hdr, int flags)
{
	int n;
	struct msghdr *msg = (struct msghdr *) hdr;

	FUNC0(n = FUNC1(fd, msg->msg_iov, msg->msg_iovlen));
	if ((n < 0) && (errno == EAGAIN))
		return 0;
	if (n >= 0)
		return n;
	else
		return -errno;
}