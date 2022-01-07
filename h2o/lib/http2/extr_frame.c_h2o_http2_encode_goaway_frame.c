
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;
typedef int h2o_buffer_t ;


 int H2O_HTTP2_FRAME_TYPE_GOAWAY ;
 int * allocate_frame (int **,int ,int ,int ,int ) ;
 int * h2o_http2_encode32u (int *,int ) ;
 int h2o_memcpy (int *,int ,int ) ;

void h2o_http2_encode_goaway_frame(h2o_buffer_t **buf, uint32_t last_stream_id, int errnum, h2o_iovec_t additional_data)
{
    uint8_t *dst = allocate_frame(buf, 8 + additional_data.len, H2O_HTTP2_FRAME_TYPE_GOAWAY, 0, 0);
    dst = h2o_http2_encode32u(dst, last_stream_id);
    dst = h2o_http2_encode32u(dst, (uint32_t)-errnum);
    h2o_memcpy(dst, additional_data.base, additional_data.len);
}
