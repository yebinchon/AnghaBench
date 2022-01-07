
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int quicly_packet_allocator_t ;
struct TYPE_5__ {int * base; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ quicly_datagram_t ;


 TYPE_2__* malloc (int) ;

__attribute__((used)) static quicly_datagram_t *default_alloc_packet(quicly_packet_allocator_t *self, size_t payloadsize)
{
    quicly_datagram_t *packet;

    if ((packet = malloc(sizeof(*packet) + payloadsize)) == ((void*)0))
        return ((void*)0);
    packet->data.base = (uint8_t *)packet + sizeof(*packet);

    return packet;
}
