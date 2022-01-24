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
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct unix_sockaddr_context*) ; 
 scalar_t__ FUNC4 (struct sockaddr_un*,char const*,struct unix_sockaddr_context*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int FUNC7(const char *path)
{
	int fd, saved_errno;
	struct sockaddr_un sa;
	struct unix_sockaddr_context ctx;

	FUNC6(path);

	if (FUNC4(&sa, path, &ctx) < 0)
		return -1;
	fd = FUNC5();

	if (FUNC0(fd, (struct sockaddr *)&sa, sizeof(sa)) < 0)
		goto fail;

	if (FUNC2(fd, 5) < 0)
		goto fail;

	FUNC3(&ctx);
	return fd;

fail:
	saved_errno = errno;
	FUNC3(&ctx);
	FUNC1(fd);
	errno = saved_errno;
	return -1;
}