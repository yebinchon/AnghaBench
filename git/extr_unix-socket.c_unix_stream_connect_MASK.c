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
struct unix_sockaddr_context {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct unix_sockaddr_context*) ; 
 scalar_t__ FUNC3 (struct sockaddr_un*,char const*,struct unix_sockaddr_context*) ; 
 int FUNC4 () ; 

int FUNC5(const char *path)
{
	int fd, saved_errno;
	struct sockaddr_un sa;
	struct unix_sockaddr_context ctx;

	if (FUNC3(&sa, path, &ctx) < 0)
		return -1;
	fd = FUNC4();
	if (FUNC1(fd, (struct sockaddr *)&sa, sizeof(sa)) < 0)
		goto fail;
	FUNC2(&ctx);
	return fd;

fail:
	saved_errno = errno;
	FUNC2(&ctx);
	FUNC0(fd);
	errno = saved_errno;
	return -1;
}