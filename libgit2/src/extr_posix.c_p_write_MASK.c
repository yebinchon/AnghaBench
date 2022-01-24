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
typedef  int /*<<< orphan*/  git_file ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ EPIPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 

int FUNC3(git_file fd, const void *buf, size_t cnt)
{
	const char *b = buf;

	while (cnt) {
		ssize_t r;
#ifdef GIT_WIN32
		assert((size_t)((unsigned int)cnt) == cnt);
		r = write(fd, b, (unsigned int)cnt);
#else
		r = FUNC2(fd, b, cnt);
#endif
		if (r < 0) {
			if (errno == EINTR || FUNC0(errno))
				continue;
			return -1;
		}
		if (!r) {
			errno = EPIPE;
			return -1;
		}
		cnt -= r;
		b += r;
	}
	return 0;
}