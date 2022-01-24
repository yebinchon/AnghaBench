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
struct TYPE_2__ {void* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int EPOLLET ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  epollfd ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int FUNC4(int events, int fd, void *data)
{
	struct epoll_event event;
	int result;

	event.data.ptr = data;
	event.events = events | EPOLLET;
	result = FUNC0(epollfd, EPOLL_CTL_ADD, fd, &event);
	if ((result) && (errno == EEXIST))
		result = FUNC1(events, fd, data);
	if (result)
		FUNC2("epollctl add err fd %d, %s\n", fd, FUNC3(errno));
	return result;
}