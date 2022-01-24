#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  defer_timeout; } ;
struct st_h2o_http2client_conn_t {int /*<<< orphan*/  io_timeout; TYPE_3__ super; TYPE_1__ output; } ;
struct TYPE_9__ {struct st_h2o_http2client_conn_t* data; } ;
typedef  TYPE_4__ h2o_socket_t ;
struct TYPE_7__ {int /*<<< orphan*/  io_timeout; int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http2client_conn_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http2client_conn_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_http2client_conn_t*) ; 
 int /*<<< orphan*/  h2o_httpclient_error_io ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct st_h2o_http2client_conn_t*) ; 

__attribute__((used)) static void FUNC7(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http2client_conn_t *conn = sock->data;

    FUNC5(&conn->io_timeout);

    if (err != NULL) {
        FUNC0(conn, h2o_httpclient_error_io);
        FUNC1(conn);
        return;
    }

    if (FUNC6(conn) != 0)
        return;

    /* write immediately, if pending write exists */
    if (FUNC3(&conn->output.defer_timeout)) {
        FUNC5(&conn->output.defer_timeout);
        FUNC2(conn);
    }

    if (!FUNC3(&conn->io_timeout))
        FUNC4(conn->super.ctx->loop, conn->super.ctx->io_timeout, &conn->io_timeout);
}