
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int alloc_buffer ;
 int echo_read ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 scalar_t__ malloc (int) ;
 int on_close ;
 int stderr ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_close (int *,int ) ;
 int uv_read_start (int *,int ,int ) ;
 char* uv_strerror (int) ;
 int uv_tcp_init (int ,int *) ;

void on_new_connection(uv_stream_t *server, int status) {
    if (status < 0) {
        fprintf(stderr, "New connection error %s\n", uv_strerror(status));

        return;
    }

    uv_tcp_t *client = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
    uv_tcp_init(loop, client);
    if (uv_accept(server, (uv_stream_t*) client) == 0) {
        uv_read_start((uv_stream_t*) client, alloc_buffer, echo_read);
    }
    else {
        uv_close((uv_handle_t*) client, on_close);
    }
}
