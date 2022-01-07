
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int h2o_buffer_t ;


 int H2O_HTTP2_FRAME_TYPE_RST_STREAM ;
 int * allocate_frame (int **,int,int ,int ,int ) ;
 int * h2o_http2_encode32u (int *,int) ;

void h2o_http2__encode_rst_stream_frame(h2o_buffer_t **buf, uint32_t stream_id, int errnum)
{
    uint8_t *dst = allocate_frame(buf, 4, H2O_HTTP2_FRAME_TYPE_RST_STREAM, 0, stream_id);
    dst = h2o_http2_encode32u(dst, errnum);
}
