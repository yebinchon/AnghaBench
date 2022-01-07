
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ingress; } ;
struct TYPE_11__ {int is_detached; TYPE_1__ super; } ;
typedef TYPE_2__ test_streambuf_t ;
struct TYPE_12__ {int recvstate; TYPE_2__* data; int stream_id; } ;
typedef TYPE_3__ quicly_stream_t ;


 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ;
 int QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE (int) ;
 int assert (int ) ;
 int buffer_is (int *,char*) ;
 int client ;
 int ok (int) ;
 int quic_now ;
 TYPE_3__* quicly_get_stream (int ,int ) ;
 int quicly_open_stream (int ,TYPE_3__**,int ) ;
 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_reset_stream (TYPE_3__*,int ) ;
 int quicly_streambuf_egress_shutdown (TYPE_3__*) ;
 int quicly_streambuf_egress_write (TYPE_3__*,char*,int) ;
 int quicly_streambuf_ingress_shift (TYPE_3__*,int) ;
 int server ;
 int transmit (int ,int ) ;

__attribute__((used)) static void test_reset_after_close(void)
{
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    int ret;

    ret = quicly_open_stream(client, &client_stream, 0);
    ok(ret == 0);
    client_streambuf = client_stream->data;
    quicly_streambuf_egress_write(client_stream, "hello", 5);

    transmit(client, server);
    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(server, client);

    server_stream = quicly_get_stream(server, client_stream->stream_id);
    assert(server_stream != ((void*)0));
    server_streambuf = server_stream->data;
    ok(buffer_is(&server_streambuf->super.ingress, "hello"));
    quicly_streambuf_ingress_shift(server_stream, 5);

    quicly_streambuf_egress_write(client_stream, "world", 5);
    quicly_streambuf_egress_shutdown(client_stream);
    quicly_reset_stream(client_stream, QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(
                                           12345));


    transmit(client, server);

    ok(buffer_is(&server_streambuf->super.ingress, ""));
    ok(quicly_recvstate_transfer_complete(&server_stream->recvstate));

    quicly_streambuf_egress_shutdown(server_stream);

    transmit(server, client);

    ok(client_streambuf->is_detached);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(client, server);

    ok(server_streambuf->is_detached);
}
