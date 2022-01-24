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
struct evbuffer {int dummy; } ;
struct bufferevent_private {int connection_refused; scalar_t__ read_suspended; } ;
struct TYPE_2__ {scalar_t__ high; } ;
struct bufferevent {TYPE_1__ wm_read; struct evbuffer* input; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  scalar_t__ ev_ssize_t ;

/* Variables and functions */
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 short BEV_EVENT_READING ; 
 short BEV_EVENT_TIMEOUT ; 
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  EV_READ ; 
 short EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bufferevent_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent*,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC11 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct evbuffer*) ; 
 int FUNC13 (struct evbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(evutil_socket_t fd, short event, void *arg)
{
	struct bufferevent *bufev = arg;
	struct bufferevent_private *bufev_p = FUNC0(bufev);
	struct evbuffer *input;
	int res = 0;
	short what = BEV_EVENT_READING;
	ev_ssize_t howmuch = -1, readmax=-1;

	FUNC7(bufev);

	if (event == EV_TIMEOUT) {
		/* Note that we only check for event==EV_TIMEOUT. If
		 * event==EV_TIMEOUT|EV_READ, we can safely ignore the
		 * timeout, since a read has occurred */
		what |= BEV_EVENT_TIMEOUT;
		goto error;
	}

	input = bufev->input;

	/*
	 * If we have a high watermark configured then we don't want to
	 * read more data than would make us reach the watermark.
	 */
	if (bufev->wm_read.high != 0) {
		howmuch = bufev->wm_read.high - FUNC12(input);
		/* we somehow lowered the watermark, stop reading */
		if (howmuch <= 0) {
			FUNC10(bufev);
			goto done;
		}
	}
	readmax = FUNC6(bufev_p);
	if (howmuch < 0 || howmuch > readmax) /* The use of -1 for "unlimited"
					       * uglifies this code. XXXX */
		howmuch = readmax;
	if (bufev_p->read_suspended)
		goto done;

	FUNC14(input, 0);
	res = FUNC13(input, fd, (int)howmuch); /* XXXX evbuffer_read would do better to take and return ev_ssize_t */
	FUNC11(input, 0);

	if (res == -1) {
		int err = FUNC15(fd);
		if (FUNC2(err))
			goto reschedule;
		if (FUNC1(err)) {
			bufev_p->connection_refused = 1;
			goto done;
		}
		/* error case */
		what |= BEV_EVENT_ERROR;
	} else if (res == 0) {
		/* eof case */
		what |= BEV_EVENT_EOF;
	}

	if (res <= 0)
		goto error;

	FUNC4(bufev_p, res);

	/* Invoke the user callback - must always be called last */
	FUNC9(bufev, EV_READ, 0);

	goto done;

 reschedule:
	goto done;

 error:
	FUNC5(bufev, EV_READ);
	FUNC8(bufev, what, 0);

 done:
	FUNC3(bufev);
}