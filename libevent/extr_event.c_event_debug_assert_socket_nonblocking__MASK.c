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
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  event_debug_mode_on_ ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(evutil_socket_t fd)
{
	if (!event_debug_mode_on_)
		return;
	if (fd < 0)
		return;

#ifndef _WIN32
	{
		int flags;
		if ((flags = FUNC1(fd, F_GETFL, NULL)) >= 0) {
			FUNC0(flags & O_NONBLOCK);
		}
	}
#endif
}