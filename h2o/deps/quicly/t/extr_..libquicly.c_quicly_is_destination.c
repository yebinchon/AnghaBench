
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_19__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct sockaddr {int dummy; } ;
struct TYPE_28__ {scalar_t__ master_id; scalar_t__ thread_id; scalar_t__ node_id; } ;
struct TYPE_29__ {TYPE_4__ plaintext; int encrypted; scalar_t__ might_be_client_generated; } ;
struct TYPE_30__ {TYPE_5__ dest; } ;
struct TYPE_25__ {int * base; } ;
struct TYPE_22__ {int _is_stateless_reset_cached; TYPE_6__ cid; TYPE_1__ octets; } ;
typedef TYPE_12__ quicly_decoded_packet_t ;
struct TYPE_24__ {scalar_t__ sa_family; } ;
struct TYPE_33__ {TYPE_19__ sa; } ;
struct TYPE_20__ {TYPE_9__ address; int offered_cid; } ;
struct TYPE_31__ {TYPE_19__ sa; } ;
struct TYPE_32__ {TYPE_7__ address; } ;
struct TYPE_27__ {scalar_t__ master_id; scalar_t__ thread_id; scalar_t__ node_id; } ;
struct TYPE_21__ {TYPE_10__ host; TYPE_8__ peer; TYPE_3__ master_id; TYPE_2__* ctx; } ;
struct TYPE_23__ {TYPE_11__ super; } ;
typedef TYPE_13__ quicly_conn_t ;
struct TYPE_26__ {int * cid_encryptor; } ;


 scalar_t__ AF_UNSPEC ;
 scalar_t__ QUICLY_PACKET_IS_LONG_HEADER (int ) ;
 int QUICLY__DECODED_PACKET_CACHED_IS_STATELESS_RESET ;
 int QUICLY__DECODED_PACKET_CACHED_NOT_STATELESS_RESET ;
 scalar_t__ compare_socket_address (TYPE_19__*,struct sockaddr*) ;
 scalar_t__ is_stateless_reset (TYPE_13__*,TYPE_12__*) ;
 scalar_t__ quicly_cid_is_equal (int *,int ) ;
 int quicly_is_client (TYPE_13__*) ;

int quicly_is_destination(quicly_conn_t *conn, struct sockaddr *dest_addr, struct sockaddr *src_addr,
                          quicly_decoded_packet_t *decoded)
{
    if (QUICLY_PACKET_IS_LONG_HEADER(decoded->octets.base[0])) {

        if (compare_socket_address(&conn->super.peer.address.sa, src_addr) != 0)
            return 0;
        if (conn->super.host.address.sa.sa_family != AF_UNSPEC &&
            compare_socket_address(&conn->super.host.address.sa, dest_addr) != 0)
            return 0;

        if (!quicly_is_client(conn) && decoded->cid.dest.might_be_client_generated) {
            if (quicly_cid_is_equal(&conn->super.host.offered_cid, decoded->cid.dest.encrypted))
                goto Found;
        }
    }

    if (conn->super.ctx->cid_encryptor != ((void*)0)) {
        if (conn->super.master_id.master_id == decoded->cid.dest.plaintext.master_id &&
            conn->super.master_id.thread_id == decoded->cid.dest.plaintext.thread_id &&
            conn->super.master_id.node_id == decoded->cid.dest.plaintext.node_id)
            goto Found;
        if (is_stateless_reset(conn, decoded))
            goto Found_StatelessReset;
    } else {
        if (compare_socket_address(&conn->super.peer.address.sa, src_addr) == 0)
            goto Found;
        if (conn->super.host.address.sa.sa_family != AF_UNSPEC &&
            compare_socket_address(&conn->super.host.address.sa, dest_addr) != 0)
            return 0;
    }


    return 0;

Found:
    decoded->_is_stateless_reset_cached = QUICLY__DECODED_PACKET_CACHED_NOT_STATELESS_RESET;
    return 1;

Found_StatelessReset:
    decoded->_is_stateless_reset_cached = QUICLY__DECODED_PACKET_CACHED_IS_STATELESS_RESET;
    return 1;
}
