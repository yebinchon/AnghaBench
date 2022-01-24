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
struct st_h2o_evloop_socket_t {int _flags; int /*<<< orphan*/  fd; scalar_t__ loop; } ;
struct st_h2o_evloop_epoll_t {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EPOLL_CTL_DEL ; 
 int H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct st_h2o_evloop_socket_t *sock)
{
    struct st_h2o_evloop_epoll_t *loop = (void *)sock->loop;
    int ret;

    if ((sock->_flags & H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED) == 0)
        return;
    while ((ret = FUNC0(loop->ep, EPOLL_CTL_DEL, sock->fd, NULL)) != 0 && errno == EINTR)
        ;
    if (ret != 0)
        FUNC1("socket_export: epoll(DEL) returned error %d (fd=%d)\n", errno, sock->fd);
}