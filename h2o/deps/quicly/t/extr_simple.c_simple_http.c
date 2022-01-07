
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ingress; } ;
struct TYPE_9__ {int reset_stream; } ;
struct TYPE_11__ {int is_detached; TYPE_2__ super; TYPE_1__ error_received; } ;
typedef TYPE_3__ test_streambuf_t ;
struct TYPE_12__ {scalar_t__ stream_id; int recvstate; TYPE_3__* data; } ;
typedef TYPE_4__ quicly_stream_t ;


 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ;
 int buffer_is (int *,char const*) ;
 int client ;
 int ok (int) ;
 int quic_now ;
 TYPE_4__* quicly_get_stream (int ,scalar_t__) ;
 int quicly_num_streams (int ) ;
 int quicly_open_stream (int ,TYPE_4__**,int ) ;
 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_streambuf_egress_shutdown (TYPE_4__*) ;
 int quicly_streambuf_egress_write (TYPE_4__*,char const*,int ) ;
 int server ;
 int strlen (char const*) ;
 int transmit (int ,int ) ;

__attribute__((used)) static void simple_http(void)
{
    const char *req = "GET / HTTP/1.0\r\n\r\n", *resp = "HTTP/1.0 200 OK\r\n\r\nhello world";
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    int ret;

    ret = quicly_open_stream(client, &client_stream, 0);
    ok(ret == 0);
    ok(client_stream->stream_id == 0);
    client_streambuf = client_stream->data;

    quicly_streambuf_egress_write(client_stream, req, strlen(req));
    quicly_streambuf_egress_shutdown(client_stream);
    ok(quicly_num_streams(client) == 1);

    transmit(client, server);

    server_stream = quicly_get_stream(server, client_stream->stream_id);
    ok(server_stream != ((void*)0));
    server_streambuf = server_stream->data;
    ok(quicly_recvstate_transfer_complete(&server_stream->recvstate));
    ok(server_streambuf->error_received.reset_stream == -1);
    ok(buffer_is(&server_streambuf->super.ingress, req));
    quicly_streambuf_egress_write(server_stream, resp, strlen(resp));
    quicly_streambuf_egress_shutdown(server_stream);
    ok(quicly_num_streams(server) == 1);

    transmit(server, client);

    ok(client_streambuf->is_detached);
    ok(client_streambuf->error_received.reset_stream == -1);
    ok(buffer_is(&client_streambuf->super.ingress, resp));
    ok(quicly_num_streams(client) == 0);
    ok(!server_streambuf->is_detached);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(client, server);

    ok(server_streambuf->is_detached);
    ok(quicly_num_streams(server) == 0);
}
