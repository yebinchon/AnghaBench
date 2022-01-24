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
 int /*<<< orphan*/  FUNC0 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(evutil_socket_t fd, short event, void *arg)
{
	FUNC2("write callback. should only see this once\n");

	/* got what we want remove the event */
	FUNC1(*(struct event**)arg);

	/* opps changed my mind add it back again */
	FUNC0(*(struct event**)arg,NULL);

	/* not a good day for decisiveness, I really didn't want it after all */
	FUNC1(*(struct event**)arg);

}