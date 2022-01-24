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
struct mmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOBUFS ; 
 int errno ; 
 int FUNC1 (int,struct mmsghdr*,unsigned int,unsigned int) ; 

int FUNC2(
	int fd,
	void *msgvec,
	unsigned int vlen,
	unsigned int flags)
{
	int n;

	FUNC0(n = FUNC1(fd, (struct mmsghdr *) msgvec, vlen, flags));
	if ((n < 0) && ((errno == EAGAIN) || (errno == ENOBUFS)))
		return 0;
	if (n >= 0)
		return n;
	else
		return -errno;
}