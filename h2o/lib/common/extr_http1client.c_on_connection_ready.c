
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_14__ ;
typedef struct TYPE_24__ TYPE_12__ ;


struct TYPE_29__ {int request_begin_at; } ;
struct TYPE_25__ {int cb; } ;
struct TYPE_27__ {size_t header; size_t body; int total; } ;
struct TYPE_26__ {int * on_head; int * (* on_connect ) (TYPE_8__*,int *,TYPE_6__*,int *,int const**,size_t*,TYPE_6__*,int **,TYPE_7__*,int ) ;} ;
struct TYPE_33__ {TYPE_5__* ctx; TYPE_4__ timings; TYPE_14__ _timeout; TYPE_2__ bytes_written; TYPE_1__ _cb; } ;
struct TYPE_28__ {int req; } ;
struct st_h2o_http1client_t {TYPE_12__* sock; TYPE_8__ super; TYPE_3__ state; int _is_chunked; int _body_buf; int * proceed_req; int _method_is_head; int _origin; } ;
typedef int h2o_url_t ;
struct TYPE_31__ {size_t len; int * base; } ;
typedef TYPE_6__ h2o_iovec_t ;
struct TYPE_32__ {int* member_1; int * chunked; int * connection_header; TYPE_6__* proxy_protocol; TYPE_6__* member_2; TYPE_6__* member_0; } ;
typedef TYPE_7__ h2o_httpclient_properties_t ;
typedef int h2o_header_t ;
struct TYPE_30__ {int loop; int io_timeout; } ;
struct TYPE_24__ {int bytes_written; } ;


 int H2O_STRLIT (char*) ;
 int STREAM_STATE_BODY ;
 int assert (int ) ;
 TYPE_6__ build_request (struct st_h2o_http1client_t*,TYPE_6__,int ,int ,int *,size_t) ;
 int close_client (struct st_h2o_http1client_t*) ;
 scalar_t__ encode_chunk (struct st_h2o_http1client_t*,TYPE_6__*,TYPE_6__,size_t*) ;
 int h2o_buffer_init (int *,int *) ;
 int h2o_buffer_try_append (int *,int *,size_t) ;
 int h2o_gettimeofday (int ) ;
 int h2o_httpclient_error_internal ;
 TYPE_6__ h2o_iovec_init (int *,int ) ;
 int h2o_memis (int *,size_t,int ) ;
 int h2o_socket_buffer_prototype ;
 int h2o_socket_read_start (TYPE_12__*,int ) ;
 int h2o_socket_write (TYPE_12__*,TYPE_6__*,size_t,int (*) (TYPE_12__*,int )) ;
 int h2o_timer_link (int ,int ,TYPE_14__*) ;
 int on_head ;
 int on_req_body_done (TYPE_12__*,int ) ;
 int on_send_timeout ;
 int on_whole_request_sent (TYPE_12__*,int ) ;
 int * stub1 (TYPE_8__*,int *,TYPE_6__*,int *,int const**,size_t*,TYPE_6__*,int **,TYPE_7__*,int ) ;

__attribute__((used)) static void on_connection_ready(struct st_h2o_http1client_t *client)
{
    h2o_iovec_t proxy_protocol = h2o_iovec_init(((void*)0), 0);
    int chunked = 0;
    h2o_iovec_t connection_header = h2o_iovec_init(((void*)0), 0);
    h2o_httpclient_properties_t props = {
        &proxy_protocol,
        &chunked,
        &connection_header,
    };
    h2o_iovec_t method;
    h2o_url_t url;
    h2o_header_t *headers;
    size_t num_headers;
    h2o_iovec_t body;

    client->super._cb.on_head = client->super._cb.on_connect(&client->super, ((void*)0), &method, &url, (const h2o_header_t **)&headers,
                                                             &num_headers, &body, &client->proceed_req, &props, client->_origin);

    if (client->super._cb.on_head == ((void*)0)) {
        close_client(client);
        return;
    }

    h2o_iovec_t reqbufs[3];
    size_t reqbufcnt = 0;
    if (props.proxy_protocol->base != ((void*)0))
        reqbufs[reqbufcnt++] = *props.proxy_protocol;
    h2o_iovec_t header = build_request(client, method, url, *props.connection_header, headers, num_headers);
    reqbufs[reqbufcnt++] = header;
    client->super.bytes_written.header = header.len;

    client->_is_chunked = *props.chunked;
    client->_method_is_head = h2o_memis(method.base, method.len, H2O_STRLIT("HEAD"));

    if (client->proceed_req != ((void*)0)) {
        if (body.base != ((void*)0)) {
            h2o_buffer_init(&client->_body_buf, &h2o_socket_buffer_prototype);
            if (!h2o_buffer_try_append(&client->_body_buf, body.base, body.len)) {
                on_whole_request_sent(client->sock, h2o_httpclient_error_internal);
                return;
            }
        }
        h2o_socket_write(client->sock, reqbufs, reqbufcnt, on_req_body_done);
    } else {
        if (client->_is_chunked) {
            assert(body.base != ((void*)0));
            size_t bytes;
            reqbufcnt += encode_chunk(client, reqbufs + reqbufcnt, body, &bytes);
            client->super.bytes_written.body = bytes;
        } else if (body.base != ((void*)0)) {
            reqbufs[reqbufcnt++] = body;
            client->super.bytes_written.body = body.len;
        }
        h2o_socket_write(client->sock, reqbufs, reqbufcnt, on_whole_request_sent);
    }
    client->super.bytes_written.total = client->sock->bytes_written;


    client->super._timeout.cb = on_send_timeout;
    h2o_timer_link(client->super.ctx->loop, client->super.ctx->io_timeout, &client->super._timeout);

    client->state.req = STREAM_STATE_BODY;
    client->super.timings.request_begin_at = h2o_gettimeofday(client->super.ctx->loop);

    h2o_socket_read_start(client->sock, on_head);
}
