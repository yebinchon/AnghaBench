
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int path; int authority; int scheme; int method; } ;
struct TYPE_10__ {int headers; TYPE_1__ input; int pool; } ;
struct TYPE_11__ {TYPE_2__ req; } ;
typedef TYPE_3__ h2o_http2_stream_t ;
struct TYPE_12__ {int _input_header_table; } ;
typedef TYPE_4__ h2o_http2_conn_t ;


 int h2o_hpack_decode_header ;
 int h2o_hpack_parse_request (int *,int ,int *,int *,int *,int *,int *,int *,int *,size_t*,int *,int const*,size_t,char const**) ;
 int h2o_iovec_init (int *,int ) ;
 int handle_request_body_chunk (TYPE_4__*,TYPE_3__*,int ,int) ;

__attribute__((used)) static int handle_trailing_headers(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream, const uint8_t *src, size_t len,
                                   const char **err_desc)
{
    size_t dummy_content_length;
    int ret;

    if ((ret = h2o_hpack_parse_request(&stream->req.pool, h2o_hpack_decode_header, &conn->_input_header_table,
                                       &stream->req.input.method, &stream->req.input.scheme, &stream->req.input.authority,
                                       &stream->req.input.path, &stream->req.headers, ((void*)0), &dummy_content_length, ((void*)0), src, len,
                                       err_desc)) != 0)
        return ret;
    handle_request_body_chunk(conn, stream, h2o_iovec_init(((void*)0), 0), 1);
    return 0;
}
