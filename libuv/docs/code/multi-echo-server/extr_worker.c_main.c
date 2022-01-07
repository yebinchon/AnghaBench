
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;


 int UV_RUN_DEFAULT ;
 int alloc_buffer ;
 int loop ;
 int on_new_connection ;
 int queue ;
 int uv_default_loop () ;
 int uv_pipe_init (int ,int *,int) ;
 int uv_pipe_open (int *,int ) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_run (int ,int ) ;

int main() {
    loop = uv_default_loop();

    uv_pipe_init(loop, &queue, 1 );
    uv_pipe_open(&queue, 0);
    uv_read_start((uv_stream_t*)&queue, alloc_buffer, on_new_connection);
    return uv_run(loop, UV_RUN_DEFAULT);
}
