
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int invoke_cgi_script (int *) ;
 int loop ;
 scalar_t__ malloc (int) ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_close (int *,int *) ;
 int uv_tcp_init (int ,int *) ;

void on_new_connection(uv_stream_t *server, int status) {
    if (status == -1) {

        return;
    }

    uv_tcp_t *client = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
    uv_tcp_init(loop, client);
    if (uv_accept(server, (uv_stream_t*) client) == 0) {
        invoke_cgi_script(client);
    }
    else {
        uv_close((uv_handle_t*) client, ((void*)0));
    }
}
