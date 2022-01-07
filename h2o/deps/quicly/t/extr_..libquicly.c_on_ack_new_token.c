
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int quicly_sentmap_event_t ;
struct TYPE_11__ {scalar_t__ generation; scalar_t__ is_inflight; } ;
struct TYPE_12__ {TYPE_1__ new_token; } ;
struct TYPE_16__ {TYPE_2__ data; } ;
typedef TYPE_6__ quicly_sent_t ;
typedef int quicly_sent_packet_t ;
struct TYPE_15__ {int flows; } ;
struct TYPE_13__ {scalar_t__ num_inflight; scalar_t__ max_acked; scalar_t__ generation; } ;
struct TYPE_14__ {TYPE_3__ new_token; } ;
struct TYPE_17__ {TYPE_5__ pending; TYPE_4__ egress; } ;
typedef TYPE_7__ quicly_conn_t ;


 int NEW_TOKEN_ACKED ;
 int QUICLY_PENDING_FLOW_NEW_TOKEN_BIT ;
 int QUICLY_PROBE (int ,TYPE_7__*,int ,scalar_t__) ;

 int probe_now () ;

__attribute__((used)) static int on_ack_new_token(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                            quicly_sentmap_event_t event)
{
    if (sent->data.new_token.is_inflight) {
        --conn->egress.new_token.num_inflight;
        sent->data.new_token.is_inflight = 0;
    }
    switch (event) {
    case 128:
        QUICLY_PROBE(NEW_TOKEN_ACKED, conn, probe_now(), sent->data.new_token.generation);
        if (conn->egress.new_token.max_acked < sent->data.new_token.generation)
            conn->egress.new_token.max_acked = sent->data.new_token.generation;
        break;
    default:
        break;
    }

    if (conn->egress.new_token.num_inflight == 0 && conn->egress.new_token.max_acked < conn->egress.new_token.generation)
        conn->pending.flows |= QUICLY_PENDING_FLOW_NEW_TOKEN_BIT;

    return 0;
}
