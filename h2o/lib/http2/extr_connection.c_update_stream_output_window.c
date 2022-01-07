
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ state; int _scheduler; int _link; int output_window; } ;
typedef TYPE_1__ h2o_http2_stream_t ;


 scalar_t__ H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL ;
 int assert (int) ;
 int h2o_http2_scheduler_activate (int *) ;
 scalar_t__ h2o_http2_stream_has_pending_data (TYPE_1__*) ;
 scalar_t__ h2o_http2_window_get_avail (int *) ;
 scalar_t__ h2o_http2_window_update (int *,scalar_t__) ;
 int h2o_linklist_is_linked (int *) ;

__attribute__((used)) static int update_stream_output_window(h2o_http2_stream_t *stream, ssize_t delta)
{
    ssize_t cur = h2o_http2_window_get_avail(&stream->output_window);
    if (h2o_http2_window_update(&stream->output_window, delta) != 0)
        return -1;
    if (cur <= 0 && h2o_http2_window_get_avail(&stream->output_window) > 0 &&
        (h2o_http2_stream_has_pending_data(stream) || stream->state == H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL)) {
        assert(!h2o_linklist_is_linked(&stream->_link));
        h2o_http2_scheduler_activate(&stream->_scheduler);
    }
    return 0;
}
