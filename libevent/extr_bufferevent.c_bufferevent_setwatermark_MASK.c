#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bufferevent_private {int /*<<< orphan*/ * read_watermarks_cb; } ;
struct TYPE_4__ {size_t low; size_t high; } ;
struct TYPE_3__ {size_t low; size_t high; } ;
struct bufferevent {int /*<<< orphan*/  input; TYPE_2__ wm_read; TYPE_1__ wm_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int EVBUFFER_CB_ENABLED ; 
 int EVBUFFER_CB_NODEFER ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  bufferevent_inbuf_wm_cb ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct bufferevent *bufev, short events,
    size_t lowmark, size_t highmark)
{
	struct bufferevent_private *bufev_private = FUNC2(bufev);

	FUNC0(bufev);
	if (events & EV_WRITE) {
		bufev->wm_write.low = lowmark;
		bufev->wm_write.high = highmark;
	}

	if (events & EV_READ) {
		bufev->wm_read.low = lowmark;
		bufev->wm_read.high = highmark;

		if (highmark) {
			/* There is now a new high-water mark for read.
			   enable the callback if needed, and see if we should
			   suspend/bufferevent_wm_unsuspend. */

			if (bufev_private->read_watermarks_cb == NULL) {
				bufev_private->read_watermarks_cb =
				    FUNC5(bufev->input,
						    bufferevent_inbuf_wm_cb,
						    bufev);
			}
			FUNC7(bufev->input,
				      bufev_private->read_watermarks_cb,
				      EVBUFFER_CB_ENABLED|EVBUFFER_CB_NODEFER);

			if (FUNC8(bufev->input) >= highmark)
				FUNC3(bufev);
			else if (FUNC8(bufev->input) < highmark)
				FUNC4(bufev);
		} else {
			/* There is now no high-water mark for read. */
			if (bufev_private->read_watermarks_cb)
				FUNC6(bufev->input,
				    bufev_private->read_watermarks_cb,
				    EVBUFFER_CB_ENABLED);
			FUNC4(bufev);
		}
	}
	FUNC1(bufev);
}