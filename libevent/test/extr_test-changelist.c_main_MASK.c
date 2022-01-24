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
struct timeval {int tv_sec; int tv_usec; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct cpu_usage_timer {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int EV_PERSIST ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*) ; 
 struct event_base* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct event*) ; 
 struct event* FUNC7 (struct event_base*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct event**) ; 
 int /*<<< orphan*/  FUNC8 (struct event*,struct timeval*) ; 
 struct event* FUNC9 (struct event_base*,int /*<<< orphan*/ ,struct event**) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cpu_usage_timer*,double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,double) ; 
 int /*<<< orphan*/  FUNC13 (struct cpu_usage_timer*) ; 
 int /*<<< orphan*/  timeout_cb ; 
 int /*<<< orphan*/  write_cb ; 

int
FUNC14(int argc, char **argv)
{
	struct event* ev;
	struct event* timeout;
	struct event_base* base;

	evutil_socket_t pair[2];
	struct timeval tv;
	struct cpu_usage_timer timer;

	double usage, secPassed, secUsed;

#ifdef _WIN32
	WORD wVersionRequested;
	WSADATA wsaData;

	wVersionRequested = MAKEWORD(2, 2);

	(void) WSAStartup(wVersionRequested, &wsaData);
#endif
	if (FUNC10(AF_UNIX, SOCK_STREAM, 0, pair) == -1)
		return (1);

	/* Initialize the event library */
	if (!(base = FUNC5()))
		return (1);

	/* Initialize a timeout to terminate the test */
	timeout = FUNC9(base,timeout_cb,&timeout);
	/* and watch for writability on one end of the pipe */
	ev = FUNC7(base,pair[1],EV_WRITE | EV_PERSIST, write_cb, &ev);

	tv.tv_sec  = 1;
	tv.tv_usec = 500*1000;

	FUNC8(timeout, &tv);

	FUNC2(ev, NULL);

	FUNC13(&timer);

	FUNC3(base);

	FUNC6(ev);
	FUNC6(timeout);
	FUNC4(base);

	FUNC11(&timer, &secPassed, &secUsed, &usage);

	/* attempt to calculate our cpu usage over the test should be
	   virtually nil */

	FUNC12("usec used=%d, usec passed=%d, cpu usage=%.2f%%\n",
	    (int)(secUsed*1e6),
	    (int)(secPassed*1e6),
	    usage*100);

	if (usage > 50.0) /* way too high */
	  return 1;

	return 0;
}