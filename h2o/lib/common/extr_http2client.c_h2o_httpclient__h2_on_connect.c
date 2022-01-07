
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ctx; int connpool; int _timeout; } ;
struct st_h2o_http2client_stream_t {TYPE_1__ super; } ;
struct TYPE_9__ {TYPE_2__* ctx; int sock; } ;
struct st_h2o_http2client_conn_t {int io_timeout; TYPE_3__ super; } ;
typedef int h2o_url_t ;
struct TYPE_10__ {struct st_h2o_http2client_conn_t* data; } ;
typedef TYPE_4__ h2o_socket_t ;
typedef int h2o_httpclient_t ;
struct TYPE_8__ {int io_timeout; int loop; } ;


 int assert (int) ;
 struct st_h2o_http2client_conn_t* create_connection (int ,TYPE_4__*,int *,int ) ;
 int h2o_socket_read_start (int ,int ) ;
 int h2o_timer_is_linked (int *) ;
 int h2o_timer_link (int ,int ,int *) ;
 int on_connection_ready (struct st_h2o_http2client_stream_t*,struct st_h2o_http2client_conn_t*) ;
 int on_read ;
 int send_client_preface (struct st_h2o_http2client_conn_t*,int ) ;
 int setup_stream (struct st_h2o_http2client_stream_t*) ;

void h2o_httpclient__h2_on_connect(h2o_httpclient_t *_client, h2o_socket_t *sock, h2o_url_t *origin)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;

    assert(!h2o_timer_is_linked(&stream->super._timeout));

    struct st_h2o_http2client_conn_t *conn = sock->data;
    if (conn == ((void*)0)) {
        conn = create_connection(stream->super.ctx, sock, origin, stream->super.connpool);
        sock->data = conn;

        send_client_preface(conn, stream->super.ctx);
        h2o_socket_read_start(conn->super.sock, on_read);
    }

    setup_stream(stream);

    if (!h2o_timer_is_linked(&conn->io_timeout))
        h2o_timer_link(conn->super.ctx->loop, conn->super.ctx->io_timeout, &conn->io_timeout);
    on_connection_ready(stream, conn);
}
