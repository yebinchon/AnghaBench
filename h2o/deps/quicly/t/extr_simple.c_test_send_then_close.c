
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int ingress; } ;
struct TYPE_16__ {int is_detached; TYPE_4__ super; } ;
typedef TYPE_5__ test_streambuf_t ;
struct TYPE_13__ {int num_ranges; TYPE_1__* ranges; } ;
struct TYPE_14__ {TYPE_2__ acked; } ;
struct TYPE_17__ {int recvstate; TYPE_3__ sendstate; TYPE_5__* data; int stream_id; } ;
typedef TYPE_6__ quicly_stream_t ;
struct TYPE_12__ {scalar_t__ start; int end; } ;


 scalar_t__ QUICLY_DELAYED_ACK_TIMEOUT ;
 int assert (int ) ;
 int buffer_is (int *,char*) ;
 int client ;
 int ok (int) ;
 int quic_now ;
 TYPE_6__* quicly_get_stream (int ,int ) ;
 int quicly_open_stream (int ,TYPE_6__**,int ) ;
 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_streambuf_egress_shutdown (TYPE_6__*) ;
 int quicly_streambuf_egress_write (TYPE_6__*,char*,int) ;
 int quicly_streambuf_ingress_shift (TYPE_6__*,int) ;
 int server ;
 int transmit (int ,int ) ;

__attribute__((used)) static void test_send_then_close(void)
{
    quicly_stream_t *client_stream, *server_stream;
    test_streambuf_t *client_streambuf, *server_streambuf;
    int ret;

    ret = quicly_open_stream(client, &client_stream, 0);
    ok(ret == 0);
    client_streambuf = client_stream->data;
    quicly_streambuf_egress_write(client_stream, "hello", 5);

    transmit(client, server);

    server_stream = quicly_get_stream(server, client_stream->stream_id);
    assert(server_stream != ((void*)0));
    server_streambuf = server_stream->data;
    ok(buffer_is(&server_streambuf->super.ingress, "hello"));
    quicly_streambuf_ingress_shift(server_stream, 5);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(server, client);

    ok(client_stream->sendstate.acked.num_ranges == 1);
    ok(client_stream->sendstate.acked.ranges[0].start == 0);
    ok(client_stream->sendstate.acked.ranges[0].end == 5);
    quicly_streambuf_egress_shutdown(client_stream);

    transmit(client, server);

    ok(quicly_recvstate_transfer_complete(&server_stream->recvstate));
    ok(buffer_is(&server_streambuf->super.ingress, ""));
    quicly_streambuf_egress_shutdown(server_stream);

    transmit(server, client);

    ok(client_streambuf->is_detached);
    ok(!server_streambuf->is_detached);

    quic_now += QUICLY_DELAYED_ACK_TIMEOUT;
    transmit(client, server);

    ok(server_streambuf->is_detached);
}
