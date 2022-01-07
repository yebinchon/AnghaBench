
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;


struct TYPE_22__ {scalar_t__ sender_state; } ;
struct TYPE_23__ {TYPE_4__ rst; } ;
struct TYPE_24__ {TYPE_5__ _send_aux; int sendstate; TYPE_1__* callbacks; } ;
typedef TYPE_6__ quicly_stream_t ;
typedef scalar_t__ quicly_sentmap_event_t ;
struct TYPE_18__ {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_20__ {TYPE_12__ args; int stream_id; } ;
struct TYPE_21__ {TYPE_2__ stream; } ;
struct TYPE_25__ {TYPE_3__ data; } ;
typedef TYPE_7__ quicly_sent_t ;
struct TYPE_26__ {scalar_t__ bytes_in_flight; } ;
typedef TYPE_8__ quicly_sent_packet_t ;
typedef int quicly_conn_t ;
struct TYPE_19__ {int (* on_send_shift ) (TYPE_6__*,size_t) ;} ;


 int QUICLY_PROBE (int ,int *,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ QUICLY_SENDER_STATE_NONE ;
 scalar_t__ QUICLY_SENTMAP_EVENT_ACKED ;
 scalar_t__ QUICLY_SENTMAP_EVENT_EXPIRED ;
 int STREAM_ACKED ;
 int STREAM_LOST ;
 int destroy_stream (TYPE_6__*,int ) ;
 int probe_now () ;
 TYPE_6__* quicly_get_stream (int *,int ) ;
 int quicly_sendstate_acked (int *,TYPE_12__*,int,size_t*) ;
 int quicly_sendstate_lost (int *,TYPE_12__*) ;
 int resched_stream_data (TYPE_6__*) ;
 scalar_t__ stream_is_destroyable (TYPE_6__*) ;
 int stub1 (TYPE_6__*,size_t) ;

__attribute__((used)) static int on_ack_stream(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent, quicly_sentmap_event_t event)
{
    quicly_stream_t *stream;
    int ret;

    if (event == QUICLY_SENTMAP_EVENT_EXPIRED)
        return 0;

    if (event == QUICLY_SENTMAP_EVENT_ACKED) {
        QUICLY_PROBE(STREAM_ACKED, conn, probe_now(), sent->data.stream.stream_id, sent->data.stream.args.start,
                     sent->data.stream.args.end - sent->data.stream.args.start);
    } else {
        QUICLY_PROBE(STREAM_LOST, conn, probe_now(), sent->data.stream.stream_id, sent->data.stream.args.start,
                     sent->data.stream.args.end - sent->data.stream.args.start);
    }


    if ((stream = quicly_get_stream(conn, sent->data.stream.stream_id)) == ((void*)0))
        return 0;

    if (event == QUICLY_SENTMAP_EVENT_ACKED) {
        size_t bytes_to_shift;
        if ((ret = quicly_sendstate_acked(&stream->sendstate, &sent->data.stream.args, packet->bytes_in_flight != 0,
                                          &bytes_to_shift)) != 0)
            return ret;
        if (stream_is_destroyable(stream)) {
            destroy_stream(stream, 0);
        } else if (bytes_to_shift != 0) {
            stream->callbacks->on_send_shift(stream, bytes_to_shift);
        }
    } else {

        if ((ret = quicly_sendstate_lost(&stream->sendstate, &sent->data.stream.args)) != 0)
            return ret;
        if (stream->_send_aux.rst.sender_state == QUICLY_SENDER_STATE_NONE)
            resched_stream_data(stream);
    }

    return 0;
}
