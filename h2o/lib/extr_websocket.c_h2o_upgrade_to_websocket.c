
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int h2o_websocket_msg_callback ;
struct TYPE_15__ {int on_msg_recv_callback; int send_callback; int recv_callback; } ;
struct TYPE_13__ {TYPE_4__ ws_callbacks; int ws_ctx; int cb; void* data; } ;
typedef TYPE_2__ h2o_websocket_conn_t ;
struct TYPE_12__ {int status; char* reason; int headers; } ;
struct TYPE_14__ {int version; TYPE_1__ res; int pool; } ;
typedef TYPE_3__ h2o_req_t ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_UPGRADE ;
 int assert (int) ;
 int create_accept_key (char*,char const*) ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 int h2o_add_header_by_str (int *,int *,int ,int ,int *,char*,int ) ;
 int h2o_http1_upgrade (TYPE_3__*,int *,int ,int ,TYPE_2__*) ;
 TYPE_2__* h2o_mem_alloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int on_complete ;
 int on_msg_callback ;
 int recv_callback ;
 int send_callback ;
 int strlen (char*) ;
 int wslay_event_context_server_init (int *,TYPE_4__*,TYPE_2__*) ;

h2o_websocket_conn_t *h2o_upgrade_to_websocket(h2o_req_t *req, const char *client_key, void *data, h2o_websocket_msg_callback cb)
{
    h2o_websocket_conn_t *conn = h2o_mem_alloc(sizeof(*conn));
    char accept_key[29];


    assert(req->version < 0x200);


    memset(conn, 0, sizeof(*conn));

    conn->ws_callbacks.recv_callback = recv_callback;
    conn->ws_callbacks.send_callback = send_callback;
    conn->ws_callbacks.on_msg_recv_callback = on_msg_callback;
    conn->data = data;
    conn->cb = cb;

    wslay_event_context_server_init(&conn->ws_ctx, &conn->ws_callbacks, conn);


    create_accept_key(accept_key, client_key);
    req->res.status = 101;
    req->res.reason = "Switching Protocols";
    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_UPGRADE, ((void*)0), H2O_STRLIT("websocket"));
    h2o_add_header_by_str(&req->pool, &req->res.headers, H2O_STRLIT("sec-websocket-accept"), 0, ((void*)0), accept_key,
                          strlen(accept_key));


    h2o_http1_upgrade(req, ((void*)0), 0, on_complete, conn);

    return conn;
}
