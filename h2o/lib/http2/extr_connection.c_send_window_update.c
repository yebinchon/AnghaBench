
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef int h2o_http2_window_t ;
struct TYPE_5__ {int buf; } ;
struct TYPE_6__ {TYPE_1__ _write; } ;
typedef TYPE_2__ h2o_http2_conn_t ;


 size_t INT32_MAX ;
 int assert (int) ;
 int h2o_http2_conn_request_write (TYPE_2__*) ;
 int h2o_http2_encode_window_update_frame (int *,int ,int ) ;
 int h2o_http2_window_update (int *,size_t) ;

__attribute__((used)) static void send_window_update(h2o_http2_conn_t *conn, uint32_t stream_id, h2o_http2_window_t *window, size_t delta)
{
    assert(delta <= INT32_MAX);
    h2o_http2_encode_window_update_frame(&conn->_write.buf, stream_id, (int32_t)delta);
    h2o_http2_conn_request_write(conn);
    h2o_http2_window_update(window, delta);
}
