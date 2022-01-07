
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int quicly_decoded_packet_t ;
struct TYPE_4__ {size_t len; scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__ quicly_datagram_t ;


 size_t SIZE_MAX ;
 int assert (int) ;
 int quic_ctx ;
 size_t quicly_decode_packet (int *,int *,scalar_t__,size_t) ;

size_t decode_packets(quicly_decoded_packet_t *decoded, quicly_datagram_t **raw, size_t cnt)
{
    size_t ri, dc = 0;

    for (ri = 0; ri != cnt; ++ri) {
        size_t off = 0;
        do {
            size_t dl = quicly_decode_packet(&quic_ctx, decoded + dc, raw[ri]->data.base + off, raw[ri]->data.len - off);
            assert(dl != SIZE_MAX);
            ++dc;
            off += dl;
        } while (off != raw[ri]->data.len);
    }

    return dc;
}
