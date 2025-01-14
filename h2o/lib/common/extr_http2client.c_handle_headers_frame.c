
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ res; } ;
struct TYPE_14__ {int _timeout; } ;
struct st_h2o_http2client_stream_t {TYPE_3__ state; TYPE_2__ super; } ;
struct TYPE_16__ {TYPE_10__* headers_unparsed; void* read_frame; } ;
struct st_h2o_http2client_conn_t {TYPE_4__ input; } ;
struct TYPE_13__ {scalar_t__ dependency; } ;
struct TYPE_17__ {int headers_len; int headers; TYPE_1__ priority; } ;
typedef TYPE_5__ h2o_http2_headers_payload_t ;
struct TYPE_18__ {int stream_id; int flags; } ;
typedef TYPE_6__ h2o_http2_frame_t ;
struct TYPE_12__ {int size; int bytes; } ;


 int H2O_HTTP2_ERROR_PROTOCOL ;
 int H2O_HTTP2_ERROR_STREAM_CLOSED ;
 int H2O_HTTP2_FRAME_FLAG_END_HEADERS ;
 int H2O_HTTP2_FRAME_FLAG_END_STREAM ;
 scalar_t__ STREAM_STATE_BODY ;
 void* expect_continuation_of_headers ;
 struct st_h2o_http2client_stream_t* get_stream (struct st_h2o_http2client_conn_t*,scalar_t__) ;
 int h2o_buffer_init (TYPE_10__**,int *) ;
 int h2o_buffer_reserve (TYPE_10__**,int ) ;
 int h2o_http2_decode_headers_payload (TYPE_5__*,TYPE_6__*,char const**) ;
 int h2o_socket_buffer_prototype ;
 int h2o_timer_unlink (int *) ;
 int memcpy (int ,int ,int ) ;
 int on_head (struct st_h2o_http2client_conn_t*,struct st_h2o_http2client_stream_t*,int ,int ,char const**,int) ;

__attribute__((used)) static int handle_headers_frame(struct st_h2o_http2client_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_headers_payload_t payload;
    struct st_h2o_http2client_stream_t *stream;
    int ret;


    if ((ret = h2o_http2_decode_headers_payload(&payload, frame, err_desc)) != 0)
        return ret;
    if ((frame->stream_id & 1) == 0) {
        *err_desc = "invalid stream id in HEADERS frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    if (frame->stream_id == payload.priority.dependency) {
        *err_desc = "stream cannot depend on itself";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    if ((stream = get_stream(conn, frame->stream_id)) == ((void*)0)) {
        *err_desc = "invalid stream id in HEADERS frame";
        return H2O_HTTP2_ERROR_STREAM_CLOSED;
    }

    h2o_timer_unlink(&stream->super._timeout);

    if (stream->state.res == STREAM_STATE_BODY) {

        if ((frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) == 0) {
            *err_desc = "trailing HEADERS frame MUST have END_STREAM flag set";
            return H2O_HTTP2_ERROR_PROTOCOL;
        }
        if ((frame->flags & H2O_HTTP2_FRAME_FLAG_END_HEADERS) == 0) {

            conn->input.read_frame = expect_continuation_of_headers;
        }
        return 0;
    }

    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_END_HEADERS) == 0) {

        conn->input.read_frame = expect_continuation_of_headers;
        h2o_buffer_init(&conn->input.headers_unparsed, &h2o_socket_buffer_prototype);
        h2o_buffer_reserve(&conn->input.headers_unparsed, payload.headers_len);
        memcpy(conn->input.headers_unparsed->bytes, payload.headers, payload.headers_len);
        conn->input.headers_unparsed->size = payload.headers_len;
        return 0;
    }

    int is_end_stream = (frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) != 0;


    return on_head(conn, stream, payload.headers, payload.headers_len, err_desc, is_end_stream);
}
