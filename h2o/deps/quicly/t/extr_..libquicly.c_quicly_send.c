
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_20__ ;
typedef struct TYPE_40__ TYPE_1__ ;
typedef struct TYPE_39__ TYPE_17__ ;
typedef struct TYPE_38__ TYPE_16__ ;
typedef struct TYPE_37__ TYPE_15__ ;
typedef struct TYPE_36__ TYPE_14__ ;
typedef struct TYPE_35__ TYPE_13__ ;
typedef struct TYPE_34__ TYPE_12__ ;
typedef struct TYPE_33__ TYPE_11__ ;
typedef struct TYPE_32__ TYPE_10__ ;


typedef int quicly_sentmap_iter_t ;
struct TYPE_35__ {int first_byte; TYPE_12__* cipher; } ;
struct TYPE_42__ {int * member_2; int * member_1; int * member_0; } ;
struct TYPE_40__ {int member_1; int * member_0; } ;
struct TYPE_38__ {size_t member_3; size_t num_packets; TYPE_13__ current; int ** member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_16__ quicly_send_context_t ;
typedef int quicly_datagram_t ;
struct TYPE_36__ {scalar_t__ alarm_at; } ;
struct TYPE_37__ {scalar_t__ send_ack_at; TYPE_14__ loss; } ;
struct TYPE_43__ {int len; int cid; } ;
struct TYPE_44__ {TYPE_3__ cid; } ;
struct TYPE_45__ {scalar_t__ state; TYPE_4__ peer; int ctx; } ;
struct TYPE_39__ {TYPE_15__ egress; TYPE_11__* initial; TYPE_9__* handshake; TYPE_7__* application; TYPE_5__ super; } ;
typedef TYPE_17__ quicly_conn_t ;
struct TYPE_34__ {int * aead; } ;
struct TYPE_48__ {TYPE_12__ egress; } ;
struct TYPE_49__ {TYPE_8__ cipher; } ;
struct TYPE_46__ {TYPE_12__ egress; } ;
struct TYPE_47__ {TYPE_6__ cipher; scalar_t__ one_rtt_writable; } ;
struct TYPE_41__ {scalar_t__ packet_number; scalar_t__ sent_at; } ;
struct TYPE_32__ {TYPE_12__ egress; } ;
struct TYPE_33__ {TYPE_10__ cipher; } ;


 int QUICLY_ERROR_FREE_CONNECTION ;
 int QUICLY_PACKET_TYPE_HANDSHAKE ;
 int QUICLY_PACKET_TYPE_INITIAL ;
 int QUICLY_PROBE (int ,TYPE_17__*,int ,scalar_t__,int ) ;
 int QUICLY_PROBE_HEXDUMP (int ,int ) ;
 int QUICLY_QUIC_BIT ;
 scalar_t__ QUICLY_STATE_CLOSING ;
 int SEND ;
 scalar_t__ UINT64_MAX ;
 int assert (int) ;
 int assert_consistency (TYPE_17__*,int) ;
 int commit_send_packet (TYPE_17__*,TYPE_16__*,int ) ;
 int destroy_all_streams (TYPE_17__*,int ,int ) ;
 int do_send (TYPE_17__*,TYPE_16__*) ;
 scalar_t__ get_sentmap_expiration_time (TYPE_17__*) ;
 int init_acks_iter (TYPE_17__*,int *) ;
 scalar_t__ now ;
 int probe_now () ;
 scalar_t__ quicly_get_first_timeout (TYPE_17__*) ;
 TYPE_20__* quicly_sentmap_get (int *) ;
 int send_connection_close (TYPE_17__*,TYPE_16__*) ;
 int update_now (int ) ;

int quicly_send(quicly_conn_t *conn, quicly_datagram_t **packets, size_t *num_packets)
{
    quicly_send_context_t s = {{((void*)0), -1}, {((void*)0), ((void*)0), ((void*)0)}, packets, *num_packets};
    int ret;

    update_now(conn->super.ctx);


    if (now < quicly_get_first_timeout(conn)) {
        *num_packets = 0;
        return 0;
    }

    QUICLY_PROBE(SEND, conn, probe_now(), conn->super.state,
                 QUICLY_PROBE_HEXDUMP(conn->super.peer.cid.cid, conn->super.peer.cid.len));

    if (conn->super.state >= QUICLY_STATE_CLOSING) {

        quicly_sentmap_iter_t iter;
        init_acks_iter(conn, &iter);
        if (quicly_sentmap_get(&iter)->packet_number == UINT64_MAX)
            return QUICLY_ERROR_FREE_CONNECTION;
        if (conn->super.state == QUICLY_STATE_CLOSING && conn->egress.send_ack_at <= now) {
            destroy_all_streams(conn, 0, 0);

            if (conn->application != ((void*)0) && conn->application->one_rtt_writable) {
                s.current.cipher = &conn->application->cipher.egress;
                s.current.first_byte = QUICLY_QUIC_BIT;
            } else if (conn->handshake != ((void*)0) && (s.current.cipher = &conn->handshake->cipher.egress)->aead != ((void*)0)) {
                s.current.first_byte = QUICLY_PACKET_TYPE_HANDSHAKE;
            } else {
                s.current.cipher = &conn->initial->cipher.egress;
                assert(s.current.cipher->aead != ((void*)0));
                s.current.first_byte = QUICLY_PACKET_TYPE_INITIAL;
            }
            if ((ret = send_connection_close(conn, &s)) != 0)
                return ret;
            if ((ret = commit_send_packet(conn, &s, 0)) != 0)
                return ret;
        }
        conn->egress.send_ack_at = quicly_sentmap_get(&iter)->sent_at + get_sentmap_expiration_time(conn);
        assert(conn->egress.send_ack_at > now);
        *num_packets = s.num_packets;
        return 0;
    }


    if ((ret = do_send(conn, &s)) != 0)
        return ret;




    if (s.num_packets == 0 && conn->egress.loss.alarm_at <= now) {
        assert(conn->egress.loss.alarm_at == now);
        if ((ret = do_send(conn, &s)) != 0)
            return ret;
    }
    assert_consistency(conn, 1);

    *num_packets = s.num_packets;
    return ret;
}
