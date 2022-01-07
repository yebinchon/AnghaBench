
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sender_state; int error_code; } ;
struct TYPE_8__ {TYPE_1__ rst; } ;
struct TYPE_9__ {TYPE_2__ _send_aux; int sendstate; int stream_id; int conn; } ;
typedef TYPE_3__ quicly_stream_t ;


 int QUICLY_ERROR_GET_ERROR_CODE (int) ;
 int QUICLY_ERROR_IS_QUIC_APPLICATION (int) ;
 scalar_t__ QUICLY_SENDER_STATE_NONE ;
 scalar_t__ QUICLY_SENDER_STATE_SEND ;
 int assert (int) ;
 int quicly_is_client (int ) ;
 int quicly_sendstate_reset (int *) ;
 int quicly_sendstate_transfer_complete (int *) ;
 int quicly_stream_has_send_side (int ,int ) ;
 int resched_stream_data (TYPE_3__*) ;
 int sched_stream_control (TYPE_3__*) ;

void quicly_reset_stream(quicly_stream_t *stream, int err)
{
    assert(quicly_stream_has_send_side(quicly_is_client(stream->conn), stream->stream_id));
    assert(QUICLY_ERROR_IS_QUIC_APPLICATION(err));
    assert(stream->_send_aux.rst.sender_state == QUICLY_SENDER_STATE_NONE);
    assert(!quicly_sendstate_transfer_complete(&stream->sendstate));


    quicly_sendstate_reset(&stream->sendstate);


    stream->_send_aux.rst.sender_state = QUICLY_SENDER_STATE_SEND;
    stream->_send_aux.rst.error_code = QUICLY_ERROR_GET_ERROR_CODE(err);


    sched_stream_control(stream);
    resched_stream_data(stream);
}
