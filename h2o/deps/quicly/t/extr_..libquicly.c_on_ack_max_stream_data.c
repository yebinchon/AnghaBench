
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


struct TYPE_14__ {int max_stream_data_sender; } ;
struct TYPE_15__ {TYPE_4__ _send_aux; } ;
typedef TYPE_5__ quicly_stream_t ;
typedef int quicly_sentmap_event_t ;
struct TYPE_11__ {int args; } ;
struct TYPE_12__ {int stream_id; } ;
struct TYPE_13__ {TYPE_1__ max_stream_data; TYPE_2__ stream; } ;
struct TYPE_16__ {TYPE_3__ data; } ;
typedef TYPE_6__ quicly_sent_t ;
typedef int quicly_sent_packet_t ;
typedef int quicly_conn_t ;



 int QUICLY_SENTMAP_EVENT_EXPIRED ;

 TYPE_5__* quicly_get_stream (int *,int ) ;
 int quicly_maxsender_acked (int *,int *) ;
 int quicly_maxsender_lost (int *,int *) ;
 int sched_stream_control (TYPE_5__*) ;
 int should_send_max_stream_data (TYPE_5__*) ;

__attribute__((used)) static int on_ack_max_stream_data(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                                  quicly_sentmap_event_t event)
{
    quicly_stream_t *stream;

    if (event == QUICLY_SENTMAP_EVENT_EXPIRED)
        return 0;


    if ((stream = quicly_get_stream(conn, sent->data.stream.stream_id)) != ((void*)0)) {
        switch (event) {
        case 129:
            quicly_maxsender_acked(&stream->_send_aux.max_stream_data_sender, &sent->data.max_stream_data.args);
            break;
        case 128:
            quicly_maxsender_lost(&stream->_send_aux.max_stream_data_sender, &sent->data.max_stream_data.args);
            if (should_send_max_stream_data(stream))
                sched_stream_control(stream);
            break;
        default:
            break;
        }
    }

    return 0;
}
