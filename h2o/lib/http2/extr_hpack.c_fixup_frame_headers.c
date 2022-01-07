
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {size_t size; scalar_t__ bytes; } ;
typedef TYPE_1__ h2o_buffer_t ;


 int H2O_HTTP2_FRAME_FLAG_END_HEADERS ;
 size_t H2O_HTTP2_FRAME_HEADER_SIZE ;
 int H2O_HTTP2_FRAME_TYPE_CONTINUATION ;
 int h2o_buffer_reserve (TYPE_1__**,size_t) ;
 int h2o_http2_encode_frame_header (int *,size_t,int ,int,int ) ;
 int memmove (scalar_t__,scalar_t__,size_t) ;

__attribute__((used)) static void fixup_frame_headers(h2o_buffer_t **buf, size_t start_at, uint8_t type, uint32_t stream_id, size_t max_frame_size,
                                int flags)
{

    size_t payload_size = (*buf)->size - start_at - H2O_HTTP2_FRAME_HEADER_SIZE;
    if (payload_size <= max_frame_size) {
        h2o_http2_encode_frame_header((uint8_t *)((*buf)->bytes + start_at), payload_size, type,
                                      H2O_HTTP2_FRAME_FLAG_END_HEADERS | flags, stream_id);
        return;
    }


    size_t off;
    h2o_http2_encode_frame_header((uint8_t *)((*buf)->bytes + start_at), max_frame_size, type, flags, stream_id);
    off = start_at + H2O_HTTP2_FRAME_HEADER_SIZE + max_frame_size;
    while (1) {
        size_t left = (*buf)->size - off;
        h2o_buffer_reserve(buf, H2O_HTTP2_FRAME_HEADER_SIZE);
        memmove((*buf)->bytes + off + H2O_HTTP2_FRAME_HEADER_SIZE, (*buf)->bytes + off, left);
        (*buf)->size += H2O_HTTP2_FRAME_HEADER_SIZE;
        if (left <= max_frame_size) {
            h2o_http2_encode_frame_header((uint8_t *)((*buf)->bytes + off), left, H2O_HTTP2_FRAME_TYPE_CONTINUATION,
                                          H2O_HTTP2_FRAME_FLAG_END_HEADERS, stream_id);
            break;
        } else {
            h2o_http2_encode_frame_header((uint8_t *)((*buf)->bytes + off), max_frame_size, H2O_HTTP2_FRAME_TYPE_CONTINUATION, 0,
                                          stream_id);
            off += H2O_HTTP2_FRAME_HEADER_SIZE + max_frame_size;
        }
    }
}
