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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 size_t MAX_IO_SIZE ; 
 int /*<<< orphan*/  POLLIN ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int,void*,size_t) ; 

ssize_t FUNC2(int fd, void *buf, size_t len)
{
	ssize_t nr;
	if (len > MAX_IO_SIZE)
	    len = MAX_IO_SIZE;
	while (1) {
		nr = FUNC1(fd, buf, len);
		if (nr < 0) {
			if (errno == EINTR)
				continue;
			if (FUNC0(fd, POLLIN, errno))
				continue;
		}
		return nr;
	}
}