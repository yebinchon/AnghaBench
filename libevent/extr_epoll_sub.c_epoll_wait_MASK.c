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
struct epoll_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __NR_epoll_pwait ; 
 int /*<<< orphan*/  __NR_epoll_wait ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct epoll_event*,int,int,...) ; 

int
FUNC1(int epfd, struct epoll_event *events, int maxevents, int timeout)
{
#if !defined(__NR_epoll_wait) && defined(__NR_epoll_pwait)
	return (syscall(__NR_epoll_pwait, epfd, events, maxevents, timeout, NULL, 0));
#else
	return (FUNC0(__NR_epoll_wait, epfd, events, maxevents, timeout));
#endif
}