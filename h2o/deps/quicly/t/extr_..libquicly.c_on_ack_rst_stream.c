
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int sender_state; } ;
struct TYPE_14__ {TYPE_3__ rst; } ;
struct TYPE_15__ {TYPE_4__ _send_aux; } ;
typedef TYPE_5__ quicly_stream_t ;
typedef scalar_t__ quicly_sentmap_event_t ;
struct TYPE_11__ {int stream_id; } ;
struct TYPE_12__ {TYPE_1__ stream_state_sender; } ;
struct TYPE_16__ {TYPE_2__ data; } ;
typedef TYPE_6__ quicly_sent_t ;
typedef int quicly_sent_packet_t ;
typedef int quicly_conn_t ;


 scalar_t__ QUICLY_SENTMAP_EVENT_ACKED ;
 scalar_t__ QUICLY_SENTMAP_EVENT_EXPIRED ;
 int destroy_stream (TYPE_5__*,int ) ;
 int on_ack_stream_state_sender (int *,int) ;
 TYPE_5__* quicly_get_stream (int *,int ) ;
 scalar_t__ stream_is_destroyable (TYPE_5__*) ;

__attribute__((used)) static int on_ack_rst_stream(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                             quicly_sentmap_event_t event)
{
    if (event != QUICLY_SENTMAP_EVENT_EXPIRED) {
        quicly_stream_t *stream;
        if ((stream = quicly_get_stream(conn, sent->data.stream_state_sender.stream_id)) != ((void*)0)) {
            on_ack_stream_state_sender(&stream->_send_aux.rst.sender_state, event == QUICLY_SENTMAP_EVENT_ACKED);
            if (stream_is_destroyable(stream))
                destroy_stream(stream, 0);
        }
    }

    return 0;
}
