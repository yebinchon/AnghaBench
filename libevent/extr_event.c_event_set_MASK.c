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
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  current_base ; 
 int FUNC1 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,void (*) (int /*<<< orphan*/ ,short,void*),void*) ; 

void
FUNC2(struct event *ev, evutil_socket_t fd, short events,
	  void (*callback)(evutil_socket_t, short, void *), void *arg)
{
	int r;
	r = FUNC1(ev, current_base, fd, events, callback, arg);
	FUNC0(r == 0);
}