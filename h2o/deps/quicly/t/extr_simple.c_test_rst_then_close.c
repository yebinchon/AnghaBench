
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ reset_stream; scalar_t__ stop_sending; } ;
struct TYPE_9__ {int is_detached; TYPE_1__ error_received; } ;
typedef TYPE_2__ test_streambuf_t ;
struct TYPE_10__ {int recvstate; int sendstate; TYPE_2__* data; int stream_id; } ;
typedef TYPE_3__ quicly_stream_t ;


 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ;
 scalar_t__ QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE (int) ;
 int client ;
 int ok (int) ;
 int quic_now ;
 TYPE_3__* quicly_get_stream (int ,int ) ;
 int quicly_num_streams (int ) ;
 int quicly_open_stream (int ,TYPE_3__**,int ) ;
 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_request_stop (TYPE_3__*,scalar_t__) ;
 int quicly_reset_stream (TYPE_3__*,scalar_t__) ;
 int quicly_sendstate_transfer_complete (int *) ;
 int server ;
 int transmit (int ,int ) ;

__attribute__((used)) static void test_rst_then_close(void)
{
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    uint64_t stream_id;
    int ret;


    ret = quicly_open_stream(client, &client_stream, 0);
    ok(ret == 0);
    stream_id = client_stream->stream_id;
    client_streambuf = client_stream->data;
    quicly_reset_stream(client_stream, QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(12345));
    quicly_request_stop(client_stream, QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(54321));

    transmit(client, server);


    ok(quicly_num_streams(server) == 1);
    server_stream = quicly_get_stream(server, stream_id);
    ok(server_stream != ((void*)0));
    server_streambuf = server_stream->data;
    ok(quicly_sendstate_transfer_complete(&server_stream->sendstate));
    ok(quicly_recvstate_transfer_complete(&server_stream->recvstate));
    ok(server_streambuf->error_received.reset_stream == QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(12345));
    ok(server_streambuf->error_received.stop_sending == QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(54321));

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(server, client);


    ok(client_streambuf->is_detached);
    ok(client_streambuf->error_received.stop_sending == -1);
    ok(client_streambuf->error_received.reset_stream == QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(54321));
    ok(quicly_num_streams(client) == 0);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(client, server);

    ok(server_streambuf->is_detached);
    ok(quicly_num_streams(server) == 0);
}
