
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_pipe_t ;
typedef int uv_handle_t ;


 int alloc_buffer ;
 int echo_read ;
 int loop ;
 scalar_t__ malloc (int) ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_close (int *,int *) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_read_start (int *,int ,int ) ;

void on_new_connection(uv_stream_t *server, int status) {
    if (status == -1) {

        return;
    }

    uv_pipe_t *client = (uv_pipe_t*) malloc(sizeof(uv_pipe_t));
    uv_pipe_init(loop, client, 0);
    if (uv_accept(server, (uv_stream_t*) client) == 0) {
        uv_read_start((uv_stream_t*) client, alloc_buffer, echo_read);
    }
    else {
        uv_close((uv_handle_t*) client, ((void*)0));
    }
}
