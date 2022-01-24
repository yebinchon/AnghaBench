#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  connpool; int /*<<< orphan*/  _timeout; } ;
struct st_h2o_http2client_stream_t {TYPE_1__ super; } ;
struct TYPE_9__ {TYPE_2__* ctx; int /*<<< orphan*/  sock; } ;
struct st_h2o_http2client_conn_t {int /*<<< orphan*/  io_timeout; TYPE_3__ super; } ;
typedef  int /*<<< orphan*/  h2o_url_t ;
struct TYPE_10__ {struct st_h2o_http2client_conn_t* data; } ;
typedef  TYPE_4__ h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_t ;
struct TYPE_8__ {int /*<<< orphan*/  io_timeout; int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct st_h2o_http2client_conn_t* FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct st_h2o_http2client_stream_t*,struct st_h2o_http2client_conn_t*) ; 
 int /*<<< orphan*/  on_read ; 
 int /*<<< orphan*/  FUNC6 (struct st_h2o_http2client_conn_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct st_h2o_http2client_stream_t*) ; 

void FUNC8(h2o_httpclient_t *_client, h2o_socket_t *sock, h2o_url_t *origin)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;

    FUNC0(!FUNC3(&stream->super._timeout));

    struct st_h2o_http2client_conn_t *conn = sock->data;
    if (conn == NULL) {
        conn = FUNC1(stream->super.ctx, sock, origin, stream->super.connpool);
        sock->data = conn;
        /* send preface, settings, and connection-level window update */
        FUNC6(conn, stream->super.ctx);
        FUNC2(conn->super.sock, on_read);
    }

    FUNC7(stream);

    if (!FUNC3(&conn->io_timeout))
        FUNC4(conn->super.ctx->loop, conn->super.ctx->io_timeout, &conn->io_timeout);
    FUNC5(stream, conn);
}