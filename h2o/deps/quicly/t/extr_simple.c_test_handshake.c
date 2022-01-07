
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int quicly_decoded_packet_t ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef TYPE_2__ quicly_datagram_t ;
typedef int packets ;
struct TYPE_9__ {int sa; } ;


 scalar_t__ QUICLY_STATE_CONNECTED ;
 int client ;
 size_t decode_packets (int *,TYPE_2__**,size_t) ;
 TYPE_5__ fake_address ;
 int free_packets (TYPE_2__**,size_t) ;
 int new_master_id () ;
 int ok (int) ;
 int ptls_iovec_init (int *,int ) ;
 int quic_ctx ;
 int quicly_accept (int *,int *,int *,int *,int *,int *,int ,int *) ;
 int quicly_connect (int *,int *,char*,int *,int *,int ,int ,int *,int *) ;
 int quicly_connection_is_ready (int ) ;
 scalar_t__ quicly_get_state (int ) ;
 int quicly_receive (int ,int *,int *,int *) ;
 int quicly_send (int ,TYPE_2__**,size_t*) ;
 int server ;

__attribute__((used)) static void test_handshake(void)
{
    quicly_datagram_t *packets[32];
    size_t num_packets, num_decoded;
    quicly_decoded_packet_t decoded[32];
    int ret, i;


    ret = quicly_connect(&client, &quic_ctx, "example.com", &fake_address.sa, ((void*)0), new_master_id(), ptls_iovec_init(((void*)0), 0), ((void*)0),
                         ((void*)0));
    ok(ret == 0);
    num_packets = sizeof(packets) / sizeof(packets[0]);
    ret = quicly_send(client, packets, &num_packets);
    ok(ret == 0);
    ok(num_packets == 1);
    ok(packets[0]->data.len == 1280);


    num_decoded = decode_packets(decoded, packets, num_packets);
    ok(num_decoded == 1);
    ret = quicly_accept(&server, &quic_ctx, ((void*)0), &fake_address.sa, decoded, ((void*)0), new_master_id(), ((void*)0));
    ok(ret == 0);
    free_packets(packets, num_packets);
    ok(quicly_get_state(server) == QUICLY_STATE_CONNECTED);
    ok(quicly_connection_is_ready(server));
    num_packets = sizeof(packets) / sizeof(packets[0]);
    ret = quicly_send(server, packets, &num_packets);
    ok(ret == 0);
    ok(num_packets != 0);


    num_decoded = decode_packets(decoded, packets, num_packets);
    for (i = 0; i != num_decoded; ++i) {
        ret = quicly_receive(client, ((void*)0), &fake_address.sa, decoded + i);
        ok(ret == 0);
    }
    free_packets(packets, num_packets);
    ok(quicly_get_state(client) == QUICLY_STATE_CONNECTED);
    ok(quicly_connection_is_ready(client));
}
