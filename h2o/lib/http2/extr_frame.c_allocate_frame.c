
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_6__ {scalar_t__ base; } ;
typedef TYPE_1__ h2o_iovec_t ;
struct TYPE_7__ {int size; } ;
typedef TYPE_2__ h2o_buffer_t ;


 scalar_t__ H2O_HTTP2_FRAME_HEADER_SIZE ;
 TYPE_1__ h2o_buffer_reserve (TYPE_2__**,scalar_t__) ;
 int * h2o_http2_encode_frame_header (int *,size_t,int ,int ,int ) ;

__attribute__((used)) static uint8_t *allocate_frame(h2o_buffer_t **buf, size_t length, uint8_t type, uint8_t flags, int32_t stream_id)
{
    h2o_iovec_t alloced = h2o_buffer_reserve(buf, H2O_HTTP2_FRAME_HEADER_SIZE + length);
    (*buf)->size += H2O_HTTP2_FRAME_HEADER_SIZE + length;
    return h2o_http2_encode_frame_header((uint8_t *)alloced.base, length, type, flags, stream_id);
}
