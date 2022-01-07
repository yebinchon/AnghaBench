
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int quicly_decoded_packet_t ;
typedef int quicly_datagram_t ;
typedef int quicly_conn_t ;
typedef int datagrams ;
struct TYPE_2__ {int sa; } ;


 int QUICLY_ERROR_PACKET_IGNORED ;
 size_t decode_packets (int *,int **,size_t) ;
 TYPE_1__ fake_address ;
 int free_packets (int **,size_t) ;
 int ok (int) ;
 int quicly_receive (int *,int *,int *,int *) ;
 int quicly_send (int *,int **,size_t*) ;

size_t transmit(quicly_conn_t *src, quicly_conn_t *dst)
{
    quicly_datagram_t *datagrams[32];
    size_t num_datagrams, i;
    quicly_decoded_packet_t decoded[32];
    int ret;

    num_datagrams = sizeof(datagrams) / sizeof(datagrams[0]);
    ret = quicly_send(src, datagrams, &num_datagrams);
    ok(ret == 0);

    if (num_datagrams != 0) {
        size_t num_packets = decode_packets(decoded, datagrams, num_datagrams);
        for (i = 0; i != num_packets; ++i) {
            ret = quicly_receive(dst, ((void*)0), &fake_address.sa, decoded + i);
            ok(ret == 0 || ret == QUICLY_ERROR_PACKET_IGNORED);
        }
        free_packets(datagrams, num_datagrams);
    }

    return num_datagrams;
}
