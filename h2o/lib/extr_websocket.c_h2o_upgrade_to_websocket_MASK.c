#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_websocket_msg_callback ;
struct TYPE_15__ {int /*<<< orphan*/  on_msg_recv_callback; int /*<<< orphan*/  send_callback; int /*<<< orphan*/  recv_callback; } ;
struct TYPE_13__ {TYPE_4__ ws_callbacks; int /*<<< orphan*/  ws_ctx; int /*<<< orphan*/  cb; void* data; } ;
typedef  TYPE_2__ h2o_websocket_conn_t ;
struct TYPE_12__ {int status; char* reason; int /*<<< orphan*/  headers; } ;
struct TYPE_14__ {int version; TYPE_1__ res; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ h2o_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_UPGRADE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  on_complete ; 
 int /*<<< orphan*/  on_msg_callback ; 
 int /*<<< orphan*/  recv_callback ; 
 int /*<<< orphan*/  send_callback ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*) ; 

h2o_websocket_conn_t *FUNC10(h2o_req_t *req, const char *client_key, void *data, h2o_websocket_msg_callback cb)
{
    h2o_websocket_conn_t *conn = FUNC6(sizeof(*conn));
    char accept_key[29];

    /* only for http1 connection */
    FUNC1(req->version < 0x200);

    /* setup the context */
    FUNC7(conn, 0, sizeof(*conn));
    // conn->sock = sock; set by on_complete
    conn->ws_callbacks.recv_callback = recv_callback;
    conn->ws_callbacks.send_callback = send_callback;
    conn->ws_callbacks.on_msg_recv_callback = on_msg_callback;
    conn->data = data;
    conn->cb = cb;

    FUNC9(&conn->ws_ctx, &conn->ws_callbacks, conn);

    /* build response */
    FUNC2(accept_key, client_key);
    req->res.status = 101;
    req->res.reason = "Switching Protocols";
    FUNC3(&req->pool, &req->res.headers, H2O_TOKEN_UPGRADE, NULL, FUNC0("websocket"));
    FUNC4(&req->pool, &req->res.headers, FUNC0("sec-websocket-accept"), 0, NULL, accept_key,
                          FUNC8(accept_key));

    /* send */
    FUNC5(req, NULL, 0, on_complete, conn);

    return conn;
}