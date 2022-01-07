
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ bytes_left_in_data_frame; int handle_input; } ;
struct TYPE_7__ {scalar_t__ content_length; scalar_t__ req_body_bytes_received; } ;
struct st_h2o_http3_server_stream_t {TYPE_2__ recvbuf; TYPE_4__* quic; TYPE_1__ req; } ;
struct TYPE_9__ {int type; scalar_t__ length; } ;
typedef TYPE_3__ h2o_http3_read_frame_t ;
struct TYPE_10__ {int sendstate; int recvstate; } ;


 int H2O_HTTP3_ERROR_EARLY_RESPONSE ;
 int H2O_HTTP3_ERROR_FRAME_UNEXPECTED ;
 int H2O_HTTP3_ERROR_GENERAL_PROTOCOL ;



 int H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT ;
 int H2O_HTTP3_STREAM_TYPE_REQUEST ;
 scalar_t__ SIZE_MAX ;
 int h2o_http3_read_frame (TYPE_3__*,int ,int ,int const**,int const*,char const**) ;
 int handle_input_expect_data_payload ;
 int handle_input_post_trailers ;
 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_request_stop (TYPE_4__*,int ) ;
 int quicly_reset_stream (TYPE_4__*,int ) ;
 int quicly_sendstate_is_open (int *) ;
 int set_state (struct st_h2o_http3_server_stream_t*,int ) ;

int handle_input_expect_data(struct st_h2o_http3_server_stream_t *stream, const uint8_t **src, const uint8_t *src_end,
                             const char **err_desc)
{
    h2o_http3_read_frame_t frame;
    int ret;


    if ((ret = h2o_http3_read_frame(&frame, 0, H2O_HTTP3_STREAM_TYPE_REQUEST, src, src_end, err_desc)) != 0)
        return ret;
    switch (frame.type) {
    case 128:
        return H2O_HTTP3_ERROR_FRAME_UNEXPECTED;
    case 129:
        stream->recvbuf.handle_input = handle_input_post_trailers;
        return 0;
    case 130:
        if (stream->req.content_length != SIZE_MAX &&
            stream->req.content_length - stream->req.req_body_bytes_received < frame.length) {
            if (!quicly_recvstate_transfer_complete(&stream->quic->recvstate))
                quicly_request_stop(stream->quic, H2O_HTTP3_ERROR_EARLY_RESPONSE);


            if (!quicly_sendstate_is_open(&stream->quic->sendstate))
                quicly_reset_stream(stream->quic, H2O_HTTP3_ERROR_GENERAL_PROTOCOL);
            set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT);
            return 0;
        }
        break;
    default:
        return 0;
    }


    if (frame.length != 0) {
        stream->recvbuf.handle_input = handle_input_expect_data_payload;
        stream->recvbuf.bytes_left_in_data_frame = frame.length;
    }

    return 0;
}
