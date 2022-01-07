
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_stream_t ;
typedef int quicly_stream_id_t ;
typedef int quicly_conn_t ;


 int destroy_stream (int *,int ) ;
 int * quicly_get_stream (int *,int ) ;

__attribute__((used)) static void destroy_handshake_flow(quicly_conn_t *conn, size_t epoch)
{
    quicly_stream_t *stream = quicly_get_stream(conn, -(quicly_stream_id_t)(1 + epoch));
    if (stream != ((void*)0))
        destroy_stream(stream, 0);
}
