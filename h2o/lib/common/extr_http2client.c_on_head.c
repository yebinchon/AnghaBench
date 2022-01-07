
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int res; } ;
struct TYPE_10__ {int * on_body; int * (* on_head ) (TYPE_5__*,int *,int,int,int ,int ,int ,int ) ;} ;
struct TYPE_12__ {scalar_t__ (* informational_cb ) (TYPE_5__*,int ,int,int ,int ,int ) ;TYPE_3__ _cb; int pool; } ;
struct TYPE_13__ {int size; int entries; } ;
struct TYPE_9__ {int status; TYPE_7__ headers; } ;
struct st_h2o_http2client_stream_t {int stream_id; TYPE_4__ state; TYPE_5__ super; TYPE_2__ input; } ;
struct TYPE_8__ {int header_table; } ;
struct st_h2o_http2client_conn_t {TYPE_1__ input; } ;


 int H2O_HTTP2_ERROR_CANCEL ;
 int H2O_HTTP2_ERROR_INTERNAL ;
 int H2O_HTTP2_ERROR_INVALID_HEADER_CHAR ;
 int H2O_HTTP2_ERROR_PROTOCOL ;
 int STREAM_STATE_BODY ;
 int assert (int) ;
 int call_callback_with_error (struct st_h2o_http2client_stream_t*,int ) ;
 int close_response (struct st_h2o_http2client_stream_t*) ;
 int close_stream (struct st_h2o_http2client_stream_t*) ;
 int h2o_hpack_decode_header ;
 int h2o_hpack_parse_response (int ,int ,int *,int*,TYPE_7__*,int const*,size_t,char const**) ;
 int h2o_httpclient_error_http2_protocol_violation ;
 int * h2o_httpclient_error_is_eos ;
 int h2o_iovec_init (int *,int ) ;
 int stream_send_error (struct st_h2o_http2client_conn_t*,int ,int) ;
 scalar_t__ stub1 (TYPE_5__*,int ,int,int ,int ,int ) ;
 int * stub2 (TYPE_5__*,int *,int,int,int ,int ,int ,int ) ;

__attribute__((used)) static int on_head(struct st_h2o_http2client_conn_t *conn, struct st_h2o_http2client_stream_t *stream, const uint8_t *src,
                   size_t len, const char **err_desc, int is_end_stream)
{
    int ret;



    if ((ret = h2o_hpack_parse_response(stream->super.pool, h2o_hpack_decode_header, &conn->input.header_table,
                                        &stream->input.status, &stream->input.headers, src, len, err_desc)) != 0) {
        if (ret == H2O_HTTP2_ERROR_INVALID_HEADER_CHAR) {
            ret = H2O_HTTP2_ERROR_PROTOCOL;
            goto Failed;
        }
        return ret;
    }

    if (100 <= stream->input.status && stream->input.status <= 199) {
        if (stream->input.status == 101) {
            ret = H2O_HTTP2_ERROR_PROTOCOL;
            goto Failed;
        }
        if (stream->super.informational_cb != ((void*)0) &&
            stream->super.informational_cb(&stream->super, 0, stream->input.status, h2o_iovec_init(((void*)0), 0),
                                           stream->input.headers.entries, stream->input.headers.size) != 0) {
            ret = H2O_HTTP2_ERROR_INTERNAL;
            goto SendRSTStream;
        }
        return 0;
    }

    stream->super._cb.on_body =
        stream->super._cb.on_head(&stream->super, is_end_stream ? h2o_httpclient_error_is_eos : ((void*)0), 0x200, stream->input.status,
                                  h2o_iovec_init(((void*)0), 0), stream->input.headers.entries, stream->input.headers.size, 0);

    if (is_end_stream) {
        close_response(stream);
        return 0;
    }
    if (stream->super._cb.on_body == ((void*)0)) {






        ret = H2O_HTTP2_ERROR_CANCEL;
        goto SendRSTStream;
    }

    stream->state.res = STREAM_STATE_BODY;

    return 0;

Failed:
    assert(ret == H2O_HTTP2_ERROR_PROTOCOL);
    call_callback_with_error(stream, h2o_httpclient_error_http2_protocol_violation);
SendRSTStream:
    stream_send_error(conn, stream->stream_id, ret);
    close_stream(stream);
    return 0;
}
