
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int stream_id; int conn; } ;
typedef TYPE_3__ quicly_stream_t ;
struct TYPE_7__ {int stream_id; } ;
struct TYPE_8__ {TYPE_1__ stream_state_sender; } ;
struct TYPE_10__ {TYPE_2__ data; } ;
typedef TYPE_4__ quicly_sent_t ;
typedef int quicly_sent_acked_cb ;
typedef int quicly_sender_state_t ;
typedef int quicly_send_context_t ;


 int QUICLY_SENDER_STATE_UNACKED ;
 int allocate_ack_eliciting_frame (int ,int *,size_t,TYPE_4__**,int ) ;

__attribute__((used)) static int prepare_stream_state_sender(quicly_stream_t *stream, quicly_sender_state_t *sender, quicly_send_context_t *s,
                                       size_t min_space, quicly_sent_acked_cb ack_cb)
{
    quicly_sent_t *sent;
    int ret;

    if ((ret = allocate_ack_eliciting_frame(stream->conn, s, min_space, &sent, ack_cb)) != 0)
        return ret;
    sent->data.stream_state_sender.stream_id = stream->stream_id;
    *sender = QUICLY_SENDER_STATE_UNACKED;

    return 0;
}
