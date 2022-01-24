#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ reset_stream; scalar_t__ stop_sending; } ;
struct TYPE_18__ {int is_detached; TYPE_2__ error_received; } ;
typedef  TYPE_3__ test_streambuf_t ;
struct TYPE_19__ {int streams_blocked; TYPE_3__* data; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_4__ quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_decoded_packet_t ;
typedef  int /*<<< orphan*/  quicly_datagram_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
struct TYPE_16__ {size_t max_streams_bidi; } ;
struct TYPE_15__ {int /*<<< orphan*/  sa; } ;
struct TYPE_14__ {TYPE_1__ transport_params; } ;

/* Variables and functions */
 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 TYPE_13__ fake_address ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_10__ quic_ctx ; 
 int /*<<< orphan*/  quic_now ; 
 int FUNC7 (int /*<<< orphan*/ **,TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,TYPE_10__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC15 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC17(void)
{
    quicly_conn_t *client, *server;
    size_t limit = quic_ctx.transport_params.max_streams_bidi;
    quicly_stream_t *client_streams[limit + 2], *server_stream;
    test_streambuf_t *client_streambufs[limit + 1], *server_streambuf;
    size_t i;
    int ret;

    { /* connect */
        quicly_datagram_t *raw;
        size_t num_packets;
        quicly_decoded_packet_t decoded;

        ret = FUNC8(&client, &quic_ctx, "example.com", &fake_address.sa, NULL, FUNC4(), FUNC6(NULL, 0),
                             NULL, NULL);
        FUNC5(ret == 0);
        num_packets = 1;
        ret = FUNC14(client, &raw, &num_packets);
        FUNC5(ret == 0);
        FUNC5(num_packets == 1);
        FUNC5(FUNC2(&decoded, &raw, 1) == 1);
        FUNC5(num_packets == 1);
        ret = FUNC7(&server, &quic_ctx, NULL, &fake_address.sa, &decoded, NULL, FUNC4(), NULL);
        FUNC5(ret == 0);
        FUNC3(&raw, 1);
        FUNC16(server, client);
    }

    /* open as many streams as we can */
    for (i = 0; i < limit + 1; ++i) {
        ret = FUNC11(client, client_streams + i, 0);
        FUNC1(ret == 0);
        client_streambufs[i] = client_streams[i]->data;
        if (client_streams[i]->streams_blocked)
            break;
        ret = FUNC15(client_streams[i], "hello", 5);
        FUNC1(ret == 0);
    }
    FUNC5(i == limit);

    FUNC16(client, server);
    FUNC16(server, client);

    /* the last stream is still ID-blocked after 1RT */
    FUNC5(client_streams[i]->streams_blocked);

    /* reset one stream in both directions and close on the client-side */
    server_stream = FUNC10(server, client_streams[i - 1]->stream_id);
    FUNC5(server_stream != NULL);
    server_streambuf = server_stream->data;
    FUNC13(client_streams[i - 1], FUNC0(123));
    FUNC12(client_streams[i - 1], FUNC0(456));
    FUNC16(client, server);
    FUNC16(server, client);
    FUNC5(server_streambuf->error_received.reset_stream == FUNC0(123));
    FUNC5(server_streambuf->error_received.stop_sending == FUNC0(456));
    FUNC5(!server_streambuf->is_detached); /* haven't gotten ACK for reset */
    FUNC5(client_streambufs[i - 1]->error_received.reset_stream == FUNC0(456));
    FUNC5(client_streambufs[i - 1]->is_detached);

    /* the last stream is still ID-blocked */
    FUNC5(client_streams[i]->streams_blocked);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC16(client, server);
    FUNC16(server, client);

    /* we would have free room now that RST of the server-sent side is ACKed */
    FUNC5(server_streambuf->is_detached);
    FUNC5(!client_streams[i]->streams_blocked);
    ++i;

    /* but we cannot open one more */
    ret = FUNC11(client, client_streams + i, 0);
    FUNC5(ret == 0);
    FUNC5(client_streams[i]->streams_blocked);

    FUNC9(client);
    FUNC9(server);
}