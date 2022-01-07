
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_http3_server_stream_t {TYPE_2__* quic; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ h2o_http3_read_frame_t ;
struct TYPE_6__ {int sendstate; int recvstate; } ;


 int H2O_HTTP3_ERROR_FRAME_UNEXPECTED ;



 int H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT ;
 int H2O_HTTP3_STREAM_TYPE_REQUEST ;
 int h2o_http3_read_frame (TYPE_1__*,int ,int ,int const**,int const*,char const**) ;
 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_request_stop (TYPE_2__*,int ) ;
 int quicly_reset_stream (TYPE_2__*,int ) ;
 int quicly_sendstate_is_open (int *) ;
 int set_state (struct st_h2o_http3_server_stream_t*,int ) ;

int handle_input_post_trailers(struct st_h2o_http3_server_stream_t *stream, const uint8_t **src, const uint8_t *src_end,
                               const char **err_desc)
{
    h2o_http3_read_frame_t frame;
    int ret;


    if ((ret = h2o_http3_read_frame(&frame, 0, H2O_HTTP3_STREAM_TYPE_REQUEST, src, src_end, err_desc)) != 0)
        return ret;
    switch (frame.type) {
    case 128:
    case 129:
    case 130:
        if (!quicly_recvstate_transfer_complete(&stream->quic->recvstate))
            quicly_request_stop(stream->quic, H2O_HTTP3_ERROR_FRAME_UNEXPECTED);
        if (quicly_sendstate_is_open(&stream->quic->sendstate))
            quicly_reset_stream(stream->quic, H2O_HTTP3_ERROR_FRAME_UNEXPECTED);
        set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT);
        return 0;
    default:
        break;
    }

    return 0;
}
