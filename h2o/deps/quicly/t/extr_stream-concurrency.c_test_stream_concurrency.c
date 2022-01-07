
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ reset_stream; scalar_t__ stop_sending; } ;
struct TYPE_18__ {int is_detached; TYPE_2__ error_received; } ;
typedef TYPE_3__ test_streambuf_t ;
struct TYPE_19__ {int streams_blocked; TYPE_3__* data; int stream_id; } ;
typedef TYPE_4__ quicly_stream_t ;
typedef int quicly_decoded_packet_t ;
typedef int quicly_datagram_t ;
typedef int quicly_conn_t ;
struct TYPE_16__ {size_t max_streams_bidi; } ;
struct TYPE_15__ {int sa; } ;
struct TYPE_14__ {TYPE_1__ transport_params; } ;


 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ;
 scalar_t__ QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE (int) ;
 int assert (int) ;
 int decode_packets (int *,int **,int) ;
 TYPE_13__ fake_address ;
 int free_packets (int **,int) ;
 int new_master_id () ;
 int ok (int) ;
 int ptls_iovec_init (int *,int ) ;
 TYPE_10__ quic_ctx ;
 int quic_now ;
 int quicly_accept (int **,TYPE_10__*,int *,int *,int *,int *,int ,int *) ;
 int quicly_connect (int **,TYPE_10__*,char*,int *,int *,int ,int ,int *,int *) ;
 int quicly_free (int *) ;
 TYPE_4__* quicly_get_stream (int *,int ) ;
 int quicly_open_stream (int *,TYPE_4__**,int ) ;
 int quicly_request_stop (TYPE_4__*,scalar_t__) ;
 int quicly_reset_stream (TYPE_4__*,scalar_t__) ;
 int quicly_send (int *,int **,size_t*) ;
 int quicly_streambuf_egress_write (TYPE_4__*,char*,int) ;
 int transmit (int *,int *) ;

void test_stream_concurrency(void)
{
    quicly_conn_t *client, *server;
    size_t limit = quic_ctx.transport_params.max_streams_bidi;
    quicly_stream_t *client_streams[limit + 2], *server_stream;
    test_streambuf_t *client_streambufs[limit + 1], *server_streambuf;
    size_t i;
    int ret;

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
        ok(decode_packets(&decoded, &raw, 1) == 1);
        ok(num_packets == 1);
        ret = quicly_accept(&server, &quic_ctx, ((void*)0), &fake_address.sa, &decoded, ((void*)0), new_master_id(), ((void*)0));
        ok(ret == 0);
        free_packets(&raw, 1);
        transmit(server, client);
    }


    for (i = 0; i < limit + 1; ++i) {
        ret = quicly_open_stream(client, client_streams + i, 0);
        assert(ret == 0);
        client_streambufs[i] = client_streams[i]->data;
        if (client_streams[i]->streams_blocked)
            break;
        ret = quicly_streambuf_egress_write(client_streams[i], "hello", 5);
        assert(ret == 0);
    }
    ok(i == limit);

    transmit(client, server);
    transmit(server, client);


    ok(client_streams[i]->streams_blocked);


    server_stream = quicly_get_stream(server, client_streams[i - 1]->stream_id);
    ok(server_stream != ((void*)0));
    server_streambuf = server_stream->data;
    quicly_reset_stream(client_streams[i - 1], QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(123));
    quicly_request_stop(client_streams[i - 1], QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(456));
    transmit(client, server);
    transmit(server, client);
    ok(server_streambuf->error_received.reset_stream == QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(123));
    ok(server_streambuf->error_received.stop_sending == QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(456));
    ok(!server_streambuf->is_detached);
    ok(client_streambufs[i - 1]->error_received.reset_stream == QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(456));
    ok(client_streambufs[i - 1]->is_detached);


    ok(client_streams[i]->streams_blocked);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(client, server);
    transmit(server, client);


    ok(server_streambuf->is_detached);
    ok(!client_streams[i]->streams_blocked);
    ++i;


    ret = quicly_open_stream(client, client_streams + i, 0);
    ok(ret == 0);
    ok(client_streams[i]->streams_blocked);

    quicly_free(client);
    quicly_free(server);
}
