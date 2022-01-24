#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_18__ {scalar_t__ size; } ;
struct TYPE_19__ {TYPE_1__ vecs; } ;
struct TYPE_20__ {TYPE_2__ egress; int /*<<< orphan*/  ingress; } ;
struct TYPE_22__ {TYPE_3__ super; } ;
typedef  TYPE_5__ test_streambuf_t ;
struct TYPE_23__ {TYPE_5__* data; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_6__ quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_decoded_packet_t ;
typedef  int /*<<< orphan*/  quicly_datagram_t ;
struct TYPE_24__ {scalar_t__ (* cb ) (TYPE_7__*) ;} ;
struct TYPE_21__ {int max_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  sa; } ;
struct TYPE_16__ {TYPE_4__ transport_params; TYPE_7__* now; } ;

/* Variables and functions */
 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ; 
 scalar_t__ QUICLY_STATE_CONNECTED ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 TYPE_15__ fake_address ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_12__ quic_ctx ; 
 int /*<<< orphan*/  quic_now ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_12__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_12__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_6__**,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(void)
{
    uint64_t max_data_orig = quic_ctx.transport_params.max_data;
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    size_t i;
    int ret;
    char testdata[1025];

    quic_ctx.transport_params.max_data = 1024;
    for (i = 0; i < 1024 / 16; ++i)
        FUNC16(testdata + i * 16, "0123456789abcdef");
    testdata[1024] = '\0';

    { /* create connection and write 16KB */
        quicly_datagram_t *raw;
        size_t num_packets;
        quicly_decoded_packet_t decoded;

        ret = FUNC7(&client, &quic_ctx, "example.com", &fake_address.sa, NULL, FUNC3(), FUNC5(NULL, 0),
                             NULL, NULL);
        FUNC4(ret == 0);
        num_packets = 1;
        ret = FUNC13(client, &raw, &num_packets);
        FUNC4(ret == 0);
        FUNC4(num_packets == 1);
        FUNC4(FUNC9(client) > quic_ctx.now->cb(quic_ctx.now));
        FUNC1(&decoded, &raw, 1);
        FUNC4(num_packets == 1);
        ret = FUNC6(&server, &quic_ctx, NULL, &fake_address.sa, &decoded, NULL, FUNC3(), NULL);
        FUNC4(ret == 0);
        FUNC2(&raw, 1);
    }

    FUNC19(server, client);
    FUNC4(FUNC10(client) == QUICLY_STATE_CONNECTED);
    FUNC4(FUNC8(client));

    ret = FUNC12(client, &client_stream, 0);
    FUNC4(ret == 0);
    client_streambuf = client_stream->data;
    for (i = 0; i < 16; ++i)
        FUNC14(client_stream, testdata, FUNC17(testdata));

    FUNC19(client, server);

    server_stream = FUNC11(server, client_stream->stream_id);
    FUNC4(server_stream != NULL);
    server_streambuf = server_stream->data;
    FUNC4(FUNC0(&server_streambuf->super.ingress, testdata));
    FUNC15(server_stream, FUNC17(testdata));

    for (i = 1; i < 16; ++i) {
        FUNC19(server, client);
        FUNC19(client, server);
        FUNC4(FUNC0(&server_streambuf->super.ingress, testdata));
        FUNC15(server_stream, FUNC17(testdata));
    }

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    FUNC19(server, client);

    FUNC4(client_streambuf->super.egress.vecs.size == 0);

    quic_ctx.transport_params.max_data = max_data_orig;
}