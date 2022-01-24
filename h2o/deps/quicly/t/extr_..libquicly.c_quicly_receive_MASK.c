#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_105__   TYPE_9__ ;
typedef  struct TYPE_104__   TYPE_8__ ;
typedef  struct TYPE_103__   TYPE_7__ ;
typedef  struct TYPE_102__   TYPE_6__ ;
typedef  struct TYPE_101__   TYPE_5__ ;
typedef  struct TYPE_100__   TYPE_4__ ;
typedef  struct TYPE_99__   TYPE_44__ ;
typedef  struct TYPE_98__   TYPE_42__ ;
typedef  struct TYPE_97__   TYPE_3__ ;
typedef  struct TYPE_96__   TYPE_39__ ;
typedef  struct TYPE_95__   TYPE_35__ ;
typedef  struct TYPE_94__   TYPE_34__ ;
typedef  struct TYPE_93__   TYPE_33__ ;
typedef  struct TYPE_92__   TYPE_32__ ;
typedef  struct TYPE_91__   TYPE_31__ ;
typedef  struct TYPE_90__   TYPE_30__ ;
typedef  struct TYPE_89__   TYPE_2__ ;
typedef  struct TYPE_88__   TYPE_29__ ;
typedef  struct TYPE_87__   TYPE_28__ ;
typedef  struct TYPE_86__   TYPE_27__ ;
typedef  struct TYPE_85__   TYPE_26__ ;
typedef  struct TYPE_84__   TYPE_25__ ;
typedef  struct TYPE_83__   TYPE_24__ ;
typedef  struct TYPE_82__   TYPE_23__ ;
typedef  struct TYPE_81__   TYPE_22__ ;
typedef  struct TYPE_80__   TYPE_21__ ;
typedef  struct TYPE_79__   TYPE_20__ ;
typedef  struct TYPE_78__   TYPE_1__ ;
typedef  struct TYPE_77__   TYPE_19__ ;
typedef  struct TYPE_76__   TYPE_18__ ;
typedef  struct TYPE_75__   TYPE_17__ ;
typedef  struct TYPE_74__   TYPE_16__ ;
typedef  struct TYPE_73__   TYPE_15__ ;
typedef  struct TYPE_72__   TYPE_14__ ;
typedef  struct TYPE_71__   TYPE_13__ ;
typedef  struct TYPE_70__   TYPE_12__ ;
typedef  struct TYPE_69__   TYPE_11__ ;
typedef  struct TYPE_68__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct st_quicly_pn_space_t {int /*<<< orphan*/  next_expected_packet_number; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct TYPE_80__ {int /*<<< orphan*/  size; } ;
struct TYPE_81__ {TYPE_21__ vecs; } ;
struct TYPE_91__ {TYPE_22__ egress; } ;
typedef  TYPE_31__ quicly_streambuf_t ;
struct TYPE_92__ {TYPE_31__* data; } ;
typedef  TYPE_32__ quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_stream_id_t ;
struct TYPE_73__ {int* base; scalar_t__ len; } ;
struct TYPE_95__ {int* base; scalar_t__ len; } ;
struct TYPE_78__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_89__ {TYPE_1__ encrypted; } ;
struct TYPE_101__ {TYPE_35__ src; TYPE_2__ dest; } ;
struct TYPE_100__ {scalar_t__ len; int* base; } ;
struct TYPE_93__ {scalar_t__ version; TYPE_15__ octets; TYPE_5__ cid; TYPE_4__ token; int /*<<< orphan*/  encrypted_off; } ;
typedef  TYPE_33__ quicly_decoded_packet_t ;
struct TYPE_88__ {int /*<<< orphan*/  alarm_at; } ;
struct TYPE_90__ {TYPE_29__ loss; int /*<<< orphan*/  send_ack_at; int /*<<< orphan*/  packet_number; int /*<<< orphan*/  sentmap; } ;
struct TYPE_82__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_99__ {TYPE_23__ sa; } ;
struct TYPE_86__ {TYPE_44__ address; } ;
struct TYPE_84__ {int /*<<< orphan*/  disable_active_migration; } ;
struct TYPE_74__ {int validated; } ;
struct TYPE_98__ {int* len; int* cid; } ;
struct TYPE_85__ {TYPE_25__ transport_params; TYPE_16__ address_validation; TYPE_42__ cid; } ;
struct TYPE_71__ {int /*<<< orphan*/  received; } ;
struct TYPE_70__ {int received; } ;
struct TYPE_72__ {TYPE_13__ num_bytes; TYPE_12__ num_packets; } ;
struct TYPE_87__ {int state; TYPE_27__ host; TYPE_26__ peer; TYPE_14__ stats; int /*<<< orphan*/  ctx; } ;
struct TYPE_83__ {int handshake_scheduled_for_discard; int /*<<< orphan*/  tls; } ;
struct TYPE_97__ {int* base; scalar_t__ len; } ;
struct TYPE_94__ {TYPE_30__ egress; TYPE_28__ super; TYPE_24__ crypto; TYPE_20__* handshake; TYPE_17__* initial; TYPE_11__* application; TYPE_42__ retry_odcid; TYPE_3__ token; } ;
typedef  TYPE_34__ quicly_conn_t ;
typedef  TYPE_35__ ptls_iovec_t ;
typedef  int /*<<< orphan*/  ptls_cipher_context_t ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;
struct TYPE_104__ {int /*<<< orphan*/ * one_rtt; int /*<<< orphan*/ * zero_rtt; } ;
struct TYPE_105__ {int /*<<< orphan*/ ** aead; TYPE_8__ header_protection; } ;
struct TYPE_103__ {int /*<<< orphan*/ * aead; int /*<<< orphan*/ * header_protection; } ;
struct TYPE_96__ {int /*<<< orphan*/ * aead; int /*<<< orphan*/ * header_protection; } ;
struct TYPE_102__ {TYPE_39__ ingress; TYPE_39__ egress; } ;
struct TYPE_76__ {int /*<<< orphan*/ * aead; } ;
struct TYPE_77__ {TYPE_18__ egress; TYPE_7__ ingress; } ;
struct TYPE_79__ {TYPE_19__ cipher; } ;
struct TYPE_75__ {TYPE_6__ cipher; } ;
struct TYPE_68__ {TYPE_9__ ingress; } ;
struct TYPE_69__ {TYPE_10__ cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  CRYPTO_DECRYPT ; 
 int PTLS_ERROR_NO_MEMORY ; 
 size_t QUICLY_EPOCH_0RTT ; 
#define  QUICLY_EPOCH_1RTT 137 
#define  QUICLY_EPOCH_HANDSHAKE 136 
#define  QUICLY_EPOCH_INITIAL 135 
#define  QUICLY_ERROR_PACKET_IGNORED 134 
 int /*<<< orphan*/  QUICLY_FRAME_TYPE_PADDING ; 
 scalar_t__ QUICLY_MAX_TOKEN_LEN ; 
 scalar_t__ FUNC0 (int) ; 
#define  QUICLY_PACKET_TYPE_0RTT 133 
 int QUICLY_PACKET_TYPE_BITMASK ; 
#define  QUICLY_PACKET_TYPE_HANDSHAKE 132 
#define  QUICLY_PACKET_TYPE_INITIAL 131 
#define  QUICLY_PACKET_TYPE_RETRY 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_34__*,int /*<<< orphan*/ ,int*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  QUICLY_STATE_CLOSING 129 
 int QUICLY_STATE_CONNECTED ; 
#define  QUICLY_STATE_DRAINING 128 
 int QUICLY_STATE_FIRSTFLIGHT ; 
 int QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  QUICTRACE_RECV ; 
 int /*<<< orphan*/  RECEIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_34__*,int /*<<< orphan*/ ) ; 
 TYPE_35__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_33__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  discard_handshake_context ; 
 int FUNC6 (TYPE_34__*) ; 
 int FUNC7 (TYPE_34__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_39__*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_34__*,size_t,int*,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int FUNC12 (TYPE_34__*) ; 
 int FUNC13 (TYPE_34__*,TYPE_33__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_34__*,int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (TYPE_34__*,TYPE_33__*) ; 
 int* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_35__ FUNC20 (int*,int*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_42__*,TYPE_35__) ; 
 TYPE_32__* FUNC22 (TYPE_34__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_34__*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 
 int FUNC27 (TYPE_34__*,struct st_quicly_pn_space_t*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_44__*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_42__*,TYPE_35__) ; 
 int FUNC30 (int /*<<< orphan*/ ,TYPE_39__*,TYPE_39__*,TYPE_35__,int) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_34__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_34__*,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_34__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 

int FUNC35(quicly_conn_t *conn, struct sockaddr *dest_addr, struct sockaddr *src_addr, quicly_decoded_packet_t *packet)
{
    ptls_cipher_context_t *header_protection;
    ptls_aead_context_t **aead;
    struct st_quicly_pn_space_t **space;
    size_t epoch;
    ptls_iovec_t payload;
    uint64_t pn, offending_frame_type = QUICLY_FRAME_TYPE_PADDING;
    int is_ack_only, ret;

    FUNC34(conn->super.ctx);

    FUNC1(RECEIVE, conn, FUNC18(), FUNC2(packet->cid.dest.encrypted.base, packet->cid.dest.encrypted.len),
                 packet->octets.base, packet->octets.len);

    if (FUNC15(conn, packet)) {
        ret = FUNC12(conn);
        goto Exit;
    }

    /* FIXME check peer address */

    switch (conn->super.state) {
    case QUICLY_STATE_CLOSING:
        conn->super.state = QUICLY_STATE_DRAINING;
        conn->egress.send_ack_at = 0; /* send CONNECTION_CLOSE */
        ret = 0;
        goto Exit;
    case QUICLY_STATE_DRAINING:
        ret = 0;
        goto Exit;
    default:
        break;
    }

    if (FUNC0(packet->octets.base[0])) {
        if (conn->super.state == QUICLY_STATE_FIRSTFLIGHT) {
            if (packet->version == 0)
                return FUNC13(conn, packet);
        }
        switch (packet->octets.base[0] & QUICLY_PACKET_TYPE_BITMASK) {
        case QUICLY_PACKET_TYPE_RETRY: {
            /* check the packet */
            if (packet->token.len >= QUICLY_MAX_TOKEN_LEN) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            ptls_iovec_t odcid = FUNC20(packet->octets.base + packet->encrypted_off,
                                                 packet->token.base - (packet->octets.base + packet->encrypted_off));
            if (!FUNC21(&conn->super.peer.cid, odcid)) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            if (FUNC21(&conn->super.peer.cid, packet->cid.src)) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            /* do not accept a second Retry */
            if (conn->retry_odcid.len != 0) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            /* store token and ODCID */
            FUNC9(conn->token.base);
            if ((conn->token.base = FUNC16(packet->token.len)) == NULL) {
                ret = PTLS_ERROR_NO_MEMORY;
                goto Exit;
            }
            FUNC17(conn->token.base, packet->token.base, packet->token.len);
            conn->token.len = packet->token.len;
            conn->retry_odcid = conn->super.peer.cid;
            /* update DCID */
            FUNC29(&conn->super.peer.cid, packet->cid.src);
            /* replace initial keys */
            FUNC8(&conn->initial->cipher.ingress);
            FUNC8(&conn->initial->cipher.egress);
            if ((ret = FUNC30(FUNC10(conn->super.ctx), &conn->initial->cipher.ingress,
                                                &conn->initial->cipher.egress,
                                                FUNC20(conn->super.peer.cid.cid, conn->super.peer.cid.len), 1)) != 0)
                goto Exit;
            /* schedule retransmit */
            ret = FUNC7(conn, ~0u);
            goto Exit;
        } break;
        case QUICLY_PACKET_TYPE_INITIAL:
            if (conn->initial == NULL || (header_protection = conn->initial->cipher.ingress.header_protection) == NULL) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            /* update cid if this is the first Initial packet that's being received */
            if (conn->super.state == QUICLY_STATE_FIRSTFLIGHT) {
                FUNC3(FUNC23(conn));
                FUNC17(conn->super.peer.cid.cid, packet->cid.src.base, packet->cid.src.len);
                conn->super.peer.cid.len = packet->cid.src.len;
            }
            aead = &conn->initial->cipher.ingress.aead;
            space = (void *)&conn->initial;
            epoch = QUICLY_EPOCH_INITIAL;
            break;
        case QUICLY_PACKET_TYPE_HANDSHAKE:
            if (conn->handshake == NULL || (header_protection = conn->handshake->cipher.ingress.header_protection) == NULL) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            aead = &conn->handshake->cipher.ingress.aead;
            space = (void *)&conn->handshake;
            epoch = QUICLY_EPOCH_HANDSHAKE;
            break;
        case QUICLY_PACKET_TYPE_0RTT:
            if (FUNC23(conn)) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            if (conn->application == NULL ||
                (header_protection = conn->application->cipher.ingress.header_protection.zero_rtt) == NULL) {
                ret = QUICLY_ERROR_PACKET_IGNORED;
                goto Exit;
            }
            aead = &conn->application->cipher.ingress.aead[0];
            space = (void *)&conn->application;
            epoch = QUICLY_EPOCH_0RTT;
            break;
        default:
            ret = QUICLY_ERROR_PACKET_IGNORED;
            goto Exit;
        }
    } else {
        /* first 1-RTT keys is key_phase 1, see doc-comment of cipher.ingress */
        if (conn->application == NULL ||
            (header_protection = conn->application->cipher.ingress.header_protection.one_rtt) == NULL) {
            ret = QUICLY_ERROR_PACKET_IGNORED;
            goto Exit;
        }
        aead = conn->application->cipher.ingress.aead;
        space = (void *)&conn->application;
        epoch = QUICLY_EPOCH_1RTT;
    }

    /* decrypt */
    if ((payload = FUNC5(header_protection, aead, &(*space)->next_expected_packet_number, packet, &pn)).base == NULL) {
        ret = QUICLY_ERROR_PACKET_IGNORED;
        goto Exit;
    }
    if (payload.len == 0) {
        ret = QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION;
        goto Exit;
    }

    FUNC1(CRYPTO_DECRYPT, conn, pn, payload.base, payload.len);
    FUNC1(QUICTRACE_RECV, conn, FUNC18(), &pn);

    /* update states */
    if (conn->super.state == QUICLY_STATE_FIRSTFLIGHT)
        conn->super.state = QUICLY_STATE_CONNECTED;
    conn->super.stats.num_packets.received += 1;
    conn->super.stats.num_bytes.received += packet->octets.len;

    /* state updates, that are triggered by the receipt of a packet */
    if (epoch == QUICLY_EPOCH_HANDSHAKE && conn->initial != NULL) {
        /* Discard Initial space before processing the payload of the Handshake packet to avoid the chance of an ACK frame included
         * in the Handshake packet setting a loss timer for the Initial packet. */
        if ((ret = FUNC6(conn)) != 0)
            goto Exit;
        FUNC33(conn);
        conn->super.peer.address_validation.validated = 1;
    }

    /* handle the payload */
    if ((ret = FUNC11(conn, epoch, payload.base, payload.len, &offending_frame_type, &is_ack_only)) != 0)
        goto Exit;
    if (*space != NULL) {
        if ((ret = FUNC27(conn, *space, pn, is_ack_only, epoch)) != 0)
            goto Exit;
    }

    /* state updates post payload processing */
    switch (epoch) {
    case QUICLY_EPOCH_INITIAL:
        FUNC3(conn->initial != NULL);
        if (FUNC23(conn) && conn->handshake != NULL && conn->handshake->cipher.egress.aead != NULL) {
            if ((ret = FUNC6(conn)) != 0)
                goto Exit;
            FUNC33(conn);
        }
        break;
    case QUICLY_EPOCH_HANDSHAKE:
        /* schedule the timer to discard contexts related to the handshake if we have received all handshake messages and all the
         * messages we sent have been acked */
        if (!conn->crypto.handshake_scheduled_for_discard && FUNC19(conn->crypto.tls)) {
            quicly_stream_t *stream = FUNC22(conn, -(quicly_stream_id_t)(1 + QUICLY_EPOCH_HANDSHAKE));
            FUNC3(stream != NULL);
            quicly_streambuf_t *buf = stream->data;
            if (buf->egress.vecs.size == 0) {
                if ((ret = FUNC26(&conn->egress.sentmap, conn->egress.packet_number, now,
                                                  QUICLY_EPOCH_HANDSHAKE)) != 0)
                    goto Exit;
                if (FUNC24(&conn->egress.sentmap, discard_handshake_context) == NULL) {
                    ret = PTLS_ERROR_NO_MEMORY;
                    goto Exit;
                }
                FUNC25(&conn->egress.sentmap, 0);
                ++conn->egress.packet_number;
                conn->crypto.handshake_scheduled_for_discard = 1;
            }
        }
        /* when running as a client, respect "disable_migration" TP sent by the peer at the end of the TLS handshake */
        if (FUNC23(conn) && conn->super.host.address.sa.sa_family == AF_UNSPEC && dest_addr != NULL &&
            dest_addr->sa_family != AF_UNSPEC && FUNC19(conn->crypto.tls) &&
            conn->super.peer.transport_params.disable_active_migration)
            FUNC28(&conn->super.host.address, dest_addr);
        break;
    case QUICLY_EPOCH_1RTT:
        if (!is_ack_only && FUNC31(conn))
            conn->egress.send_ack_at = 0;
        break;
    default:
        break;
    }

    FUNC32(conn, 1);

Exit:
    switch (ret) {
    case 0:
        /* Avoid time in the past being emitted by quicly_get_first_timeout. We hit the condition below when retransmission is
         * suspended by the 3x limit (in which case we have loss.alarm_at set but return INT64_MAX from quicly_get_first_timeout
         * until we receive something from the client).
         */
        if (conn->egress.loss.alarm_at < now)
            conn->egress.loss.alarm_at = now;
        FUNC4(conn, 0);
        break;
    case QUICLY_ERROR_PACKET_IGNORED:
        break;
    default: /* close connection */
        FUNC14(conn, ret, offending_frame_type, "");
        ret = 0;
        break;
    }
    return ret;
}