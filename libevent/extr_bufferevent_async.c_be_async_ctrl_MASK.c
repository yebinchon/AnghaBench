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
union bufferevent_ctrl_data {void* fd; } ;
struct event_iocp_port {int dummy; } ;
struct TYPE_2__ {int options; } ;
struct bufferevent_async {int ok; TYPE_1__ bev; } ;
struct bufferevent {int /*<<< orphan*/  input; int /*<<< orphan*/  output; int /*<<< orphan*/  ev_base; } ;
typedef  void* evutil_socket_t ;
typedef  enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;

/* Variables and functions */
#define  BEV_CTRL_CANCEL_ALL 131 
#define  BEV_CTRL_GET_FD 130 
#define  BEV_CTRL_GET_UNDERLYING 129 
#define  BEV_CTRL_SET_FD 128 
 int BEV_OPT_CLOSE_ON_FREE ; 
 void* EVUTIL_INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 struct event_iocp_port* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct event_iocp_port*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct bufferevent_async* FUNC7 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC8(struct bufferevent *bev, enum bufferevent_ctrl_op op,
    union bufferevent_ctrl_data *data)
{
	switch (op) {
	case BEV_CTRL_GET_FD:
		data->fd = FUNC2(bev->input);
		return 0;
	case BEV_CTRL_SET_FD: {
		struct bufferevent_async *bev_a = FUNC7(bev);
		struct event_iocp_port *iocp;

		if (data->fd == FUNC2(bev->input))
			return 0;
		if (!(iocp = FUNC4(bev->ev_base)))
			return -1;
		if (FUNC5(iocp, data->fd, 1) < 0) {
			if (FUNC6(FUNC0()))
				return -1;
		}
		FUNC3(bev->input, data->fd);
		FUNC3(bev->output, data->fd);
		bev_a->ok = data->fd >= 0;
		return 0;
	}
	case BEV_CTRL_CANCEL_ALL: {
		struct bufferevent_async *bev_a = FUNC7(bev);
		evutil_socket_t fd = FUNC2(bev->input);
		if (fd != (evutil_socket_t)EVUTIL_INVALID_SOCKET &&
		    (bev_a->bev.options & BEV_OPT_CLOSE_ON_FREE)) {
			FUNC1(fd);
			FUNC3(bev->input, EVUTIL_INVALID_SOCKET);
		}
		bev_a->ok = 0;
		return 0;
	}
	case BEV_CTRL_GET_UNDERLYING:
	default:
		return -1;
	}
}