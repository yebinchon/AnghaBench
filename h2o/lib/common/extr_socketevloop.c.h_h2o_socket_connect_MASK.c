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
struct st_h2o_evloop_socket_t {int /*<<< orphan*/  super; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_socket_cb ;
typedef  int /*<<< orphan*/  h2o_loop_t ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  H2O_SOCKET_FLAG_IS_CONNECTING ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct st_h2o_evloop_socket_t* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

h2o_socket_t *FUNC6(h2o_loop_t *loop, struct sockaddr *addr, socklen_t addrlen, h2o_socket_cb cb)
{
    int fd;
    struct st_h2o_evloop_socket_t *sock;

    if ((fd = FUNC0(addr->sa_family, SOCK_STREAM, 0)) == -1)
        return NULL;
    FUNC4(fd, F_SETFL, O_NONBLOCK);
    if (!(FUNC2(fd, addr, addrlen) == 0 || errno == EINPROGRESS)) {
        FUNC1(fd);
        return NULL;
    }

    sock = FUNC3(loop, fd, H2O_SOCKET_FLAG_IS_CONNECTING);
    FUNC5(&sock->super, cb);
    return &sock->super;
}