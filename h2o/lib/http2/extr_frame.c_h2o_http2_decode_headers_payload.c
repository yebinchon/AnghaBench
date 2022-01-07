
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int headers_len; int const* headers; int priority; } ;
typedef TYPE_1__ h2o_http2_headers_payload_t ;
struct TYPE_6__ {int length; scalar_t__ stream_id; int flags; int * payload; } ;
typedef TYPE_2__ h2o_http2_frame_t ;


 int H2O_HTTP2_ERROR_PROTOCOL ;
 int H2O_HTTP2_FRAME_FLAG_PADDED ;
 int H2O_HTTP2_FRAME_FLAG_PRIORITY ;
 int * decode_priority (int *,int const*) ;
 int h2o_http2_default_priority ;

int h2o_http2_decode_headers_payload(h2o_http2_headers_payload_t *payload, const h2o_http2_frame_t *frame, const char **err_desc)
{
    const uint8_t *src = frame->payload, *src_end = frame->payload + frame->length;

    if (frame->stream_id == 0) {
        *err_desc = "invalid stream id in HEADERS frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_PADDED) != 0) {
        uint32_t padlen;
        if (src == src_end) {
            *err_desc = "invalid HEADERS frame";
            return H2O_HTTP2_ERROR_PROTOCOL;
        }
        padlen = *src++;
        if (src_end - src < padlen) {
            *err_desc = "invalid HEADERS frame";
            return H2O_HTTP2_ERROR_PROTOCOL;
        }
        src_end -= padlen;
    }

    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_PRIORITY) != 0) {
        if (src_end - src < 5)
            return -1;
        src = decode_priority(&payload->priority, src);
    } else {
        payload->priority = h2o_http2_default_priority;
    }

    payload->headers = src;
    payload->headers_len = src_end - src;

    return 0;
}
