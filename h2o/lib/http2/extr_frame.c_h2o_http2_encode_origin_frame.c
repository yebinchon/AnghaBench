
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;
typedef int h2o_buffer_t ;


 int H2O_HTTP2_FRAME_TYPE_ORIGIN ;
 int * allocate_frame (int **,int ,int ,int ,int ) ;
 int memcpy (int *,int ,int ) ;

void h2o_http2_encode_origin_frame(h2o_buffer_t **buf, h2o_iovec_t payload)
{
    uint8_t *dst = allocate_frame(buf, payload.len, H2O_HTTP2_FRAME_TYPE_ORIGIN, 0, 0);
    memcpy(dst, payload.base, payload.len);
}
