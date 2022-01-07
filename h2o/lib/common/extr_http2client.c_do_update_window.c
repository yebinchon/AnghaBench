
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int window; TYPE_2__* body; } ;
struct TYPE_4__ {int ctx; } ;
struct st_h2o_http2client_stream_t {TYPE_3__ input; int stream_id; int conn; TYPE_1__ super; } ;
typedef int h2o_httpclient_t ;
struct TYPE_5__ {size_t size; } ;


 int assert (int) ;
 int enqueue_window_update (int ,int ,int *,size_t) ;
 size_t get_max_buffer_size (int ) ;

__attribute__((used)) static void do_update_window(h2o_httpclient_t *_client)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;
    size_t max = get_max_buffer_size(stream->super.ctx);
    size_t bufsize = stream->input.body->size;
    assert(bufsize <= max);
    enqueue_window_update(stream->conn, stream->stream_id, &stream->input.window, max - bufsize);
}
