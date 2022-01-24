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
struct bufferevent_private {scalar_t__ write_suspended; scalar_t__ connecting; scalar_t__ connection_refused; } ;
struct bufferevent {int enabled; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  output; int /*<<< orphan*/  ev_read; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int ev_ssize_t ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 short BEV_EVENT_TIMEOUT ; 
 short BEV_EVENT_WRITING ; 
 scalar_t__ FUNC0 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC1 (struct bufferevent*) ; 
 scalar_t__ FUNC2 (int) ; 
 short EV_TIMEOUT ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int) ; 
 int FUNC7 (struct bufferevent_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC9 (struct bufferevent*,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bufferevent*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(evutil_socket_t fd, short event, void *arg)
{
	struct bufferevent *bufev = arg;
	struct bufferevent_private *bufev_p = FUNC1(bufev);
	int res = 0;
	short what = BEV_EVENT_WRITING;
	int connected = 0;
	ev_ssize_t atmost = -1;

	FUNC8(bufev);

	if (event == EV_TIMEOUT) {
		/* Note that we only check for event==EV_TIMEOUT. If
		 * event==EV_TIMEOUT|EV_WRITE, we can safely ignore the
		 * timeout, since a read has occurred */
		what |= BEV_EVENT_TIMEOUT;
		goto error;
	}
	if (bufev_p->connecting) {
		int c = FUNC17(fd);
		/* we need to fake the error if the connection was refused
		 * immediately - usually connection to localhost on BSD */
		if (bufev_p->connection_refused) {
			bufev_p->connection_refused = 0;
			c = -1;
		}

		if (c == 0)
			goto done;

		bufev_p->connecting = 0;
		if (c < 0) {
			FUNC16(&bufev->ev_write);
			FUNC16(&bufev->ev_read);
			FUNC9(bufev, BEV_EVENT_ERROR, 0);
			goto done;
		} else {
			connected = 1;
			FUNC10(bufev, fd);
#ifdef _WIN32
			if (BEV_IS_ASYNC(bufev)) {
				event_del(&bufev->ev_write);
				bufferevent_async_set_connected_(bufev);
				bufferevent_run_eventcb_(bufev,
						BEV_EVENT_CONNECTED, 0);
				goto done;
			}
#endif
			FUNC9(bufev,
					BEV_EVENT_CONNECTED, 0);
			if (!(bufev->enabled & EV_WRITE) ||
			    bufev_p->write_suspended) {
				FUNC16(&bufev->ev_write);
				goto done;
			}
		}
	}

	atmost = FUNC7(bufev_p);

	if (bufev_p->write_suspended)
		goto done;

	if (FUNC13(bufev->output)) {
		FUNC14(bufev->output, 1);
		res = FUNC15(bufev->output, fd, atmost);
		FUNC12(bufev->output, 1);
		if (res == -1) {
			int err = FUNC18(fd);
			if (FUNC2(err))
				goto reschedule;
			what |= BEV_EVENT_ERROR;
		} else if (res == 0) {
			/* eof case
			   XXXX Actually, a 0 on write doesn't indicate
			   an EOF. An ECONNRESET might be more typical.
			 */
			what |= BEV_EVENT_EOF;
		}
		if (res <= 0)
			goto error;

		FUNC5(bufev_p, res);
	}

	if (FUNC13(bufev->output) == 0) {
		FUNC16(&bufev->ev_write);
	}

	/*
	 * Invoke the user callback if our buffer is drained or below the
	 * low watermark.
	 */
	if (res || !connected) {
		FUNC11(bufev, EV_WRITE, 0);
	}

	goto done;

 reschedule:
	if (FUNC13(bufev->output) == 0) {
		FUNC16(&bufev->ev_write);
	}
	goto done;

 error:
	FUNC6(bufev, EV_WRITE);
	FUNC9(bufev, what, 0);

 done:
	FUNC4(bufev);
}