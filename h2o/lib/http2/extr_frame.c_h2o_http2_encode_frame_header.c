
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int h2o_fatal (char*) ;
 void** h2o_http2_encode24u (void**,int ) ;
 void** h2o_http2_encode32u (void**,int ) ;

uint8_t *h2o_http2_encode_frame_header(uint8_t *dst, size_t length, uint8_t type, uint8_t flags, int32_t stream_id)
{
    if (length > 0xffffff)
        h2o_fatal("invalid length");

    dst = h2o_http2_encode24u(dst, (uint32_t)length);
    *dst++ = type;
    *dst++ = flags;
    dst = h2o_http2_encode32u(dst, stream_id);

    return dst;
}
