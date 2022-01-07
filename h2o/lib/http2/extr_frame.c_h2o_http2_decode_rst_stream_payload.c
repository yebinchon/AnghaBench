
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int error_code; } ;
typedef TYPE_1__ h2o_http2_rst_stream_payload_t ;
struct TYPE_6__ {scalar_t__ stream_id; int length; int payload; } ;
typedef TYPE_2__ h2o_http2_frame_t ;


 int H2O_HTTP2_ERROR_FRAME_SIZE ;
 int H2O_HTTP2_ERROR_PROTOCOL ;
 int h2o_http2_decode32u (int ) ;

int h2o_http2_decode_rst_stream_payload(h2o_http2_rst_stream_payload_t *payload, const h2o_http2_frame_t *frame,
                                        const char **err_desc)
{
    if (frame->stream_id == 0) {
        *err_desc = "invalid stream id in RST_STREAM frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }
    if (frame->length != sizeof(payload->error_code)) {
        *err_desc = "invalid RST_STREAM frame";
        return H2O_HTTP2_ERROR_FRAME_SIZE;
    }

    payload->error_code = h2o_http2_decode32u(frame->payload);
    return 0;
}
