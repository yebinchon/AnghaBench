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
typedef  struct timeval {int member_0; int member_1; scalar_t__ tv_usec; scalar_t__ tv_sec; } const timeval ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef  int evutil_socket_t ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_TIMEOUT ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int N_EVENTS ; 
 scalar_t__ SIGINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  callback1 ; 
 int /*<<< orphan*/  callback2 ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,struct timeval const*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*) ; 
 struct timeval const* FUNC6 (struct event_base*,struct timeval const*) ; 
 struct event_base* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct event*) ; 
 struct event* FUNC9 (struct event_base*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct event* FUNC10 (struct event_base*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct event* FUNC11 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct timeval const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,long,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC18(int argc, char **argv)
{
#define N_EVENTS 13
	int i;
	struct event *ev[N_EVENTS];
	evutil_socket_t pair1[2];
	evutil_socket_t pair2[2];
	struct timeval tv_onesec = {1,0};
	struct timeval tv_two5sec = {2,500*1000};
	const struct timeval *tv_onesec_common;
	const struct timeval *tv_two5sec_common;
	struct event_base *base;
	struct timeval now;

#ifdef _WIN32
	WORD wVersionRequested;
	WSADATA wsaData;

	wVersionRequested = MAKEWORD(2, 2);

	WSAStartup(wVersionRequested, &wsaData);
#endif

#ifdef _WIN32
#define LOCAL_SOCKETPAIR_AF AF_INET
#else
#define LOCAL_SOCKETPAIR_AF AF_UNIX
#endif

	if (FUNC13(pair1) < 0 ||
	    FUNC13(pair2) < 0) {
		FUNC17("evutil_make_internal_pipe_");
		return 1;
	}

	if (!(base = FUNC7())) {
		FUNC14(stderr,"Couldn't make event_base\n");
		return 2;
	}

	tv_onesec_common = FUNC6(base, &tv_onesec);
	tv_two5sec_common = FUNC6(base, &tv_two5sec);

	ev[0] = FUNC9(base, pair1[0], EV_WRITE, callback1, NULL);
	ev[1] = FUNC9(base, pair1[1], EV_READ|EV_PERSIST, callback1, NULL);
	ev[2] = FUNC9(base, pair2[0], EV_WRITE|EV_PERSIST, callback2, NULL);
	ev[3] = FUNC9(base, pair2[1], EV_READ, callback2, NULL);

	/* For timers */
	ev[4] = FUNC11(base, callback1, NULL);
	ev[5] = FUNC11(base, callback1, NULL);
	ev[6] = FUNC11(base, callback1, NULL);
	ev[7] = FUNC9(base, -1, EV_PERSIST, callback2, NULL);
	ev[8] = FUNC9(base, -1, EV_PERSIST, callback2, NULL);
	ev[9] = FUNC9(base, -1, EV_PERSIST, callback2, NULL);

	/* To activate */
	ev[10] = FUNC9(base, -1, 0, callback1, NULL);
	ev[11] = FUNC9(base, -1, 0, callback2, NULL);

	/* Signals */
	ev[12] = FUNC10(base, SIGINT, callback2, NULL);

	FUNC3(ev[0], NULL);
	FUNC3(ev[1], &tv_onesec);
	FUNC3(ev[2], tv_onesec_common);
	FUNC3(ev[3], tv_two5sec_common);

	FUNC3(ev[4], tv_onesec_common);
	FUNC3(ev[5], tv_onesec_common);
	FUNC3(ev[6], &tv_onesec);
	FUNC3(ev[7], tv_two5sec_common);
	FUNC3(ev[8], tv_onesec_common);
	FUNC3(ev[9], &tv_two5sec);

	FUNC2(ev[10], EV_READ, 1);
	FUNC2(ev[11], EV_READ|EV_WRITE|EV_TIMEOUT, 1);
	FUNC2(ev[1], EV_READ, 1);

	FUNC3(ev[12], NULL);

	FUNC12(&now,NULL);
	FUNC16("=====expected");
	FUNC15("Now= %ld.%06d\n",(long)now.tv_sec,(int)now.tv_usec);
	FUNC16("Inserted:");
	FUNC15("  %p [fd  %ld] Write\n",ev[0],(long)pair1[0]);
	FUNC15("  %p [fd  %ld] Read Persist Timeout=T+1\n",ev[1],(long)pair1[1]);
	FUNC15("  %p [fd  %ld] Write Persist Timeout=T+1\n",ev[2],(long)pair2[0]);
	FUNC15("  %p [fd  %ld] Read Timeout=T+2.5\n",ev[3],(long)pair2[1]);
	FUNC15("  %p [fd  -1] Timeout=T+1\n",ev[4]);
	FUNC15("  %p [fd  -1] Timeout=T+1\n",ev[5]);
	FUNC15("  %p [fd  -1] Timeout=T+1\n",ev[6]);
	FUNC15("  %p [fd  -1] Persist Timeout=T+2.5\n",ev[7]);
	FUNC15("  %p [fd  -1] Persist Timeout=T+1\n",ev[8]);
	FUNC15("  %p [fd  -1] Persist Timeout=T+2.5\n",ev[9]);
	FUNC15("  %p [sig %d] Signal Persist\n", ev[12], (int)SIGINT);

	FUNC16("Active:");
	FUNC15("  %p [fd  -1, priority=0] Read active\n", ev[10]);
	FUNC15("  %p [fd  -1, priority=0] Read Write Timeout active\n", ev[11]);
	FUNC15("  %p [fd  %ld, priority=0] Read active\n", ev[1], (long)pair1[1]);

	FUNC16("======received");
	FUNC4(base, stdout);

	for (i = 0; i < N_EVENTS; ++i) {
		FUNC8(ev[i]);
	}
	FUNC5(base);

	return 0;
}