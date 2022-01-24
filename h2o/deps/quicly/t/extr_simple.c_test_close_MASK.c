#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quicly_decoded_packet_t ;
typedef  int /*<<< orphan*/  quicly_datagram_t ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ quicly_closed_by_peer_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  sa; } ;
struct TYPE_5__ {TYPE_1__* closed_by_peer; } ;

/* Variables and functions */
 int QUICLY_ERROR_FREE_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ QUICLY_STATE_CLOSING ; 
 scalar_t__ QUICLY_STATE_DRAINING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * client ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 TYPE_3__ fake_address ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__ quic_ctx ; 
 scalar_t__ quic_now ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/ * server ; 
 int test_close_error_code ; 
 int /*<<< orphan*/  test_closeed_by_peer ; 

__attribute__((used)) static void FUNC10(void)
{
    quicly_closed_by_peer_t closed_by_peer = {test_closeed_by_peer}, *orig_closed_by_peer = quic_ctx.closed_by_peer;
    quicly_datagram_t *datagram;
    size_t num_datagrams;
    int64_t client_timeout, server_timeout;
    int ret;

    quic_ctx.closed_by_peer = &closed_by_peer;

    /* client sends close */
    ret = FUNC4(client, FUNC0(12345), "good bye");
    FUNC3(ret == 0);
    FUNC3(FUNC7(client) == QUICLY_STATE_CLOSING);
    FUNC3(FUNC6(client) <= quic_now);
    num_datagrams = 1;
    ret = FUNC9(client, &datagram, &num_datagrams);
    FUNC1(num_datagrams == 1);
    client_timeout = FUNC6(client);
    FUNC3(quic_now < client_timeout && client_timeout < quic_now + 1000); /* 3 pto or something */

    { /* server receives close */
        quicly_decoded_packet_t decoded;
        FUNC2(&decoded, &datagram, 1);
        ret = FUNC8(server, NULL, &fake_address.sa, &decoded);
        FUNC3(ret == 0);
        FUNC3(test_close_error_code == 12345);
        FUNC3(FUNC7(server) == QUICLY_STATE_DRAINING);
        server_timeout = FUNC6(server);
        FUNC3(quic_now < server_timeout && server_timeout < quic_now + 1000); /* 3 pto or something */
    }

    /* nothing sent by the server in response */
    num_datagrams = 1;
    ret = FUNC9(server, &datagram, &num_datagrams);
    FUNC3(ret == 0);
    FUNC3(num_datagrams == 0);

    /* endpoints request discarding state after timeout */
    quic_now = client_timeout < server_timeout ? server_timeout : client_timeout;
    num_datagrams = 1;
    ret = FUNC9(client, &datagram, &num_datagrams);
    FUNC3(ret == QUICLY_ERROR_FREE_CONNECTION);
    FUNC5(client);
    num_datagrams = 1;
    ret = FUNC9(server, &datagram, &num_datagrams);
    FUNC3(ret == QUICLY_ERROR_FREE_CONNECTION);
    FUNC5(server);

    client = NULL;
    server = NULL;
    quic_ctx.closed_by_peer = orig_closed_by_peer;
}