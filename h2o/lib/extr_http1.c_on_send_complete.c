
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {int response_end_at; } ;
struct TYPE_11__ {int * proceed_req; scalar_t__ send_server_timing; scalar_t__ http1_is_persistent; TYPE_1__ timestamps; int * _ostr_top; } ;
struct TYPE_15__ {int state; int * chunked_buf; int super; } ;
struct TYPE_14__ {TYPE_2__* ctx; } ;
struct st_h2o_http1_conn_t {TYPE_10__ req; TYPE_4__ _ostr_final; int sock; TYPE_3__ super; } ;
struct TYPE_16__ {struct st_h2o_http1_conn_t* data; } ;
typedef TYPE_5__ h2o_socket_t ;
struct TYPE_17__ {scalar_t__ len; } ;
typedef TYPE_6__ h2o_iovec_t ;
struct TYPE_13__ {int loop; } ;


 int H2O_STRLIT (char*) ;
 int OSTREAM_STATE_DONE ;
 int assert (int) ;
 int cleanup_connection (struct st_h2o_http1_conn_t*) ;
 TYPE_6__ h2o_build_server_timing_trailer (TYPE_10__*,int ,int ) ;
 int h2o_gettimeofday (int ) ;
 int h2o_socket_write (int ,TYPE_6__*,int,int ) ;
 int on_send_complete_post_trailers ;

__attribute__((used)) static void on_send_complete(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1_conn_t *conn = sock->data;

    assert(conn->req._ostr_top == &conn->_ostr_final.super);

    conn->req.timestamps.response_end_at = h2o_gettimeofday(conn->super.ctx->loop);

    if (err != ((void*)0))
        conn->req.http1_is_persistent = 0;

    if (err == ((void*)0) && conn->req.send_server_timing && conn->_ostr_final.chunked_buf != ((void*)0)) {
        h2o_iovec_t trailer;
        if ((trailer = h2o_build_server_timing_trailer(&conn->req, H2O_STRLIT("server-timing: "), H2O_STRLIT("\r\n\r\n"))).len !=
            0) {
            h2o_socket_write(conn->sock, &trailer, 1, on_send_complete_post_trailers);
            return;
        }
    }



    conn->_ostr_final.state = OSTREAM_STATE_DONE;
    if (conn->req.proceed_req == ((void*)0))
        cleanup_connection(conn);
}
