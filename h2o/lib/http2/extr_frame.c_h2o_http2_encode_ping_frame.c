
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int h2o_buffer_t ;


 int H2O_HTTP2_FRAME_FLAG_ACK ;
 int H2O_HTTP2_FRAME_TYPE_PING ;
 int * allocate_frame (int **,int,int ,int ,int ) ;
 int memcpy (int *,int const*,int) ;

void h2o_http2_encode_ping_frame(h2o_buffer_t **buf, int is_ack, const uint8_t *data)
{
    uint8_t *dst = allocate_frame(buf, 8, H2O_HTTP2_FRAME_TYPE_PING, is_ack ? H2O_HTTP2_FRAME_FLAG_ACK : 0, 0);
    memcpy(dst, data, 8);
    dst += 8;
}
