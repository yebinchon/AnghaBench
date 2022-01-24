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
struct TYPE_4__ {int /*<<< orphan*/ * write; } ;
struct TYPE_6__ {TYPE_1__ _cb; } ;
struct TYPE_5__ {scalar_t__ cnt; } ;
struct st_h2o_evloop_socket_t {int _flags; TYPE_3__ super; int /*<<< orphan*/  fd; TYPE_2__ _wreq; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  so_err ;

/* Variables and functions */
 int H2O_SOCKET_FLAG_IS_CONNECTING ; 
 int H2O_SOCKET_FLAG_IS_DISPOSED ; 
 int H2O_SOCKET_FLAG_IS_READ_READY ; 
 int H2O_SOCKET_FLAG_IS_WRITE_NOTIFY ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 char* h2o_socket_error_conn_fail ; 
 char* h2o_socket_error_io ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct st_h2o_evloop_socket_t*) ; 

__attribute__((used)) static void FUNC4(struct st_h2o_evloop_socket_t *sock)
{
    if ((sock->_flags & H2O_SOCKET_FLAG_IS_DISPOSED) != 0) {
        /* is freed in updatestates phase */
        return;
    }

    if ((sock->_flags & H2O_SOCKET_FLAG_IS_READ_READY) != 0) {
        sock->_flags &= ~H2O_SOCKET_FLAG_IS_READ_READY;
        FUNC3(sock);
    }

    if ((sock->_flags & H2O_SOCKET_FLAG_IS_WRITE_NOTIFY) != 0) {
        const char *err = NULL;
        FUNC0(sock->super._cb.write != NULL);
        sock->_flags &= ~H2O_SOCKET_FLAG_IS_WRITE_NOTIFY;
        if (sock->_wreq.cnt != 0) {
            /* error */
            err = h2o_socket_error_io;
            sock->_wreq.cnt = 0;
        } else if ((sock->_flags & H2O_SOCKET_FLAG_IS_CONNECTING) != 0) {
            sock->_flags &= ~H2O_SOCKET_FLAG_IS_CONNECTING;
            int so_err = 0;
            socklen_t l = sizeof(so_err);
            so_err = 0;
            if (FUNC1(sock->fd, SOL_SOCKET, SO_ERROR, &so_err, &l) != 0 || so_err != 0) {
                /* FIXME lookup the error table */
                err = h2o_socket_error_conn_fail;
            }
        }
        FUNC2(&sock->super, err);
    }
}