#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ingress; } ;
struct TYPE_9__ {int reset_stream; } ;
struct TYPE_11__ {int is_detached; TYPE_2__ super; TYPE_1__ error_received; } ;
typedef  TYPE_3__ test_streambuf_t ;
struct TYPE_12__ {scalar_t__ stream_id; int /*<<< orphan*/  recvstate; TYPE_3__* data; } ;
typedef  TYPE_4__ quicly_stream_t ;

/* Variables and functions */
 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  quic_now ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
    const char *req = "GET / HTTP/1.0\r\n\r\n", *resp = "HTTP/1.0 200 OK\r\n\r\nhello world";
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    int ret;

    ret = FUNC4(client, &client_stream, 0);
    FUNC1(ret == 0);
    FUNC1(client_stream->stream_id == 0);
    client_streambuf = client_stream->data;

    FUNC7(client_stream, req, FUNC8(req));
    FUNC6(client_stream);
    FUNC1(FUNC3(client) == 1);

    FUNC9(client, server);

    server_stream = FUNC2(server, client_stream->stream_id);
    FUNC1(server_stream != NULL);
    server_streambuf = server_stream->data;
    FUNC1(FUNC5(&server_stream->recvstate));
    FUNC1(server_streambuf->error_received.reset_stream == -1);
    FUNC1(FUNC0(&server_streambuf->super.ingress, req));
    FUNC7(server_stream, resp, FUNC8(resp));
    FUNC6(server_stream);
    FUNC1(FUNC3(server) == 1);

    FUNC9(server, client);

    FUNC1(client_streambuf->is_detached);
    FUNC1(client_streambuf->error_received.reset_stream == -1);
    FUNC1(FUNC0(&client_streambuf->super.ingress, resp));
    FUNC1(FUNC3(client) == 0);
    FUNC1(!server_streambuf->is_detached);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC9(client, server);

    FUNC1(server_streambuf->is_detached);
    FUNC1(FUNC3(server) == 0);
}