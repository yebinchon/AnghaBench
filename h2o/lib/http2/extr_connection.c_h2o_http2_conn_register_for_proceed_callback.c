
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ state; int _link; int _scheduler; int output_window; } ;
typedef TYPE_2__ h2o_http2_stream_t ;
struct TYPE_8__ {int streams_to_proceed; } ;
struct TYPE_10__ {TYPE_1__ _write; } ;
typedef TYPE_3__ h2o_http2_conn_t ;


 scalar_t__ H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL ;
 int assert (int) ;
 int h2o_http2_conn_request_write (TYPE_3__*) ;
 int h2o_http2_scheduler_activate (int *) ;
 scalar_t__ h2o_http2_stream_has_pending_data (TYPE_2__*) ;
 scalar_t__ h2o_http2_window_get_avail (int *) ;
 int h2o_linklist_insert (int *,int *) ;
 int h2o_linklist_is_linked (int *) ;

void h2o_http2_conn_register_for_proceed_callback(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    h2o_http2_conn_request_write(conn);

    if (h2o_http2_stream_has_pending_data(stream) || stream->state >= H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL) {
        if (h2o_http2_window_get_avail(&stream->output_window) > 0) {
            assert(!h2o_linklist_is_linked(&stream->_link));
            h2o_http2_scheduler_activate(&stream->_scheduler);
        }
    } else {
        h2o_linklist_insert(&conn->_write.streams_to_proceed, &stream->_link);
    }
}
