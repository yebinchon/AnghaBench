#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_evloop_socket_t {int _flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  super; struct st_h2o_evloop_socket_t* _next_statechanged; } ;
struct TYPE_5__ {struct st_h2o_evloop_socket_t* head; struct st_h2o_evloop_socket_t** tail_ref; } ;
struct TYPE_6__ {TYPE_2__ _statechanged; } ;
struct st_h2o_evloop_epoll_t {TYPE_3__ super; int /*<<< orphan*/  ep; } ;
struct TYPE_4__ {struct st_h2o_evloop_socket_t* ptr; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLLOUT ; 
 int EPOLL_CTL_ADD ; 
 int EPOLL_CTL_DEL ; 
 int EPOLL_CTL_MOD ; 
 int H2O_SOCKET_FLAG_IS_DISPOSED ; 
 int H2O_SOCKET_FLAG_IS_POLLED_FOR_READ ; 
 int H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE ; 
 int H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct epoll_event*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_evloop_socket_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct st_h2o_evloop_epoll_t *loop)
{
    while (loop->super._statechanged.head != NULL) {
        /* detach the top */
        struct st_h2o_evloop_socket_t *sock = loop->super._statechanged.head;
        loop->super._statechanged.head = sock->_next_statechanged;
        sock->_next_statechanged = sock;
        /* update the state */
        if ((sock->_flags & H2O_SOCKET_FLAG_IS_DISPOSED) != 0) {
            FUNC2(sock);
        } else {
            int changed = 0, op, ret;
            struct epoll_event ev;
            ev.events = 0;
            if (FUNC3(&sock->super)) {
                ev.events |= EPOLLIN;
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_READ) == 0) {
                    sock->_flags |= H2O_SOCKET_FLAG_IS_POLLED_FOR_READ;
                    changed = 1;
                }
            } else {
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_READ) != 0) {
                    sock->_flags &= ~H2O_SOCKET_FLAG_IS_POLLED_FOR_READ;
                    changed = 1;
                }
            }
            if (FUNC4(&sock->super)) {
                ev.events |= EPOLLOUT;
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE) == 0) {
                    sock->_flags |= H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE;
                    changed = 1;
                }
            } else {
                if ((sock->_flags & H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE) != 0) {
                    sock->_flags &= ~H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE;
                    changed = 1;
                }
            }
            if (changed) {
                if ((sock->_flags & H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED) != 0) {
                    if (ev.events != 0)
                        op = EPOLL_CTL_MOD;
                    else
                        op = EPOLL_CTL_DEL;
                } else {
                    FUNC0(ev.events != 0);
                    op = EPOLL_CTL_ADD;
                }
                ev.data.ptr = sock;
                while ((ret = FUNC1(loop->ep, op, sock->fd, &ev)) != 0 && errno == EINTR)
                    ;
                if (ret != 0)
                    return -1;
                if (op == EPOLL_CTL_DEL)
                    sock->_flags &= ~H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED;
                else
                    sock->_flags |= H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED;
            }
        }
    }
    loop->super._statechanged.tail_ref = &loop->super._statechanged.head;

    return 0;
}