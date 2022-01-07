
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_packet_allocator_t ;
typedef int quicly_datagram_t ;


 int free (int *) ;

__attribute__((used)) static void default_free_packet(quicly_packet_allocator_t *self, quicly_datagram_t *packet)
{
    free(packet);
}
