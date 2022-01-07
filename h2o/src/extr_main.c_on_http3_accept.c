
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_25__ ;
typedef struct TYPE_30__ TYPE_24__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;


typedef int uint8_t ;
struct init_ebpf_key_info_t {int * member_1; int * member_0; } ;
typedef int scid ;
struct TYPE_29__ {int encrypted; } ;
struct TYPE_32__ {TYPE_1__ dest; int src; } ;
struct TYPE_28__ {scalar_t__ len; } ;
struct TYPE_34__ {TYPE_2__ cid; TYPE_14__ token; } ;
typedef TYPE_4__ quicly_decoded_packet_t ;
typedef int quicly_datagram_t ;
struct TYPE_35__ {int is_retry; } ;
typedef TYPE_5__ quicly_address_token_plaintext_t ;
struct TYPE_36__ {int sa; } ;
typedef TYPE_6__ quicly_address_t ;
typedef int ptls_aead_context_t ;
struct TYPE_30__ {TYPE_12__* quic; int loop; } ;
struct TYPE_37__ {int send_retry; TYPE_24__ super; } ;
typedef TYPE_7__ h2o_http3_server_ctx_t ;
typedef int h2o_http3_ctx_t ;
typedef int h2o_http3_conn_t ;
struct TYPE_38__ {int quic_send_retry; int skip_tracing; } ;
typedef TYPE_8__ h2o_ebpf_map_value_t ;
struct TYPE_33__ {int conn_callbacks; } ;
struct TYPE_31__ {scalar_t__ max_connections; scalar_t__ max_quic_connections; TYPE_3__ quic; } ;
struct TYPE_27__ {TYPE_11__* packet_allocator; } ;
struct TYPE_26__ {int (* free_packet ) (TYPE_11__*,int *) ;} ;




 int assert (int ) ;
 TYPE_25__ conf ;
 int h2o_http3_send_datagram (TYPE_24__*,int *) ;
 int * h2o_http3_server_accept (TYPE_7__*,TYPE_6__*,TYPE_6__*,TYPE_4__*,TYPE_5__*,int ,int *) ;
 TYPE_8__ h2o_socket_ebpf_lookup (int ,int ,struct init_ebpf_key_info_t*) ;
 int init_ebpf_key_info ;
 scalar_t__ num_connections (int) ;
 scalar_t__ num_quic_connections (int) ;
 int num_sessions (int) ;
 int ptls_iovec_init (int *,int) ;
 int ptls_openssl_random_bytes (int *,int) ;
 scalar_t__ quic_decrypt_address_token (TYPE_5__*,TYPE_14__) ;
 int * quic_get_address_token_encryptor (int *) ;
 int * quicly_send_retry (TYPE_12__*,int *,int *,int ,int *,int ,int ,int ,int ) ;
 int stub1 (TYPE_11__*,int *) ;
 scalar_t__ validate_token (TYPE_7__*,int *,int ,int ,TYPE_5__*) ;

__attribute__((used)) static h2o_http3_conn_t *on_http3_accept(h2o_http3_ctx_t *_ctx, quicly_address_t *destaddr, quicly_address_t *srcaddr,
                                         quicly_decoded_packet_t *packet)
{
    h2o_http3_server_ctx_t *ctx = (void *)_ctx;
    struct init_ebpf_key_info_t ebpf_keyinfo = {&destaddr->sa, &srcaddr->sa};
    h2o_ebpf_map_value_t ebpf_value = h2o_socket_ebpf_lookup(ctx->super.loop, init_ebpf_key_info, &ebpf_keyinfo);
    quicly_address_token_plaintext_t *token = ((void*)0), token_buf;
    h2o_http3_conn_t *conn;


    if (num_connections(0) >= conf.max_connections || num_quic_connections(0) >= conf.max_quic_connections)
        return ((void*)0);


    if (packet->token.len != 0) {
        if (quic_decrypt_address_token(&token_buf, packet->token) == 0 &&
            validate_token(ctx, &srcaddr->sa, packet->cid.src, packet->cid.dest.encrypted, &token_buf))
            token = &token_buf;
    }


    if (token == ((void*)0) || !token->is_retry) {
        int send_retry = ctx->send_retry;
        switch (ebpf_value.quic_send_retry) {
        case 128:
            send_retry = 1;
            break;
        case 129:
            send_retry = 0;
            break;
        default:
            break;
        }
        if (send_retry) {
            uint8_t scid[16], token_prefix;
            ptls_openssl_random_bytes(scid, sizeof(scid));
            ptls_aead_context_t *aead = quic_get_address_token_encryptor(&token_prefix);
            quicly_datagram_t *rp = quicly_send_retry(ctx->super.quic, aead, &srcaddr->sa, packet->cid.src, &destaddr->sa,
                                                      ptls_iovec_init(scid, sizeof(scid)), packet->cid.dest.encrypted,
                                                      ptls_iovec_init(&token_prefix, 1), ptls_iovec_init(((void*)0), 0));
            assert(rp != ((void*)0));
            h2o_http3_send_datagram(&ctx->super, rp);
            ctx->super.quic->packet_allocator->free_packet(ctx->super.quic->packet_allocator, rp);
            return ((void*)0);
        }
    }


    if ((conn = h2o_http3_server_accept(ctx, destaddr, srcaddr, packet, token, ebpf_value.skip_tracing,
                                        &conf.quic.conn_callbacks)) == ((void*)0))
        return ((void*)0);
    num_connections(1);
    num_quic_connections(1);
    num_sessions(1);
    return conn;
}
