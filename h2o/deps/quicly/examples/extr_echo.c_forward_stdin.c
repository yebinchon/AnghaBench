
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sendstate; } ;
typedef TYPE_1__ quicly_stream_t ;
typedef int quicly_conn_t ;
typedef int buf ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 TYPE_1__* quicly_get_stream (int *,int ) ;
 int quicly_sendstate_is_open (int *) ;
 int quicly_streambuf_egress_shutdown (TYPE_1__*) ;
 int quicly_streambuf_egress_write (TYPE_1__*,char*,size_t) ;
 size_t read (int ,char*,int) ;

__attribute__((used)) static int forward_stdin(quicly_conn_t *conn)
{
    quicly_stream_t *stream0;
    char buf[4096];
    size_t rret;

    if ((stream0 = quicly_get_stream(conn, 0)) == ((void*)0) || !quicly_sendstate_is_open(&stream0->sendstate))
        return 0;

    while ((rret = read(0, buf, sizeof(buf))) == -1 && errno == EINTR)
        ;
    if (rret == 0) {

        quicly_streambuf_egress_shutdown(stream0);
        return 0;
    } else {

        quicly_streambuf_egress_write(stream0, buf, rret);
        return 1;
    }
}
