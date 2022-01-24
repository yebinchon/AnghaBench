#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {scalar_t__ reset_stream; scalar_t__ stop_sending; } ;
struct TYPE_9__ {int is_detached; TYPE_1__ error_received; } ;
typedef  TYPE_2__ test_streambuf_t ;
struct TYPE_10__ {int /*<<< orphan*/  recvstate; int /*<<< orphan*/  sendstate; TYPE_2__* data; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_3__ quicly_stream_t ;

/* Variables and functions */
 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  quic_now ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    uint64_t stream_id;
    int ret;

    /* client sends STOP_SENDING and RST_STREAM */
    ret = FUNC4(client, &client_stream, 0);
    FUNC1(ret == 0);
    stream_id = client_stream->stream_id;
    client_streambuf = client_stream->data;
    FUNC7(client_stream, FUNC0(12345));
    FUNC6(client_stream, FUNC0(54321));

    FUNC9(client, server);

    /* server sends RST_STREAM and ACKs to the packets received */
    FUNC1(FUNC3(server) == 1);
    server_stream = FUNC2(server, stream_id);
    FUNC1(server_stream != NULL);
    server_streambuf = server_stream->data;
    FUNC1(FUNC8(&server_stream->sendstate));
    FUNC1(FUNC5(&server_stream->recvstate));
    FUNC1(server_streambuf->error_received.reset_stream == FUNC0(12345));
    FUNC1(server_streambuf->error_received.stop_sending == FUNC0(54321));

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC9(server, client);

    /* client closes the stream */
    FUNC1(client_streambuf->is_detached);
    FUNC1(client_streambuf->error_received.stop_sending == -1);
    FUNC1(client_streambuf->error_received.reset_stream == FUNC0(54321));
    FUNC1(FUNC3(client) == 0);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC9(client, server);

    FUNC1(server_streambuf->is_detached);
    FUNC1(FUNC3(server) == 0);
}