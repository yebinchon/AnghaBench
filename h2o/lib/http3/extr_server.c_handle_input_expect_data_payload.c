
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {size_t bytes_left_in_data_frame; int handle_input; } ;
struct TYPE_5__ {size_t req_body_bytes_received; int entity; } ;
struct st_h2o_http3_server_stream_t {TYPE_2__ recvbuf; TYPE_1__ req; TYPE_3__* req_body; } ;
struct TYPE_7__ {int size; int bytes; } ;


 int H2O_HTTP3_ERROR_INTERNAL ;
 int h2o_buffer_init (TYPE_3__**,int *) ;
 int h2o_buffer_try_append (TYPE_3__**,int const*,size_t) ;
 int h2o_iovec_init (int ,int ) ;
 int h2o_socket_buffer_prototype ;
 int handle_input_expect_data ;

__attribute__((used)) static int handle_input_expect_data_payload(struct st_h2o_http3_server_stream_t *stream, const uint8_t **src,
                                            const uint8_t *src_end, const char **err_desc)
{
    size_t bytes_avail = src_end - *src;


    if (bytes_avail > stream->recvbuf.bytes_left_in_data_frame)
        bytes_avail = stream->recvbuf.bytes_left_in_data_frame;
    if (stream->req_body == ((void*)0))
        h2o_buffer_init(&stream->req_body, &h2o_socket_buffer_prototype);
    if (!h2o_buffer_try_append(&stream->req_body, *src, bytes_avail))
        return H2O_HTTP3_ERROR_INTERNAL;
    stream->req.entity = h2o_iovec_init(stream->req_body->bytes, stream->req_body->size);
    stream->req.req_body_bytes_received += bytes_avail;
    stream->recvbuf.bytes_left_in_data_frame -= bytes_avail;
    *src += bytes_avail;

    if (stream->recvbuf.bytes_left_in_data_frame == 0)
        stream->recvbuf.handle_input = handle_input_expect_data;

    return 0;
}
