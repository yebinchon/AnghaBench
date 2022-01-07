
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int quicly_streambuf_t ;
struct TYPE_5__ {int * callbacks; } ;
typedef TYPE_1__ quicly_stream_t ;
typedef int quicly_stream_id_t ;
typedef int quicly_conn_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int crypto_stream_callbacks ;
 int destroy_stream (TYPE_1__*,int) ;
 TYPE_1__* open_stream (int *,int ,int,int) ;
 int quicly_streambuf_create (TYPE_1__*,int) ;

__attribute__((used)) static int create_handshake_flow(quicly_conn_t *conn, size_t epoch)
{
    quicly_stream_t *stream;
    int ret;

    if ((stream = open_stream(conn, -(quicly_stream_id_t)(1 + epoch), 65536, 65536)) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    if ((ret = quicly_streambuf_create(stream, sizeof(quicly_streambuf_t))) != 0) {
        destroy_stream(stream, ret);
        return ret;
    }
    stream->callbacks = &crypto_stream_callbacks;

    return 0;
}
