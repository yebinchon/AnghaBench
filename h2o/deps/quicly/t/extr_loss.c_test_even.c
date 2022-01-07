
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct loss_cond_t {int (* cb ) (struct loss_cond_t*) ;} ;
typedef void* quicly_loss_conf_t ;
typedef int quicly_decoded_packet_t ;
typedef int quicly_datagram_t ;
struct TYPE_6__ {int sa; } ;
struct TYPE_5__ {void* loss; } ;


 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ;
 void* QUICLY_LOSS_SPEC_CONF ;
 scalar_t__ QUICLY_STATE_CONNECTED ;
 int client ;
 int decode_packets (int *,int **,int) ;
 TYPE_4__ fake_address ;
 int free_packets (int **,int) ;
 int init_cond_even (struct loss_cond_t*) ;
 int new_master_id () ;
 int ok (int) ;
 int ptls_iovec_init (int *,int ) ;
 TYPE_1__ quic_ctx ;
 scalar_t__ quic_now ;
 int quicly_accept (int *,TYPE_1__*,int *,int *,int *,int *,int ,int *) ;
 int quicly_connect (int *,TYPE_1__*,char*,int *,int *,int ,int ,int *,int *) ;
 int quicly_connection_is_ready (int ) ;
 scalar_t__ quicly_get_state (int ) ;
 int quicly_send (int ,int **,size_t*) ;
 int server ;
 int stub1 (struct loss_cond_t*) ;
 int transmit_cond (int ,int ,size_t*,size_t*,struct loss_cond_t*,int ) ;

__attribute__((used)) static void test_even(void)
{
    quicly_loss_conf_t lossconf = QUICLY_LOSS_SPEC_CONF;
    struct loss_cond_t cond_down, cond_up;
    size_t num_sent, num_received;
    int ret;

    quic_ctx.loss = lossconf;
    init_cond_even(&cond_down);
    init_cond_even(&cond_up);

    quic_now = 0;

    {
        quicly_datagram_t *raw;
        size_t num_packets;
        quicly_decoded_packet_t decoded;

        ret = quicly_connect(&client, &quic_ctx, "example.com", &fake_address.sa, ((void*)0), new_master_id(), ptls_iovec_init(((void*)0), 0),
                             ((void*)0), ((void*)0));
        ok(ret == 0);
        num_packets = 1;
        ret = quicly_send(client, &raw, &num_packets);
        ok(ret == 0);
        ok(num_packets == 1);
        decode_packets(&decoded, &raw, 1);
        ok(num_packets == 1);
        ret = quicly_accept(&server, &quic_ctx, ((void*)0), &fake_address.sa, &decoded, ((void*)0), new_master_id(), ((void*)0));
        ok(ret == 0);
        free_packets(&raw, 1);
        cond_up.cb(&cond_up);
    }


    ret = transmit_cond(server, client, &num_sent, &num_received, &cond_down, 0);
    ok(ret == 0);
    ok(num_sent == 2);
    ok(num_received == 1);
    ok(quicly_get_state(client) == QUICLY_STATE_CONNECTED);
    ok(!quicly_connection_is_ready(client));

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;


    ret = transmit_cond(client, server, &num_sent, &num_received, &cond_up, 0);
    ok(ret == 0);
    ok(num_sent == 1);
    ok(num_received == 0);

    ok(quicly_get_state(client) == QUICLY_STATE_CONNECTED);
    ok(!quicly_connection_is_ready(client));

    quic_now += 1000;


    ret = transmit_cond(server, client, &num_sent, &num_received, &cond_down, 0);
    ok(ret == 0);
    ok(num_sent == 1);
    ok(num_received == 1);
    ok(quicly_get_state(client) == QUICLY_STATE_CONNECTED);
    ok(!quicly_connection_is_ready(client));

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;


    ret = transmit_cond(client, server, &num_sent, &num_received, &cond_up, 0);
    ok(ret == 0);
    ok(num_sent == 1);
    ok(num_received == 1);

    quic_now += 1000;


    ret = transmit_cond(server, client, &num_sent, &num_received, &cond_down, 0);
    ok(ret == 0);
    ok(num_sent == 1);
    ok(num_received == 0);

    ok(quicly_get_state(client) == QUICLY_STATE_CONNECTED);
    ok(!quicly_connection_is_ready(client));


    ret = transmit_cond(client, server, &num_sent, &num_received, &cond_up, 0);
    ok(ret == 0);
    ok(num_sent == 1);
    ok(num_received == 0);

    quic_now += 1000;


    ret = transmit_cond(server, client, &num_sent, &num_received, &cond_down, 0);
    ok(ret == 0);
    ok(num_sent == 1);
    ok(num_received == 1);

    ok(quicly_get_state(client) == QUICLY_STATE_CONNECTED);
    ok(quicly_connection_is_ready(client));

    quic_ctx.loss = (quicly_loss_conf_t)QUICLY_LOSS_SPEC_CONF;
}
