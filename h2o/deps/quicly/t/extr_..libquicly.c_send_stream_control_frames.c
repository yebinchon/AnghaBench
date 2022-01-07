
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_29__ {int size_inflight; } ;
struct TYPE_27__ {scalar_t__ sender_state; int error_code; } ;
struct TYPE_22__ {scalar_t__ sender_state; int error_code; } ;
struct TYPE_28__ {TYPE_6__ rst; int max_stream_data_sender; TYPE_1__ stop_sending; } ;
struct TYPE_24__ {scalar_t__ window; } ;
struct TYPE_23__ {scalar_t__ data_off; } ;
struct TYPE_30__ {TYPE_8__ sendstate; TYPE_7__ _send_aux; int stream_id; int conn; TYPE_3__ _recv_aux; TYPE_2__ recvstate; } ;
typedef TYPE_9__ quicly_stream_t ;
struct TYPE_25__ {int args; int stream_id; } ;
struct TYPE_26__ {TYPE_4__ max_stream_data; } ;
struct TYPE_20__ {TYPE_5__ data; } ;
typedef TYPE_10__ quicly_sent_t ;
struct TYPE_21__ {int dst; } ;
typedef TYPE_11__ quicly_send_context_t ;


 int MAX_STREAM_DATA_SEND ;
 int QUICLY_MAX_STREAM_DATA_FRAME_CAPACITY ;
 int QUICLY_PROBE (int ,int ,int ,TYPE_9__*,scalar_t__) ;
 int QUICLY_RST_FRAME_CAPACITY ;
 scalar_t__ QUICLY_SENDER_STATE_SEND ;
 int QUICLY_STOP_SENDING_FRAME_CAPACITY ;
 int allocate_ack_eliciting_frame (int ,TYPE_11__*,int ,TYPE_10__**,int ) ;
 int on_ack_max_stream_data ;
 int on_ack_rst_stream ;
 int on_ack_stop_sending ;
 int prepare_stream_state_sender (TYPE_9__*,scalar_t__*,TYPE_11__*,int ,int ) ;
 int probe_now () ;
 int quicly_encode_max_stream_data_frame (int ,int ,scalar_t__) ;
 int quicly_encode_rst_stream_frame (int ,int ,int ,int ) ;
 int quicly_encode_stop_sending_frame (int ,int ,int ) ;
 int quicly_maxsender_record (int *,scalar_t__,int *) ;
 scalar_t__ should_send_max_stream_data (TYPE_9__*) ;

__attribute__((used)) static int send_stream_control_frames(quicly_stream_t *stream, quicly_send_context_t *s)
{
    int ret;


    if (stream->_send_aux.stop_sending.sender_state == QUICLY_SENDER_STATE_SEND) {

        if ((ret = prepare_stream_state_sender(stream, &stream->_send_aux.stop_sending.sender_state, s,
                                               QUICLY_STOP_SENDING_FRAME_CAPACITY, on_ack_stop_sending)) != 0)
            return ret;
        s->dst = quicly_encode_stop_sending_frame(s->dst, stream->stream_id, stream->_send_aux.stop_sending.error_code);
    }


    if (should_send_max_stream_data(stream)) {
        uint64_t new_value = stream->recvstate.data_off + stream->_recv_aux.window;
        quicly_sent_t *sent;

        if ((ret = allocate_ack_eliciting_frame(stream->conn, s, QUICLY_MAX_STREAM_DATA_FRAME_CAPACITY, &sent,
                                                on_ack_max_stream_data)) != 0)
            return ret;

        s->dst = quicly_encode_max_stream_data_frame(s->dst, stream->stream_id, new_value);

        sent->data.max_stream_data.stream_id = stream->stream_id;
        quicly_maxsender_record(&stream->_send_aux.max_stream_data_sender, new_value, &sent->data.max_stream_data.args);
        QUICLY_PROBE(MAX_STREAM_DATA_SEND, stream->conn, probe_now(), stream, new_value);
    }


    if (stream->_send_aux.rst.sender_state == QUICLY_SENDER_STATE_SEND) {
        if ((ret = prepare_stream_state_sender(stream, &stream->_send_aux.rst.sender_state, s, QUICLY_RST_FRAME_CAPACITY,
                                               on_ack_rst_stream)) != 0)
            return ret;
        s->dst = quicly_encode_rst_stream_frame(s->dst, stream->stream_id, stream->_send_aux.rst.error_code,
                                                stream->sendstate.size_inflight);
    }

    return 0;
}
