
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int conn; int recvstate; int sendstate; } ;
typedef TYPE_1__ quicly_stream_t ;
struct TYPE_11__ {int len; int base; } ;
typedef TYPE_2__ ptls_iovec_t ;


 int fflush (int ) ;
 int fwrite (int ,int,int ,int ) ;
 scalar_t__ is_server () ;
 int quicly_close (int ,int ,char*) ;
 scalar_t__ quicly_recvstate_transfer_complete (int *) ;
 scalar_t__ quicly_sendstate_is_open (int *) ;
 int quicly_streambuf_egress_shutdown (TYPE_1__*) ;
 int quicly_streambuf_egress_write (TYPE_1__*,int ,int ) ;
 TYPE_2__ quicly_streambuf_ingress_get (TYPE_1__*) ;
 int quicly_streambuf_ingress_receive (TYPE_1__*,size_t,void const*,size_t) ;
 int quicly_streambuf_ingress_shift (TYPE_1__*,int ) ;
 int stdout ;

__attribute__((used)) static int on_receive(quicly_stream_t *stream, size_t off, const void *src, size_t len)
{
    int ret;


    if ((ret = quicly_streambuf_ingress_receive(stream, off, src, len)) != 0)
        return ret;


    ptls_iovec_t input = quicly_streambuf_ingress_get(stream);

    if (is_server()) {

        if (quicly_sendstate_is_open(&stream->sendstate)) {
            quicly_streambuf_egress_write(stream, input.base, input.len);

            if (quicly_recvstate_transfer_complete(&stream->recvstate))
                quicly_streambuf_egress_shutdown(stream);
        }
    } else {

        fwrite(input.base, 1, input.len, stdout);
        fflush(stdout);

        if (quicly_recvstate_transfer_complete(&stream->recvstate))
            quicly_close(stream->conn, 0, "");
    }


    quicly_streambuf_ingress_shift(stream, input.len);

    return 0;
}
