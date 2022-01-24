#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quicly_decoded_packet_t ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef  TYPE_2__ quicly_datagram_t ;
typedef  int /*<<< orphan*/  packets ;
struct TYPE_9__ {int /*<<< orphan*/  sa; } ;

/* Variables and functions */
 scalar_t__ QUICLY_STATE_CONNECTED ; 
 int /*<<< orphan*/  client ; 
 size_t FUNC0 (int /*<<< orphan*/ *,TYPE_2__**,size_t) ; 
 TYPE_5__ fake_address ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quic_ctx ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__**,size_t*) ; 
 int /*<<< orphan*/  server ; 

__attribute__((used)) static void FUNC11(void)
{
    quicly_datagram_t *packets[32];
    size_t num_packets, num_decoded;
    quicly_decoded_packet_t decoded[32];
    int ret, i;

    /* send CH */
    ret = FUNC6(&client, &quic_ctx, "example.com", &fake_address.sa, NULL, FUNC2(), FUNC4(NULL, 0), NULL,
                         NULL);
    FUNC3(ret == 0);
    num_packets = sizeof(packets) / sizeof(packets[0]);
    ret = FUNC10(client, packets, &num_packets);
    FUNC3(ret == 0);
    FUNC3(num_packets == 1);
    FUNC3(packets[0]->data.len == 1280);

    /* receive CH, send handshake upto ServerFinished */
    num_decoded = FUNC0(decoded, packets, num_packets);
    FUNC3(num_decoded == 1);
    ret = FUNC5(&server, &quic_ctx, NULL, &fake_address.sa, decoded, NULL, FUNC2(), NULL);
    FUNC3(ret == 0);
    FUNC1(packets, num_packets);
    FUNC3(FUNC8(server) == QUICLY_STATE_CONNECTED);
    FUNC3(FUNC7(server));
    num_packets = sizeof(packets) / sizeof(packets[0]);
    ret = FUNC10(server, packets, &num_packets);
    FUNC3(ret == 0);
    FUNC3(num_packets != 0);

    /* receive ServerFinished */
    num_decoded = FUNC0(decoded, packets, num_packets);
    for (i = 0; i != num_decoded; ++i) {
        ret = FUNC9(client, NULL, &fake_address.sa, decoded + i);
        FUNC3(ret == 0);
    }
    FUNC1(packets, num_packets);
    FUNC3(FUNC8(client) == QUICLY_STATE_CONNECTED);
    FUNC3(FUNC7(client));
}