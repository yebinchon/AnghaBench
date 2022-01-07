
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr {int dummy; } ;
struct TYPE_13__ {int len; int * base; } ;
struct TYPE_14__ {TYPE_2__ data; int src; int dest; } ;
typedef TYPE_3__ quicly_datagram_t ;
struct TYPE_15__ {TYPE_1__* tls; int max_packet_size; TYPE_7__* packet_allocator; } ;
typedef TYPE_4__ quicly_context_t ;
struct TYPE_16__ {int len; int base; } ;
typedef TYPE_5__ ptls_iovec_t ;
struct TYPE_17__ {TYPE_3__* (* alloc_packet ) (TYPE_7__*,int ) ;} ;
struct TYPE_12__ {int (* random_bytes ) (int *,int) ;} ;


 int QUICLY_LONG_HEADER_BIT ;
 int QUICLY_PROTOCOL_VERSION ;
 int memcpy (int *,int ,int ) ;
 int * quicly_encode32 (int *,int ) ;
 int set_address (int *,struct sockaddr*) ;
 TYPE_3__* stub1 (TYPE_7__*,int ) ;
 int stub2 (int *,int) ;

quicly_datagram_t *quicly_send_version_negotiation(quicly_context_t *ctx, struct sockaddr *dest_addr, ptls_iovec_t dest_cid,
                                                   struct sockaddr *src_addr, ptls_iovec_t src_cid)
{
    quicly_datagram_t *packet;
    uint8_t *dst;

    if ((packet = ctx->packet_allocator->alloc_packet(ctx->packet_allocator, ctx->max_packet_size)) == ((void*)0))
        return ((void*)0);
    set_address(&packet->dest, dest_addr);
    set_address(&packet->src, src_addr);
    dst = packet->data.base;


    ctx->tls->random_bytes(dst, 1);
    *dst |= QUICLY_LONG_HEADER_BIT;
    ++dst;

    dst = quicly_encode32(dst, 0);

    *dst++ = dest_cid.len;
    if (dest_cid.len != 0) {
        memcpy(dst, dest_cid.base, dest_cid.len);
        dst += dest_cid.len;
    }
    *dst++ = src_cid.len;
    if (src_cid.len != 0) {
        memcpy(dst, src_cid.base, src_cid.len);
        dst += src_cid.len;
    }

    dst = quicly_encode32(dst, QUICLY_PROTOCOL_VERSION);

    packet->data.len = dst - packet->data.base;

    return packet;
}
