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
 int called ; 
 int /*<<< orphan*/  FUNC0 (struct event*) ; 
 int FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(evutil_socket_t fd, short event, void *arg)
{
	struct event *signal = arg;

	FUNC2("signal_cb: got signal %d\n", FUNC1(signal));

	if (called >= 2)
		FUNC0(signal);

	called++;
}