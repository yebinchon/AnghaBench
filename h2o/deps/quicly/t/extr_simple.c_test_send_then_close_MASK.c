#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  ingress; } ;
struct TYPE_16__ {int is_detached; TYPE_4__ super; } ;
typedef  TYPE_5__ test_streambuf_t ;
struct TYPE_13__ {int num_ranges; TYPE_1__* ranges; } ;
struct TYPE_14__ {TYPE_2__ acked; } ;
struct TYPE_17__ {int /*<<< orphan*/  recvstate; TYPE_3__ sendstate; TYPE_5__* data; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_6__ quicly_stream_t ;
struct TYPE_12__ {scalar_t__ start; int end; } ;

/* Variables and functions */
 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  quic_now ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_6__**,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    int ret;

    ret = FUNC4(client, &client_stream, 0);
    FUNC2(ret == 0);
    client_streambuf = client_stream->data;
    FUNC7(client_stream, "hello", 5);

    FUNC9(client, server);

    server_stream = FUNC3(server, client_stream->stream_id);
    FUNC0(server_stream != NULL);
    server_streambuf = server_stream->data;
    FUNC2(FUNC1(&server_streambuf->super.ingress, "hello"));
    FUNC8(server_stream, 5);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC9(server, client);

    FUNC2(client_stream->sendstate.acked.num_ranges == 1);
    FUNC2(client_stream->sendstate.acked.ranges[0].start == 0);
    FUNC2(client_stream->sendstate.acked.ranges[0].end == 5);
    FUNC6(client_stream);

    FUNC9(client, server);

    FUNC2(FUNC5(&server_stream->recvstate));
    FUNC2(FUNC1(&server_streambuf->super.ingress, ""));
    FUNC6(server_stream);

    FUNC9(server, client);

    FUNC2(client_streambuf->is_detached);
    FUNC2(!server_streambuf->is_detached);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC9(client, server);

    FUNC2(server_streambuf->is_detached);
}