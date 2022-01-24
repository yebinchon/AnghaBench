#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ingress; } ;
struct TYPE_11__ {int is_detached; TYPE_1__ super; } ;
typedef  TYPE_2__ test_streambuf_t ;
struct TYPE_12__ {int /*<<< orphan*/  recvstate; TYPE_2__* data; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_3__ quicly_stream_t ;

/* Variables and functions */
 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  quic_now ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    int ret;

    ret = FUNC5(client, &client_stream, 0);
    FUNC3(ret == 0);
    client_streambuf = client_stream->data;
    FUNC9(client_stream, "hello", 5);

    FUNC11(client, server);
    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC11(server, client);

    server_stream = FUNC4(server, client_stream->stream_id);
    FUNC1(server_stream != NULL);
    server_streambuf = server_stream->data;
    FUNC3(FUNC2(&server_streambuf->super.ingress, "hello"));
    FUNC10(server_stream, 5);

    FUNC9(client_stream, "world", 5);
    FUNC8(client_stream);
    FUNC7(client_stream, FUNC0(
                                           12345)); /* resetting after indicating shutdown is legal; because we might want to
                                                     * abruptly close a stream with lots of data (up to FIN) */

    FUNC11(client, server);

    FUNC3(FUNC2(&server_streambuf->super.ingress, ""));
    FUNC3(FUNC6(&server_stream->recvstate));

    FUNC8(server_stream);

    FUNC11(server, client);

    FUNC3(client_streambuf->is_detached);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC11(client, server);

    FUNC3(server_streambuf->is_detached);
}