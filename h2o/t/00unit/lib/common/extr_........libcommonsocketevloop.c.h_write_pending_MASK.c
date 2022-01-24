#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ cnt; TYPE_4__* bufs; } ;
struct TYPE_5__ {int /*<<< orphan*/ * write; } ;
struct TYPE_6__ {TYPE_1__ _cb; } ;
struct st_h2o_evloop_socket_t {int /*<<< orphan*/  _flags; TYPE_3__ _wreq; int /*<<< orphan*/  fd; TYPE_2__ super; } ;
struct TYPE_8__ {size_t base; size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SOCKET_FLAG_IS_WRITE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_evloop_socket_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_evloop_socket_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct st_h2o_evloop_socket_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_4__**,scalar_t__*,size_t*) ; 

void FUNC5(struct st_h2o_evloop_socket_t *sock)
{
    size_t first_buf_written;

    FUNC0(sock->super._cb.write != NULL);

    /* DONT_WRITE poll */
    if (sock->_wreq.cnt == 0)
        goto Complete;

    /* write */
    if (FUNC4(sock->fd, &sock->_wreq.bufs, &sock->_wreq.cnt, &first_buf_written) == 0 && sock->_wreq.cnt != 0) {
        /* partial write */
        sock->_wreq.bufs[0].base += first_buf_written;
        sock->_wreq.bufs[0].len -= first_buf_written;
        return;
    }

    /* either completed or failed */
    FUNC3(sock);

Complete:
    sock->_flags |= H2O_SOCKET_FLAG_IS_WRITE_NOTIFY;
    FUNC1(sock);
    FUNC2(sock); /* might need to disable the write polling */
}