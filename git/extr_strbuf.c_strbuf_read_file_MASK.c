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
struct strbuf {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct strbuf*,int,size_t) ; 

ssize_t FUNC3(struct strbuf *sb, const char *path, size_t hint)
{
	int fd;
	ssize_t len;
	int saved_errno;

	fd = FUNC1(path, O_RDONLY);
	if (fd < 0)
		return -1;
	len = FUNC2(sb, fd, hint);
	saved_errno = errno;
	FUNC0(fd);
	if (len < 0) {
		errno = saved_errno;
		return -1;
	}

	return len;
}