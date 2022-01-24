#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_17__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct st_quicly_handle_payload_state_t {scalar_t__ frame_type; int epoch; int /*<<< orphan*/  end; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  quicly_sentmap_iter_t ;
struct TYPE_30__ {scalar_t__ packet_number; scalar_t__ ack_epoch; int ack_eliciting; scalar_t__ bytes_in_flight; int /*<<< orphan*/  sent_at; } ;
typedef  TYPE_7__ quicly_sent_packet_t ;
struct TYPE_22__ {int /*<<< orphan*/  rtt; } ;
struct TYPE_21__ {scalar_t__ bytes_in_flight; } ;
struct TYPE_23__ {int /*<<< orphan*/  cwnd; } ;
struct TYPE_29__ {TYPE_14__ loss; TYPE_11__ sentmap; TYPE_17__ cc; } ;
struct TYPE_26__ {int /*<<< orphan*/  ack_received; } ;
struct TYPE_27__ {TYPE_3__ num_packets; } ;
struct TYPE_24__ {int /*<<< orphan*/  send_probe; } ;
struct TYPE_25__ {TYPE_1__ address_validation; } ;
struct TYPE_28__ {TYPE_4__ stats; TYPE_2__ peer; } ;
struct TYPE_31__ {TYPE_6__ egress; TYPE_5__ super; } ;
typedef  TYPE_8__ quicly_conn_t ;
struct TYPE_32__ {scalar_t__ smallest_acknowledged; size_t num_gaps; scalar_t__* ack_block_lengths; scalar_t__* gaps; int /*<<< orphan*/  largest_acknowledged; int /*<<< orphan*/  ack_delay; } ;
typedef  TYPE_9__ quicly_ack_frame_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CC_ACK_RECEIVED ; 
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  PACKET_ACKED ; 
#define  QUICLY_EPOCH_0RTT 129 
#define  QUICLY_EPOCH_HANDSHAKE 128 
 scalar_t__ QUICLY_FRAME_TYPE_ACK_ECN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  QUICLY_SENTMAP_EVENT_ACKED ; 
 int QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  QUICTRACE_CC_ACK ; 
 int /*<<< orphan*/  QUICTRACE_RECV_ACK ; 
 int /*<<< orphan*/  QUICTRACE_RECV_ACK_DELAY ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  do_detect_loss ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_17__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_14__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_14__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*) ; 

__attribute__((used)) static int FUNC11(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_ack_frame_t frame;
    quicly_sentmap_iter_t iter;
    struct {
        uint64_t packet_number;
        int64_t sent_at;
    } largest_newly_acked = {UINT64_MAX, INT64_MAX};
    size_t bytes_acked = 0;
    int includes_ack_eliciting = 0, ret;

    if ((ret = FUNC4(&state->src, state->end, &frame, state->frame_type == QUICLY_FRAME_TYPE_ACK_ECN)) != 0)
        return ret;

    uint64_t packet_number = frame.smallest_acknowledged;

    switch (state->epoch) {
    case QUICLY_EPOCH_0RTT:
        return QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION;
    case QUICLY_EPOCH_HANDSHAKE:
        conn->super.peer.address_validation.send_probe = 0;
        break;
    default:
        break;
    }

    FUNC1(conn, &iter);

    size_t gap_index = frame.num_gaps;
    while (1) {
        uint64_t block_length = frame.ack_block_lengths[gap_index];
        if (block_length != 0) {
            FUNC0(QUICTRACE_RECV_ACK, conn, FUNC2(), packet_number, packet_number + block_length - 1);
            while (FUNC7(&iter)->packet_number < packet_number)
                FUNC8(&iter);
            do {
                const quicly_sent_packet_t *sent;
                if ((sent = FUNC7(&iter))->packet_number == packet_number) {
                    ++conn->super.stats.num_packets.ack_received;
                    if (state->epoch == sent->ack_epoch) {
                        largest_newly_acked.packet_number = packet_number;
                        largest_newly_acked.sent_at = sent->sent_at;
                        includes_ack_eliciting |= sent->ack_eliciting;
                        FUNC0(PACKET_ACKED, conn, FUNC2(), packet_number, 1);
                        if (sent->bytes_in_flight != 0) {
                            bytes_acked += sent->bytes_in_flight;
                        }
                        if ((ret = FUNC9(&conn->egress.sentmap, &iter, QUICLY_SENTMAP_EVENT_ACKED, conn)) != 0)
                            return ret;
                    } else {
                        FUNC8(&iter);
                    }
                }
                ++packet_number;
            } while (--block_length != 0);
        }
        if (gap_index-- == 0)
            break;
        packet_number += frame.gaps[gap_index];
    }

    FUNC0(QUICTRACE_RECV_ACK_DELAY, conn, FUNC2(), frame.ack_delay);

    /* Update loss detection engine on ack. The function uses ack_delay only when the largest_newly_acked is also the largest acked
     * so far. So, it does not matter if the ack_delay being passed in does not apply to the largest_newly_acked. */
    FUNC6(&conn->egress.loss, largest_newly_acked.packet_number, now, largest_newly_acked.sent_at,
                                frame.ack_delay, includes_ack_eliciting);

    /* OnPacketAcked and OnPacketAckedCC */
    if (bytes_acked > 0) {
        FUNC3(&conn->egress.cc, (uint32_t)bytes_acked, frame.largest_acknowledged,
                           (uint32_t)(conn->egress.sentmap.bytes_in_flight + bytes_acked));
        FUNC0(QUICTRACE_CC_ACK, conn, FUNC2(), &conn->egress.loss.rtt, conn->egress.cc.cwnd,
                     conn->egress.sentmap.bytes_in_flight);
    }

    FUNC0(CC_ACK_RECEIVED, conn, FUNC2(), frame.largest_acknowledged, bytes_acked, conn->egress.cc.cwnd,
                 conn->egress.sentmap.bytes_in_flight);

    /* loss-detection  */
    FUNC5(&conn->egress.loss, frame.largest_acknowledged, do_detect_loss);
    FUNC10(conn);

    return 0;
}