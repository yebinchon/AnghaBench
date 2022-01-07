
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int window; TYPE_7__* buf; } ;
struct TYPE_8__ {scalar_t__ done; int * proceed_req; } ;
struct st_h2o_http2client_stream_t {TYPE_4__ output; TYPE_3__* conn; int stream_id; TYPE_1__ streaming; } ;
struct TYPE_14__ {size_t size; int bytes; } ;
struct TYPE_13__ {int size; } ;
struct TYPE_12__ {char* base; } ;
struct TYPE_9__ {int window; TYPE_6__* buf; } ;
struct TYPE_10__ {TYPE_2__ output; } ;


 int H2O_HTTP2_FRAME_FLAG_END_STREAM ;
 int H2O_HTTP2_FRAME_HEADER_SIZE ;
 int H2O_HTTP2_FRAME_TYPE_DATA ;
 size_t calc_max_payload_size (struct st_h2o_http2client_stream_t*) ;
 int h2o_buffer_consume (TYPE_7__**,size_t) ;
 TYPE_5__ h2o_buffer_reserve (TYPE_6__**,int) ;
 int h2o_http2_encode_frame_header (void*,size_t,int ,int ,int ) ;
 int h2o_http2_window_consume_window (int *,size_t) ;
 int h2o_memcpy (char*,int ,size_t) ;
 size_t sz_min (size_t,size_t) ;

__attribute__((used)) static size_t stream_emit_pending_data(struct st_h2o_http2client_stream_t *stream)
{
    size_t max_payload_size = calc_max_payload_size(stream);
    size_t payload_size = sz_min(max_payload_size, stream->output.buf->size);
    if (payload_size == 0)
        return 0;
    char *dst = h2o_buffer_reserve(&stream->conn->output.buf, H2O_HTTP2_FRAME_HEADER_SIZE + payload_size).base;
    int end_stream = (stream->streaming.proceed_req == ((void*)0) || stream->streaming.done) && payload_size == stream->output.buf->size;
    h2o_http2_encode_frame_header((void *)dst, stream->output.buf->size, H2O_HTTP2_FRAME_TYPE_DATA,
                                  end_stream ? H2O_HTTP2_FRAME_FLAG_END_STREAM : 0, stream->stream_id);
    h2o_memcpy(dst + H2O_HTTP2_FRAME_HEADER_SIZE, stream->output.buf->bytes, payload_size);
    stream->conn->output.buf->size += H2O_HTTP2_FRAME_HEADER_SIZE + payload_size;
    h2o_buffer_consume(&stream->output.buf, payload_size);

    h2o_http2_window_consume_window(&stream->conn->output.window, payload_size);
    h2o_http2_window_consume_window(&stream->output.window, payload_size);

    return payload_size;
}
