
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_17__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_11__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct st_quicly_handle_payload_state_t {scalar_t__ frame_type; int epoch; int end; int src; } ;
typedef int quicly_sentmap_iter_t ;
struct TYPE_30__ {scalar_t__ packet_number; scalar_t__ ack_epoch; int ack_eliciting; scalar_t__ bytes_in_flight; int sent_at; } ;
typedef TYPE_7__ quicly_sent_packet_t ;
struct TYPE_22__ {int rtt; } ;
struct TYPE_21__ {scalar_t__ bytes_in_flight; } ;
struct TYPE_23__ {int cwnd; } ;
struct TYPE_29__ {TYPE_14__ loss; TYPE_11__ sentmap; TYPE_17__ cc; } ;
struct TYPE_26__ {int ack_received; } ;
struct TYPE_27__ {TYPE_3__ num_packets; } ;
struct TYPE_24__ {int send_probe; } ;
struct TYPE_25__ {TYPE_1__ address_validation; } ;
struct TYPE_28__ {TYPE_4__ stats; TYPE_2__ peer; } ;
struct TYPE_31__ {TYPE_6__ egress; TYPE_5__ super; } ;
typedef TYPE_8__ quicly_conn_t ;
struct TYPE_32__ {scalar_t__ smallest_acknowledged; size_t num_gaps; scalar_t__* ack_block_lengths; scalar_t__* gaps; int largest_acknowledged; int ack_delay; } ;
typedef TYPE_9__ quicly_ack_frame_t ;
typedef int int64_t ;


 int CC_ACK_RECEIVED ;
 int INT64_MAX ;
 int PACKET_ACKED ;


 scalar_t__ QUICLY_FRAME_TYPE_ACK_ECN ;
 int QUICLY_PROBE (int ,TYPE_8__*,int ,scalar_t__,...) ;
 int QUICLY_SENTMAP_EVENT_ACKED ;
 int QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION ;
 int QUICTRACE_CC_ACK ;
 int QUICTRACE_RECV_ACK ;
 int QUICTRACE_RECV_ACK_DELAY ;
 int UINT64_MAX ;
 int do_detect_loss ;
 int init_acks_iter (TYPE_8__*,int *) ;
 int now ;
 int probe_now () ;
 int quicly_cc_on_acked (TYPE_17__*,int ,int ,int ) ;
 int quicly_decode_ack_frame (int *,int ,TYPE_9__*,int) ;
 int quicly_loss_detect_loss (TYPE_14__*,int ,int ) ;
 int quicly_loss_on_ack_received (TYPE_14__*,scalar_t__,int ,int ,int ,int) ;
 TYPE_7__* quicly_sentmap_get (int *) ;
 int quicly_sentmap_skip (int *) ;
 int quicly_sentmap_update (TYPE_11__*,int *,int ,TYPE_8__*) ;
 int update_loss_alarm (TYPE_8__*) ;

__attribute__((used)) static int handle_ack_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_ack_frame_t frame;
    quicly_sentmap_iter_t iter;
    struct {
        uint64_t packet_number;
        int64_t sent_at;
    } largest_newly_acked = {UINT64_MAX, INT64_MAX};
    size_t bytes_acked = 0;
    int includes_ack_eliciting = 0, ret;

    if ((ret = quicly_decode_ack_frame(&state->src, state->end, &frame, state->frame_type == QUICLY_FRAME_TYPE_ACK_ECN)) != 0)
        return ret;

    uint64_t packet_number = frame.smallest_acknowledged;

    switch (state->epoch) {
    case 129:
        return QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION;
    case 128:
        conn->super.peer.address_validation.send_probe = 0;
        break;
    default:
        break;
    }

    init_acks_iter(conn, &iter);

    size_t gap_index = frame.num_gaps;
    while (1) {
        uint64_t block_length = frame.ack_block_lengths[gap_index];
        if (block_length != 0) {
            QUICLY_PROBE(QUICTRACE_RECV_ACK, conn, probe_now(), packet_number, packet_number + block_length - 1);
            while (quicly_sentmap_get(&iter)->packet_number < packet_number)
                quicly_sentmap_skip(&iter);
            do {
                const quicly_sent_packet_t *sent;
                if ((sent = quicly_sentmap_get(&iter))->packet_number == packet_number) {
                    ++conn->super.stats.num_packets.ack_received;
                    if (state->epoch == sent->ack_epoch) {
                        largest_newly_acked.packet_number = packet_number;
                        largest_newly_acked.sent_at = sent->sent_at;
                        includes_ack_eliciting |= sent->ack_eliciting;
                        QUICLY_PROBE(PACKET_ACKED, conn, probe_now(), packet_number, 1);
                        if (sent->bytes_in_flight != 0) {
                            bytes_acked += sent->bytes_in_flight;
                        }
                        if ((ret = quicly_sentmap_update(&conn->egress.sentmap, &iter, QUICLY_SENTMAP_EVENT_ACKED, conn)) != 0)
                            return ret;
                    } else {
                        quicly_sentmap_skip(&iter);
                    }
                }
                ++packet_number;
            } while (--block_length != 0);
        }
        if (gap_index-- == 0)
            break;
        packet_number += frame.gaps[gap_index];
    }

    QUICLY_PROBE(QUICTRACE_RECV_ACK_DELAY, conn, probe_now(), frame.ack_delay);



    quicly_loss_on_ack_received(&conn->egress.loss, largest_newly_acked.packet_number, now, largest_newly_acked.sent_at,
                                frame.ack_delay, includes_ack_eliciting);


    if (bytes_acked > 0) {
        quicly_cc_on_acked(&conn->egress.cc, (uint32_t)bytes_acked, frame.largest_acknowledged,
                           (uint32_t)(conn->egress.sentmap.bytes_in_flight + bytes_acked));
        QUICLY_PROBE(QUICTRACE_CC_ACK, conn, probe_now(), &conn->egress.loss.rtt, conn->egress.cc.cwnd,
                     conn->egress.sentmap.bytes_in_flight);
    }

    QUICLY_PROBE(CC_ACK_RECEIVED, conn, probe_now(), frame.largest_acknowledged, bytes_acked, conn->egress.cc.cwnd,
                 conn->egress.sentmap.bytes_in_flight);


    quicly_loss_detect_loss(&conn->egress.loss, frame.largest_acknowledged, do_detect_loss);
    update_loss_alarm(conn);

    return 0;
}
