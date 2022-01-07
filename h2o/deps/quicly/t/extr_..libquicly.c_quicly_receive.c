
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_105__ TYPE_9__ ;
typedef struct TYPE_104__ TYPE_8__ ;
typedef struct TYPE_103__ TYPE_7__ ;
typedef struct TYPE_102__ TYPE_6__ ;
typedef struct TYPE_101__ TYPE_5__ ;
typedef struct TYPE_100__ TYPE_4__ ;
typedef struct TYPE_99__ TYPE_44__ ;
typedef struct TYPE_98__ TYPE_42__ ;
typedef struct TYPE_97__ TYPE_3__ ;
typedef struct TYPE_96__ TYPE_39__ ;
typedef struct TYPE_95__ TYPE_35__ ;
typedef struct TYPE_94__ TYPE_34__ ;
typedef struct TYPE_93__ TYPE_33__ ;
typedef struct TYPE_92__ TYPE_32__ ;
typedef struct TYPE_91__ TYPE_31__ ;
typedef struct TYPE_90__ TYPE_30__ ;
typedef struct TYPE_89__ TYPE_2__ ;
typedef struct TYPE_88__ TYPE_29__ ;
typedef struct TYPE_87__ TYPE_28__ ;
typedef struct TYPE_86__ TYPE_27__ ;
typedef struct TYPE_85__ TYPE_26__ ;
typedef struct TYPE_84__ TYPE_25__ ;
typedef struct TYPE_83__ TYPE_24__ ;
typedef struct TYPE_82__ TYPE_23__ ;
typedef struct TYPE_81__ TYPE_22__ ;
typedef struct TYPE_80__ TYPE_21__ ;
typedef struct TYPE_79__ TYPE_20__ ;
typedef struct TYPE_78__ TYPE_1__ ;
typedef struct TYPE_77__ TYPE_19__ ;
typedef struct TYPE_76__ TYPE_18__ ;
typedef struct TYPE_75__ TYPE_17__ ;
typedef struct TYPE_74__ TYPE_16__ ;
typedef struct TYPE_73__ TYPE_15__ ;
typedef struct TYPE_72__ TYPE_14__ ;
typedef struct TYPE_71__ TYPE_13__ ;
typedef struct TYPE_70__ TYPE_12__ ;
typedef struct TYPE_69__ TYPE_11__ ;
typedef struct TYPE_68__ TYPE_10__ ;


typedef int uint64_t ;
struct st_quicly_pn_space_t {int next_expected_packet_number; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_80__ {int size; } ;
struct TYPE_81__ {TYPE_21__ vecs; } ;
struct TYPE_91__ {TYPE_22__ egress; } ;
typedef TYPE_31__ quicly_streambuf_t ;
struct TYPE_92__ {TYPE_31__* data; } ;
typedef TYPE_32__ quicly_stream_t ;
typedef int quicly_stream_id_t ;
struct TYPE_73__ {int* base; scalar_t__ len; } ;
struct TYPE_95__ {int* base; scalar_t__ len; } ;
struct TYPE_78__ {int len; int base; } ;
struct TYPE_89__ {TYPE_1__ encrypted; } ;
struct TYPE_101__ {TYPE_35__ src; TYPE_2__ dest; } ;
struct TYPE_100__ {scalar_t__ len; int* base; } ;
struct TYPE_93__ {scalar_t__ version; TYPE_15__ octets; TYPE_5__ cid; TYPE_4__ token; int encrypted_off; } ;
typedef TYPE_33__ quicly_decoded_packet_t ;
struct TYPE_88__ {int alarm_at; } ;
struct TYPE_90__ {TYPE_29__ loss; int send_ack_at; int packet_number; int sentmap; } ;
struct TYPE_82__ {int sa_family; } ;
struct TYPE_99__ {TYPE_23__ sa; } ;
struct TYPE_86__ {TYPE_44__ address; } ;
struct TYPE_84__ {int disable_active_migration; } ;
struct TYPE_74__ {int validated; } ;
struct TYPE_98__ {int* len; int* cid; } ;
struct TYPE_85__ {TYPE_25__ transport_params; TYPE_16__ address_validation; TYPE_42__ cid; } ;
struct TYPE_71__ {int received; } ;
struct TYPE_70__ {int received; } ;
struct TYPE_72__ {TYPE_13__ num_bytes; TYPE_12__ num_packets; } ;
struct TYPE_87__ {int state; TYPE_27__ host; TYPE_26__ peer; TYPE_14__ stats; int ctx; } ;
struct TYPE_83__ {int handshake_scheduled_for_discard; int tls; } ;
struct TYPE_97__ {int* base; scalar_t__ len; } ;
struct TYPE_94__ {TYPE_30__ egress; TYPE_28__ super; TYPE_24__ crypto; TYPE_20__* handshake; TYPE_17__* initial; TYPE_11__* application; TYPE_42__ retry_odcid; TYPE_3__ token; } ;
typedef TYPE_34__ quicly_conn_t ;
typedef TYPE_35__ ptls_iovec_t ;
typedef int ptls_cipher_context_t ;
typedef int ptls_aead_context_t ;
struct TYPE_104__ {int * one_rtt; int * zero_rtt; } ;
struct TYPE_105__ {int ** aead; TYPE_8__ header_protection; } ;
struct TYPE_103__ {int * aead; int * header_protection; } ;
struct TYPE_96__ {int * aead; int * header_protection; } ;
struct TYPE_102__ {TYPE_39__ ingress; TYPE_39__ egress; } ;
struct TYPE_76__ {int * aead; } ;
struct TYPE_77__ {TYPE_18__ egress; TYPE_7__ ingress; } ;
struct TYPE_79__ {TYPE_19__ cipher; } ;
struct TYPE_75__ {TYPE_6__ cipher; } ;
struct TYPE_68__ {TYPE_9__ ingress; } ;
struct TYPE_69__ {TYPE_10__ cipher; } ;


 int AF_UNSPEC ;
 int CRYPTO_DECRYPT ;
 int PTLS_ERROR_NO_MEMORY ;
 size_t QUICLY_EPOCH_0RTT ;




 int QUICLY_FRAME_TYPE_PADDING ;
 scalar_t__ QUICLY_MAX_TOKEN_LEN ;
 scalar_t__ QUICLY_PACKET_IS_LONG_HEADER (int) ;

 int QUICLY_PACKET_TYPE_BITMASK ;



 int QUICLY_PROBE (int ,TYPE_34__*,int ,int*,...) ;
 int QUICLY_PROBE_HEXDUMP (int ,int ) ;

 int QUICLY_STATE_CONNECTED ;

 int QUICLY_STATE_FIRSTFLIGHT ;
 int QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION ;
 int QUICTRACE_RECV ;
 int RECEIVE ;
 int assert (int ) ;
 int assert_consistency (TYPE_34__*,int ) ;
 TYPE_35__ decrypt_packet (int *,int **,int *,TYPE_33__*,int *) ;
 int discard_handshake_context ;
 int discard_initial_context (TYPE_34__*) ;
 int discard_sentmap_by_epoch (TYPE_34__*,unsigned int) ;
 int dispose_cipher (TYPE_39__*) ;
 int free (int*) ;
 int get_aes128gcmsha256 (int ) ;
 int handle_payload (TYPE_34__*,size_t,int*,scalar_t__,int *,int*) ;
 int handle_stateless_reset (TYPE_34__*) ;
 int handle_version_negotiation_packet (TYPE_34__*,TYPE_33__*) ;
 int initiate_close (TYPE_34__*,int,int ,char*) ;
 scalar_t__ is_stateless_reset (TYPE_34__*,TYPE_33__*) ;
 int* malloc (scalar_t__) ;
 int memcpy (int*,int*,scalar_t__) ;
 int now ;
 int probe_now () ;
 int ptls_handshake_is_complete (int ) ;
 TYPE_35__ ptls_iovec_init (int*,int*) ;
 int quicly_cid_is_equal (TYPE_42__*,TYPE_35__) ;
 TYPE_32__* quicly_get_stream (TYPE_34__*,int ) ;
 int quicly_is_client (TYPE_34__*) ;
 int * quicly_sentmap_allocate (int *,int ) ;
 int quicly_sentmap_commit (int *,int ) ;
 int quicly_sentmap_prepare (int *,int ,int ,size_t const) ;
 int record_receipt (TYPE_34__*,struct st_quicly_pn_space_t*,int ,int,size_t) ;
 int set_address (TYPE_44__*,struct sockaddr*) ;
 int set_cid (TYPE_42__*,TYPE_35__) ;
 int setup_initial_encryption (int ,TYPE_39__*,TYPE_39__*,TYPE_35__,int) ;
 int should_send_max_data (TYPE_34__*) ;
 int update_idle_timeout (TYPE_34__*,int) ;
 int update_loss_alarm (TYPE_34__*) ;
 int update_now (int ) ;

int quicly_receive(quicly_conn_t *conn, struct sockaddr *dest_addr, struct sockaddr *src_addr, quicly_decoded_packet_t *packet)
{
    ptls_cipher_context_t *header_protection;
    ptls_aead_context_t **aead;
    struct st_quicly_pn_space_t **space;
    size_t epoch;
    ptls_iovec_t payload;
    uint64_t pn, offending_frame_type = QUICLY_FRAME_TYPE_PADDING;
    int is_ack_only, ret;

    update_now(conn->super.ctx);

    QUICLY_PROBE(RECEIVE, conn, probe_now(), QUICLY_PROBE_HEXDUMP(packet->cid.dest.encrypted.base, packet->cid.dest.encrypted.len),
                 packet->octets.base, packet->octets.len);

    if (is_stateless_reset(conn, packet)) {
        ret = handle_stateless_reset(conn);
        goto Exit;
    }



    switch (conn->super.state) {
    case 129:
        conn->super.state = 128;
        conn->egress.send_ack_at = 0;
        ret = 0;
        goto Exit;
    case 128:
        ret = 0;
        goto Exit;
    default:
        break;
    }

    if (QUICLY_PACKET_IS_LONG_HEADER(packet->octets.base[0])) {
        if (conn->super.state == QUICLY_STATE_FIRSTFLIGHT) {
            if (packet->version == 0)
                return handle_version_negotiation_packet(conn, packet);
        }
        switch (packet->octets.base[0] & QUICLY_PACKET_TYPE_BITMASK) {
        case 130: {

            if (packet->token.len >= QUICLY_MAX_TOKEN_LEN) {
                ret = 134;
                goto Exit;
            }
            ptls_iovec_t odcid = ptls_iovec_init(packet->octets.base + packet->encrypted_off,
                                                 packet->token.base - (packet->octets.base + packet->encrypted_off));
            if (!quicly_cid_is_equal(&conn->super.peer.cid, odcid)) {
                ret = 134;
                goto Exit;
            }
            if (quicly_cid_is_equal(&conn->super.peer.cid, packet->cid.src)) {
                ret = 134;
                goto Exit;
            }

            if (conn->retry_odcid.len != 0) {
                ret = 134;
                goto Exit;
            }

            free(conn->token.base);
            if ((conn->token.base = malloc(packet->token.len)) == ((void*)0)) {
                ret = PTLS_ERROR_NO_MEMORY;
                goto Exit;
            }
            memcpy(conn->token.base, packet->token.base, packet->token.len);
            conn->token.len = packet->token.len;
            conn->retry_odcid = conn->super.peer.cid;

            set_cid(&conn->super.peer.cid, packet->cid.src);

            dispose_cipher(&conn->initial->cipher.ingress);
            dispose_cipher(&conn->initial->cipher.egress);
            if ((ret = setup_initial_encryption(get_aes128gcmsha256(conn->super.ctx), &conn->initial->cipher.ingress,
                                                &conn->initial->cipher.egress,
                                                ptls_iovec_init(conn->super.peer.cid.cid, conn->super.peer.cid.len), 1)) != 0)
                goto Exit;

            ret = discard_sentmap_by_epoch(conn, ~0u);
            goto Exit;
        } break;
        case 131:
            if (conn->initial == ((void*)0) || (header_protection = conn->initial->cipher.ingress.header_protection) == ((void*)0)) {
                ret = 134;
                goto Exit;
            }

            if (conn->super.state == QUICLY_STATE_FIRSTFLIGHT) {
                assert(quicly_is_client(conn));
                memcpy(conn->super.peer.cid.cid, packet->cid.src.base, packet->cid.src.len);
                conn->super.peer.cid.len = packet->cid.src.len;
            }
            aead = &conn->initial->cipher.ingress.aead;
            space = (void *)&conn->initial;
            epoch = 135;
            break;
        case 132:
            if (conn->handshake == ((void*)0) || (header_protection = conn->handshake->cipher.ingress.header_protection) == ((void*)0)) {
                ret = 134;
                goto Exit;
            }
            aead = &conn->handshake->cipher.ingress.aead;
            space = (void *)&conn->handshake;
            epoch = 136;
            break;
        case 133:
            if (quicly_is_client(conn)) {
                ret = 134;
                goto Exit;
            }
            if (conn->application == ((void*)0) ||
                (header_protection = conn->application->cipher.ingress.header_protection.zero_rtt) == ((void*)0)) {
                ret = 134;
                goto Exit;
            }
            aead = &conn->application->cipher.ingress.aead[0];
            space = (void *)&conn->application;
            epoch = QUICLY_EPOCH_0RTT;
            break;
        default:
            ret = 134;
            goto Exit;
        }
    } else {

        if (conn->application == ((void*)0) ||
            (header_protection = conn->application->cipher.ingress.header_protection.one_rtt) == ((void*)0)) {
            ret = 134;
            goto Exit;
        }
        aead = conn->application->cipher.ingress.aead;
        space = (void *)&conn->application;
        epoch = 137;
    }


    if ((payload = decrypt_packet(header_protection, aead, &(*space)->next_expected_packet_number, packet, &pn)).base == ((void*)0)) {
        ret = 134;
        goto Exit;
    }
    if (payload.len == 0) {
        ret = QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION;
        goto Exit;
    }

    QUICLY_PROBE(CRYPTO_DECRYPT, conn, pn, payload.base, payload.len);
    QUICLY_PROBE(QUICTRACE_RECV, conn, probe_now(), pn);


    if (conn->super.state == QUICLY_STATE_FIRSTFLIGHT)
        conn->super.state = QUICLY_STATE_CONNECTED;
    conn->super.stats.num_packets.received += 1;
    conn->super.stats.num_bytes.received += packet->octets.len;


    if (epoch == 136 && conn->initial != ((void*)0)) {


        if ((ret = discard_initial_context(conn)) != 0)
            goto Exit;
        update_loss_alarm(conn);
        conn->super.peer.address_validation.validated = 1;
    }


    if ((ret = handle_payload(conn, epoch, payload.base, payload.len, &offending_frame_type, &is_ack_only)) != 0)
        goto Exit;
    if (*space != ((void*)0)) {
        if ((ret = record_receipt(conn, *space, pn, is_ack_only, epoch)) != 0)
            goto Exit;
    }


    switch (epoch) {
    case 135:
        assert(conn->initial != ((void*)0));
        if (quicly_is_client(conn) && conn->handshake != ((void*)0) && conn->handshake->cipher.egress.aead != ((void*)0)) {
            if ((ret = discard_initial_context(conn)) != 0)
                goto Exit;
            update_loss_alarm(conn);
        }
        break;
    case 136:


        if (!conn->crypto.handshake_scheduled_for_discard && ptls_handshake_is_complete(conn->crypto.tls)) {
            quicly_stream_t *stream = quicly_get_stream(conn, -(quicly_stream_id_t)(1 + 136));
            assert(stream != ((void*)0));
            quicly_streambuf_t *buf = stream->data;
            if (buf->egress.vecs.size == 0) {
                if ((ret = quicly_sentmap_prepare(&conn->egress.sentmap, conn->egress.packet_number, now,
                                                  136)) != 0)
                    goto Exit;
                if (quicly_sentmap_allocate(&conn->egress.sentmap, discard_handshake_context) == ((void*)0)) {
                    ret = PTLS_ERROR_NO_MEMORY;
                    goto Exit;
                }
                quicly_sentmap_commit(&conn->egress.sentmap, 0);
                ++conn->egress.packet_number;
                conn->crypto.handshake_scheduled_for_discard = 1;
            }
        }

        if (quicly_is_client(conn) && conn->super.host.address.sa.sa_family == AF_UNSPEC && dest_addr != ((void*)0) &&
            dest_addr->sa_family != AF_UNSPEC && ptls_handshake_is_complete(conn->crypto.tls) &&
            conn->super.peer.transport_params.disable_active_migration)
            set_address(&conn->super.host.address, dest_addr);
        break;
    case 137:
        if (!is_ack_only && should_send_max_data(conn))
            conn->egress.send_ack_at = 0;
        break;
    default:
        break;
    }

    update_idle_timeout(conn, 1);

Exit:
    switch (ret) {
    case 0:




        if (conn->egress.loss.alarm_at < now)
            conn->egress.loss.alarm_at = now;
        assert_consistency(conn, 0);
        break;
    case 134:
        break;
    default:
        initiate_close(conn, ret, offending_frame_type, "");
        ret = 0;
        break;
    }
    return ret;
}
