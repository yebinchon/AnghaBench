
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_http2_priority_t ;
struct TYPE_3__ {scalar_t__ stream_id; int length; int payload; } ;
typedef TYPE_1__ h2o_http2_frame_t ;


 int H2O_HTTP2_ERROR_FRAME_SIZE ;
 int H2O_HTTP2_ERROR_PROTOCOL ;
 int decode_priority (int *,int ) ;

int h2o_http2_decode_priority_payload(h2o_http2_priority_t *payload, const h2o_http2_frame_t *frame, const char **err_desc)
{
    if (frame->stream_id == 0) {
        *err_desc = "invalid stream id in PRIORITY frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }
    if (frame->length != 5) {
        *err_desc = "invalid PRIORITY frame";
        return H2O_HTTP2_ERROR_FRAME_SIZE;
    }

    decode_priority(payload, frame->payload);
    return 0;
}
