
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int buf; } ;
struct st_h2o_http2client_conn_t {TYPE_1__ output; } ;
typedef int int32_t ;
typedef int h2o_http2_window_t ;


 size_t INT32_MAX ;
 int assert (int) ;
 int h2o_http2_encode_window_update_frame (int *,int ,int ) ;
 size_t h2o_http2_window_get_avail (int *) ;
 int h2o_http2_window_update (int *,int ) ;
 int request_write (struct st_h2o_http2client_conn_t*) ;

__attribute__((used)) static void enqueue_window_update(struct st_h2o_http2client_conn_t *conn, uint32_t stream_id, h2o_http2_window_t *window,
                                  size_t desired)
{
    assert(desired <= INT32_MAX);
    if (h2o_http2_window_get_avail(window) * 2 < desired) {
        int32_t delta = (int32_t)(desired - h2o_http2_window_get_avail(window));
        h2o_http2_encode_window_update_frame(&conn->output.buf, stream_id, delta);
        request_write(conn);
        h2o_http2_window_update(window, delta);
    }
}
