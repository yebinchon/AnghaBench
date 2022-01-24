#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct loss_cond_t {int /*<<< orphan*/  (* cb ) (struct loss_cond_t*) ;} ;
typedef  void* quicly_loss_conf_t ;
typedef  int /*<<< orphan*/  quicly_decoded_packet_t ;
typedef  int /*<<< orphan*/  quicly_datagram_t ;
struct TYPE_6__ {int /*<<< orphan*/  sa; } ;
struct TYPE_5__ {void* loss; } ;

/* Variables and functions */
 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ; 
 void* QUICLY_LOSS_SPEC_CONF ; 
 scalar_t__ QUICLY_STATE_CONNECTED ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 TYPE_4__ fake_address ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (struct loss_cond_t*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ quic_ctx ; 
 scalar_t__ quic_now ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC11 (struct loss_cond_t*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*,struct loss_cond_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
    quicly_loss_conf_t lossconf = QUICLY_LOSS_SPEC_CONF;
    struct loss_cond_t cond_down, cond_up;
    size_t num_sent, num_received;
    int ret;

    quic_ctx.loss = lossconf;
    FUNC2(&cond_down);
    FUNC2(&cond_up);

    quic_now = 0;

    { /* transmit first flight */
        quicly_datagram_t *raw;
        size_t num_packets;
        quicly_decoded_packet_t decoded;

        ret = FUNC7(&client, &quic_ctx, "example.com", &fake_address.sa, NULL, FUNC3(), FUNC5(NULL, 0),
                             NULL, NULL);
        FUNC4(ret == 0);
        num_packets = 1;
        ret = FUNC10(client, &raw, &num_packets);
        FUNC4(ret == 0);
        FUNC4(num_packets == 1);
        FUNC0(&decoded, &raw, 1);
        FUNC4(num_packets == 1);
        ret = FUNC6(&server, &quic_ctx, NULL, &fake_address.sa, &decoded, NULL, FUNC3(), NULL);
        FUNC4(ret == 0);
        FUNC1(&raw, 1);
        cond_up.cb(&cond_up);
    }

    /* drop 2nd packet from server */
    ret = FUNC12(server, client, &num_sent, &num_received, &cond_down, 0);
    FUNC4(ret == 0);
    FUNC4(num_sent == 2);
    FUNC4(num_received == 1);
    FUNC4(FUNC9(client) == QUICLY_STATE_CONNECTED);
    FUNC4(!FUNC8(client));

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;

    /* client sends delayed-ack that gets dropped */
    ret = FUNC12(client, server, &num_sent, &num_received, &cond_up, 0);
    FUNC4(ret == 0);
    FUNC4(num_sent == 1);
    FUNC4(num_received == 0);

    FUNC4(FUNC9(client) == QUICLY_STATE_CONNECTED);
    FUNC4(!FUNC8(client));

    quic_now += 1000;

    /* server resends the contents of all the packets (in cleartext) */
    ret = FUNC12(server, client, &num_sent, &num_received, &cond_down, 0);
    FUNC4(ret == 0);
    FUNC4(num_sent == 1);
    FUNC4(num_received == 1);
    FUNC4(FUNC9(client) == QUICLY_STATE_CONNECTED);
    FUNC4(!FUNC8(client));

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;

    /* client arms the retransmit timer */
    ret = FUNC12(client, server, &num_sent, &num_received, &cond_up, 0);
    FUNC4(ret == 0);
    FUNC4(num_sent == 1);
    FUNC4(num_received == 1);

    quic_now += 1000;

    /* server resends the contents of all the packets (in cleartext) */
    ret = FUNC12(server, client, &num_sent, &num_received, &cond_down, 0);
    FUNC4(ret == 0);
    FUNC4(num_sent == 1);
    FUNC4(num_received == 0);

    FUNC4(FUNC9(client) == QUICLY_STATE_CONNECTED);
    FUNC4(!FUNC8(client));

    /* client sends a probe, that gets lost */
    ret = FUNC12(client, server, &num_sent, &num_received, &cond_up, 0);
    FUNC4(ret == 0);
    FUNC4(num_sent == 1);
    FUNC4(num_received == 0);

    quic_now += 1000;

    /* server retransmits the handshake packets */
    ret = FUNC12(server, client, &num_sent, &num_received, &cond_down, 0);
    FUNC4(ret == 0);
    FUNC4(num_sent == 1);
    FUNC4(num_received == 1);

    FUNC4(FUNC9(client) == QUICLY_STATE_CONNECTED);
    FUNC4(FUNC8(client));

    quic_ctx.loss = (quicly_loss_conf_t)QUICLY_LOSS_SPEC_CONF;
}