
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_http3_server_stream_t {scalar_t__ state; int link; TYPE_2__* quic; } ;
struct TYPE_4__ {struct st_h2o_http3_server_stream_t* data; } ;
typedef TYPE_1__ quicly_stream_t ;
struct TYPE_5__ {int sendstate; } ;


 int H2O_HTTP3_ERROR_REQUEST_REJECTED ;
 int H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT ;
 scalar_t__ H2O_HTTP3_SERVER_STREAM_STATE_RECV_HEADERS ;
 int assert (int) ;
 scalar_t__ h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;
 int quicly_reset_stream (TYPE_2__*,int ) ;
 int quicly_sendstate_transfer_complete (int *) ;
 int set_state (struct st_h2o_http3_server_stream_t*,int ) ;

__attribute__((used)) static int on_receive_reset(quicly_stream_t *qs, int err)
{
    struct st_h2o_http3_server_stream_t *stream = qs->data;


    if (stream->state == H2O_HTTP3_SERVER_STREAM_STATE_RECV_HEADERS) {
        assert(!quicly_sendstate_transfer_complete(&stream->quic->sendstate));
        quicly_reset_stream(stream->quic, H2O_HTTP3_ERROR_REQUEST_REJECTED);
        if (h2o_linklist_is_linked(&stream->link))
            h2o_linklist_unlink(&stream->link);
        set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT);
    }

    return 0;
}
