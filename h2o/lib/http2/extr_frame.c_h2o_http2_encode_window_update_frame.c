
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int h2o_buffer_t ;


 int H2O_HTTP2_FRAME_TYPE_WINDOW_UPDATE ;
 int * allocate_frame (int **,int,int ,int ,int ) ;
 int * h2o_http2_encode32u (int *,int ) ;

void h2o_http2_encode_window_update_frame(h2o_buffer_t **buf, uint32_t stream_id, int32_t window_size_increment)
{
    uint8_t *dst = allocate_frame(buf, 4, H2O_HTTP2_FRAME_TYPE_WINDOW_UPDATE, 0, stream_id);
    dst = h2o_http2_encode32u(dst, window_size_increment);
}
