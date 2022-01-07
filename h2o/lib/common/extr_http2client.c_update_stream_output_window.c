
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sending_link; TYPE_1__* buf; int window; } ;
struct st_h2o_http2client_stream_t {TYPE_4__ output; TYPE_3__* conn; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int sending_streams; } ;
struct TYPE_7__ {TYPE_2__ output; } ;
struct TYPE_5__ {scalar_t__ size; } ;


 int assert (int) ;
 scalar_t__ h2o_http2_window_get_avail (int *) ;
 scalar_t__ h2o_http2_window_update (int *,scalar_t__) ;
 int h2o_linklist_insert (int *,int *) ;
 int h2o_linklist_is_linked (int *) ;

__attribute__((used)) static int update_stream_output_window(struct st_h2o_http2client_stream_t *stream, ssize_t delta)
{
    ssize_t before = h2o_http2_window_get_avail(&stream->output.window);
    if (h2o_http2_window_update(&stream->output.window, delta) != 0)
        return -1;
    ssize_t after = h2o_http2_window_get_avail(&stream->output.window);
    if (before <= 0 && 0 < after && stream->output.buf != ((void*)0) && stream->output.buf->size != 0) {
        assert(!h2o_linklist_is_linked(&stream->output.sending_link));
        h2o_linklist_insert(&stream->conn->output.sending_streams, &stream->output.sending_link);
    }
    return 0;
}
